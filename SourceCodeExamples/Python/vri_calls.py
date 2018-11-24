#sample VRI calls
import datetime, json
import VriCoreObjects as core
import VriSubObjects as sub
import sampledata

def lookup(jsonrec):
    #lookup method creates a VRI VoterRecordsRequest object that may be used by an application
    #to locate an existing voter record
    #create voter name, voter id and voter objects to send with records request
    vr = jsonrec['VoterRequest']
    subj = jsonrec['VoterRequest']['Subject']
    n = core.Name()
    v = core.Voter()
    ids = []
    for key in subj:
        if key == 'FirstName':
            n.FirstName = subj[key]
        if key == 'LastName':
            n.LastName = subj[key]
        if key == 'FullName':
            n.FullName = subj[key]
        if key == 'MiddleName':
            n.MiddleName = subj[key]
        v.Name = n
        if key == 'DateOfBirth':
            v.DateOfBirth = utc_to_local(subj[key])
        if key == 'VoterId':
            for i in subj[key]:
                iid = core.VoterId()
                if 'DateOfIssuance' in i:
                    iid.DateOfIssuance = utc_to_local(i['DateOfIssuance'])
                if 'StringValue' in i:
                    iid.StringValue = i['StringValue']
                iid.Type = i['type']
                ids.append(iid)
            v.VoterId = ids
      

  # RequestMethod=None, RequestProxy=None, SelectedLanguage=None, Subject=None, TransactionId=None, Type=None, VendorApplicationId=None
    req = core.VoterRecordsRequest()  
    req.GeneratedDate = utc_to_local(vr['GeneratedDate'])
    req.Type = vr['Type']
    req.Issuer = vr['Issuer']
    req.RequestMethod = vr['RequestMethod']
    req.Subject = v
    
    return voter_response(req)
    
# A JSON response with a voter record(s)

def voter_response(req):
    # this assumes that a function has been performed that queries an underlying system to determine whether a 
    # record request matches any given voter.  The response from this system is represented by the list of tuples
    # returned from the fictitious database call below.
    for i in req.Subject.VoterId:
        if i.Type == 'ssn4':
            ii = {'ssn4':i.StringValue}

    rs = fictitious_db_call(req.Subject.DateOfBirth, **ii)
    #if no records are returned create an error VRI message
    resp = core.VoterRecordsResponse()
    if rs == None or len(rs) == 1:
        rr = core.RequestRejection()
        ee = core.Error()
        ee.Name = 'identity-lookup-failed'
        ee.OtherError = "No voter record was found"
        rr.Error = ee
        resp = rr
        resp.TransactionId = "vri-py-test" + str(datetime.datetime.now())
    else:
        rr = core.VoterRecordResults()
        #removing the header from the results list
        rs = rs[1:3:1]
        vrs = []
        for vr in rs:
            avr = core.VoterRecord()
            districts = []
            districts.append(core.ReportingUnit(Type='congressional', Name=vr[19]))
            districts.append(core.ReportingUnit(Type='state-senate', Name=vr[20]))
            districts.append(core.ReportingUnit(Type='state-house', Name=vr[21]))
            avr.District = districts
            localities = []
            localities.append(core.ReportingUnit(Type='county', Name=vr[16]))
            localities.append(core.ReportingUnit(Type='precinct', Name=vr[17]))
            avr.Locality = localities
            thisvoter = core.Voter()
            thisvoter.DateOfBirth = None
            thisvoter.Gender = vr[22]
            thisname = core.Name()
            thisname.FirstName = vr[3]
            thisname.LastName = vr[2]
            thisname.MiddleName = vr[4]
            thisvoter.Name = thisname
            voteradd = core.NumberedThoroughfareAddress_type()
            voteradd.CompleteAddressNumber = vr[6]
            voteradd.CompleteStreetName = ' '.join([vr[9], vr[7], vr[8], vr[11]])
            voteradd.CompleteSubaddress = ' '.join([vr[12] + ',', vr[13], vr[14]])
            thisvoter.ResidenceAddress = voteradd
            vclass = core.VoterClassification(Assertion='no', OtherType=vr[23], Type='other')
            thisvoter.VoterClassification = vclass
            dlid = core.VoterId(Type='drivers-license', StringValue=vr[0])
            vid = core.VoterId(Type='state-voter-registration-id', StringValue=vr[1])
            thisvoter.VoterId = [dlid,vid]
            avr.Voter = thisvoter
            vrs.append(avr)

        rr.VoterRecord = vrs
        resp = rr
        resp.TransactionId = "vri-py-test" + str(datetime.datetime.now())            

    jj = json.loads(resp.toJSON())
    j = {'VoterRecordsResponse': jj}
    return json.dumps(j, indent=4, sort_keys=True)



def fictitious_db_call(dob, **ids):
    sql = f"select * from schema.tablename where ssn4 = {ids['ssn4']} and dob ='{dob}'"
    #a process to lookup this record in the underlying db such as using pyodbc or psycopg2
    #a returned recordset of matched records - this is asuming a list of tuple with headers
    rs = []
    headers = ('DMV_NUMBER','VOTERID','LAST_NAME','FIRST_NAME','MIDDLE_NAME','SUFFIX','HOUSE_NUMBER',
    'STREET_NAME','STREETTYPE','PRE_DIRECTION','POST_DIRECTION','APT_NUM','CITY','STATE','ZIP','COUNTRY',
    'LOCALITY_NAME','PRECINCT_NAME','PRECINCT_SPLIT_NAME','CONGRESSIONAL_DISTRICT','ST_LEG_UPPER_HOUSE',
    'ST_LEG_LOWER_HOUSE','GENDER','VOTER_STATUS')
    #fake record 1
    rec = ('V9990999','9999909','Smith','John','S','','1234','Main','St','E','','','Richmond','VA',
    '23222','US','RICHMOND CITY','111','1','7','11','71','M','Active')
    #fake record 2
    rec2 = ('V1111225','8888825','Allison','Mary','Alice','','2121','17th','St','N','','125','Richmond','VA',
    '23222','US','RICHMOND CITY','111','1','7','11','71','F','Active')
    rs.append(headers)
    rs.append(rec)
    rs.append(rec2)
    return rs


##helper functions##
#standardizing date from text routine
def utc_to_local(xdate):
    try:
      t = datetime.datetime.fromisoformat(xdate)
      return t.replace(tzinfo=datetime.timezone.utc).astimezone(tz=None)
    except:
      df = '%Y-%m-%d %H:%M:%S.%fZ'
      return datetime.datetime.strptime(xdate.replace('T', ' '), df)

#the code below allows this py page to be called from a CLI
if __name__ == "__main__":
    print(lookup(sampledata.jsoncall))


