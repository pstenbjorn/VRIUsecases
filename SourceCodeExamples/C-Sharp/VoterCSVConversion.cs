using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;

namespace VRI_API_Example
{
    public class VoterCSVConversion
    {
        /* this call is a reference example for converting flat voter data to VRI XML for EPB use
            it envisions the use of this schema for voter data 
        DMV_NUMBER,VOTERID,LAST_NAME,FIRST_NAME,MIDDLE_NAME,SUFFIX,HOUSE_NUMBER,STREET_NAME,STREETTYPE,PRE_DIRECTION,POST_DIRECTION,APT_NUM,CITY,STATE,ZIP,COUNTRY,LOCALITY_NAME,PRECINCT_NAME,PRECINCT_SPLIT_NAME,TOWNPRECINCT_NAME,CONGRESSIONAL_DISTRICT,ST_LEG_UPPER_HOUSE,ST_LEG_LOWER_HOUSE,GENDER,VOTER_STATUS,PROTECTED,NVRA_CONFIRMATION,UOCAVA_VOTER,VOTEBYMAIL_STATUS,ELECTION_DATE,ELECTION_YEAR,ELECTION_NAME,ELECTION_TYPE,DATE_OF_BIRTH,VOTE_CAST_TYPE,VOTE_DATE,BALLOT_STYLE_NAME
        */
        public static void Main(string[] args)
        {
            List<DemoRecords> LoadedRecords = new List<DemoRecords>();
            string pathtofile = @"C:\Users\paul\Documents\EIS\2017\DF\EPB_Example\EPB_ReferenceSchema.csv";
            using (StreamReader reader = new StreamReader(pathtofile))
            {
                while (!reader.EndOfStream)
                {                   
                    string line = reader.ReadLine();
                    string[] array = line.Split(',');
                    if (array[0] != "DMV_NUMBER")
                    {
                        DemoRecords dr = new DemoRecords(array[0], array[1], array[2],
                            array[3], array[4], array[5], array[6], array[7], array[8],
                            array[9], array[10], array[11], array[12], array[13], array[14],
                            array[15], array[16], array[17], array[18], array[19], array[20],
                            array[21], array[22], array[23], array[24], array[25], array[26],
                            array[27], array[28], array[29], array[30],
                            array[31], array[32], array[33], array[34], array[35], array[36]);
                        LoadedRecords.Add(dr);
                    }
                    
                }

            }

            XmlDocument xd = EPBOutboundRecords(LoadedRecords);
        }

        public static XmlDocument EPBOutboundRecords (List<DemoRecords> vr)
        {
            XmlDocument response = new XmlDocument();
            XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
            ns.Add("addr", "http://www.fgdc.gov/schemas/address/addr");
            ns.Add("addr_type", "http://www.fgdc.gov/schemas/address/addr_type");
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(VoterRecordsResponse));
            VoterRecordResults records = new VoterRecordResults();
            records.VoterRecord = new VoterRecord[vr.Count];
            records.TransactionId = "VRI-EPB-Example_" + DateTime.Now.ToString();
            int rec = 0;
            foreach(DemoRecords d in vr)
            {
                VoterRecord voter = new VoterRecord();
                voter.Voter = new Voter();
                voter.Voter.DateOfBirthSpecified = true;
                voter.Voter.DateOfBirth = Convert.ToDateTime(d.DATE_OF_BIRTH);
                Name votername = new Name()
                {
                    FirstName = d.FIRST_NAME,
                    LastName = d.LAST_NAME,
                    FullName = BuildFullName(d.FIRST_NAME, d.MIDDLE_NAME, d.LAST_NAME, d.SUFFIX)
                };
                string[] midname = new string[] { d.MIDDLE_NAME };
                votername.MiddleName = midname;
                voter.Voter.Name = votername;
                voter.Voter.ResidenceAddress = BuildAddress(d.HOUSE_NUMBER, d.PRE_DIRECTION, d.STREET_NAME, d.STREETTYPE,
                    d.POST_DIRECTION, d.APT_NUM, d.CITY, d.STATE, d.ZIP, d.COUNTRY);
                //This example does not specify a party, but this is where it would be added

                Party p = new Party();
                p.Name = "Not-specified";
                voter.Voter.Party = p;
                //Known Voter ID Type
                VoterId vid = new VoterId();
                VoterId dmv = new VoterId();
                vid.Type = VoterIdType.statevoterregistrationid;
                dmv.Type = VoterIdType.driverslicense;
                vid.StringValue = d.VOTERID;
                dmv.StringValue = d.DMV_NUMBER;

                voter.Voter.VoterId = new VoterId[2];
                voter.Voter.VoterId[0] = vid;
                voter.Voter.VoterId[1] = dmv;

                //adding districts - this exammple includes congressional, state senate and state house
                voter.District = new ReportingUnit[3];
                voter.District[0] = BuildReportingUnit("congressional", d.CONGRESSIONAL_DISTRICT);
                voter.District[1] = BuildReportingUnit("state-senate", d.ST_LEG_UPPER_HOUSE);
                voter.District[2] = BuildReportingUnit("state-house", d.ST_LEG_LOWER_HOUSE);

                //Adding locality, precinct and splits
                voter.Locality = new ReportingUnit[3];
                voter.Locality[0] = BuildReportingUnit("county", d.LOCALITY_NAME);
                voter.Locality[1] = BuildReportingUnit("precinct", d.PRECINCT_NAME);
                voter.Locality[2] = BuildReportingUnit("split-precinct", d.PRECINCT_SPLIT_NAME);

                //other information about voter
                voter.Voter.Gender = d.GENDER;

                //Protected voter
                VoterClassification prot = new VoterClassification();
                if(d.PROTECTED != "")
                {
                    prot.Type = VoterClassificationType.protectedvoter;
                }
                else
                {
                    prot.OtherType = "not protected";
                    prot.Type = VoterClassificationType.other;
                }
                //UOCAVA Voter
                VoterClassification uocava = new VoterClassification();
                if(d.UOCAVA_VOTER != "")
                {
                    uocava.Type = VoterClassificationType.activeduty;
                }
                else
                {
                    uocava.OtherType = "not uocava";
                    uocava.Type = VoterClassificationType.other;
                }

                //absentee ballot status
                VoterClassification ab = new VoterClassification();
                if(d.VOTEBYMAIL_STATUS != "")
                {
                    ab.OtherType = "absentee ballots sent";
                    ab.Type = VoterClassificationType.other;
                }
                else
                {
                    ab.OtherType = "no absentee ballot sent";
                    ab.Type = VoterClassificationType.other;
                }
                //NVRA Status
                VoterClassification nvra = new VoterClassification();
                nvra.OtherType = d.VOTER_STATUS;
                nvra.Type = VoterClassificationType.other;

                //NVRA Confirmation mailing sent
                VoterClassification conf = new VoterClassification();
                if(d.NVRA_CONFIRMATION != "")
                {
                    conf.OtherType = "Confirmation sent";
                    conf.Type = VoterClassificationType.other;
                }
                else
                {
                    conf.OtherType = "No confirmation";
                    conf.Type = VoterClassificationType.other;
                }

                voter.Voter.VoterClassification = new VoterClassification[5];
                voter.Voter.VoterClassification[0] = prot;
                voter.Voter.VoterClassification[1] = uocava;
                voter.Voter.VoterClassification[2] = ab;
                voter.Voter.VoterClassification[3] = nvra;
                voter.Voter.VoterClassification[4] = conf;

                //Election specific information using the VoterParticipation Object
                VoterParticipation participation = new VoterParticipation();
                Election el = new Election();
                el.Name = d.ELECTION_NAME;
                el.StartDate = Convert.ToDateTime(d.ELECTION_DATE);
                participation.Election = el;
                //for ballot style we will need to create an external identifier
                ExternalIdentifier bsiden = new ExternalIdentifier();
                bsiden.Type = IdentifierType.locallevel;
                bsiden.Value = d.BALLOT_STYLE_NAME;
                BallotStyle bs = new BallotStyle();
                bs.ExternalIdentifier = new ExternalIdentifier[1];
                bs.ExternalIdentifier[0] = bsiden;
                participation.BallotStyle = bs;

                voter.VoterParticipation = new VoterParticipation[1];
                voter.VoterParticipation[0] = participation;

                records.VoterRecord[rec] = voter;
                rec++;
            }

            VoterRecordsResponse vrresp = records;
            vrresp.TransactionId = "epb-vri-example";

            TextWriter write = new StreamWriter("C:\\dev\\epb_example.xml");
            xmlSerializer.Serialize(write, vrresp, ns);
            return response;
        }
        
        public static string BuildFullName(string fn, string mn, string ln, string suf)
        {
            string fullname = "";
            fullname = fullname + fn;
            if (mn != "") fullname += " " + mn;
            fullname += " " + ln;
            if (suf != "") fullname += ", " + suf;

            return fullname;
        }

        public static VoterResidenceAddress BuildAddress(string housenum, string predir, string streetname, string streettype, string postdir,
                string apt, string city, string st, string zip, string country)
        {
            VoterResidenceAddress ra = new VoterResidenceAddress();
            NumberedThoroughfareAddress_type nt = new NumberedThoroughfareAddress_type();
            CompletePlaceName_type pn = new CompletePlaceName_type();
            PlaceName_type ptt = new PlaceName_type();
            ptt.PlaceNameType = PlaceNameType_type.MunicipalJurisdiction;
            ptt.Value = city;
            pn.PlaceName = new PlaceName_type[1];
            pn.PlaceName[0] = ptt;
            nt.CompletePlaceName = new CompletePlaceName_type[1];
            nt.CompletePlaceName[0] = pn;
            CompleteAddressNumber_type hn = new CompleteAddressNumber_type();
            hn.AddressNumber = housenum;
            nt.CompleteAddressNumber = hn;
            CompleteStreetName_type sn = new CompleteStreetName_type();
            string fn = predir + " " + streetname + " " + streettype + " " + postdir;
            sn.StreetName = fn.Trim();
            nt.CompleteStreetName = sn;
            SubaddressElement_type subaddress = new SubaddressElement_type();
            nt.CompleteSubaddress = new SubaddressElement_type[2];
            if (apt != "")
            {
                subaddress.SubaddressIdentifier = " APT " + apt;                
               
            }
            else
            {
                subaddress.SubaddressIdentifier = "";
            }
            nt.CompleteSubaddress[0] = subaddress;
            SubaddressElement_type subaddress1 = new SubaddressElement_type();
            subaddress1.SubaddressIdentifier = city + ", " + st + " " + zip + " " + country;
            nt.CompleteSubaddress[1] = subaddress1;
            

            ra.NumberedThoroughfareAddress_type = nt;

            return ra;

        }

        public static ReportingUnit BuildReportingUnit (string type, string value)
        {
            ReportingUnit rr = new ReportingUnit();
            rr.Name = value;
            if (type == "congressional")
            {
                rr.Type = ReportingUnitType.congressional;
            }
            if (type == "county")
            {
                rr.Type = ReportingUnitType.county;
            }
            if (type == "precinct")
            {
                rr.Type = ReportingUnitType.precinct;
            }
            if (type == "state-house")
            {
                rr.Type = ReportingUnitType.statehouse;
            }
            if (type == "state-senate")
            {
                rr.Type = ReportingUnitType.statesenate;
            }
            if (type == "split-precinct")
            {
                rr.Type = ReportingUnitType.splitprecinct;
            }

            return rr;
        }

    }

    public class DemoRecords
    {
        public string DMV_NUMBER {get; set;}
        public string VOTERID { get; set; }

        public string LAST_NAME { get; set; }

        public string FIRST_NAME { get; set; }

        public string MIDDLE_NAME { get; set; }

        public string SUFFIX { get; set; }

        public string HOUSE_NUMBER { get; set; }

        public string STREET_NAME { get; set; }

        public string STREETTYPE { get; set; }

        public string PRE_DIRECTION { get; set; }

        public string POST_DIRECTION { get; set; }

        public string APT_NUM { get; set; }

        public string CITY { get; set; }

        public string STATE { get; set; }

        public string ZIP { get; set; }

        public string COUNTRY { get; set; }

        public string LOCALITY_NAME { get; set; }

        public string PRECINCT_NAME { get; set; }

        public string PRECINCT_SPLIT_NAME { get; set; }

        public string TOWNPRECINCT_NAME { get; set; }

        public string CONGRESSIONAL_DISTRICT { get; set; }

        public string ST_LEG_UPPER_HOUSE { get; set; }

        public string ST_LEG_LOWER_HOUSE { get; set; }

        public string GENDER { get; set; }

        public string VOTER_STATUS { get; set; }

        public string PROTECTED { get; set; }

        public string NVRA_CONFIRMATION { get; set; }

        public string UOCAVA_VOTER { get; set; }

        public string VOTEBYMAIL_STATUS { get; set; }

        public string ELECTION_DATE { get; set; }

        public string ELECTION_YEAR { get; set; }

        public string ELECTION_NAME { get; set; }

        public string ELECTION_TYPE { get; set; }

        public string DATE_OF_BIRTH { get; set; }

        public string VOTE_CAST_TYPE { get; set; }

        public string VOTE_DATE { get; set; }

        public string BALLOT_STYLE_NAME { get; set; }


        public DemoRecords(string dmv, string vid, string ln, string fn, string mn, string suf,
            string hnum, string stname, string sttype, string predir, string postdir, string apt,
            string city, string st, string zip, string country, string loc, string pre, string ps,
            string tnpre, string cd, string sd, string hd, string gen, string vs, string prot, string conf,
            string uocava, string mail, string eldt, string elyr, string elnm, string eltype,
            string dob, string votcst, string votdt, string bs)
        {
            DMV_NUMBER = dmv; VOTERID = vid;
            LAST_NAME = ln; FIRST_NAME = fn; MIDDLE_NAME = mn; SUFFIX = suf;
            HOUSE_NUMBER = hnum; STREET_NAME = stname; STREETTYPE = sttype; PRE_DIRECTION = predir; POST_DIRECTION = postdir;
            APT_NUM = apt; CITY = city; STATE = st; ZIP = zip; COUNTRY = country;
            LOCALITY_NAME = loc; PRECINCT_NAME = pre; TOWNPRECINCT_NAME = tnpre;
            CONGRESSIONAL_DISTRICT = cd; ST_LEG_UPPER_HOUSE = sd; ST_LEG_LOWER_HOUSE = hd; 
            GENDER = gen; VOTER_STATUS = vs; PROTECTED = prot;
            NVRA_CONFIRMATION = conf; UOCAVA_VOTER = uocava; VOTEBYMAIL_STATUS = mail; ELECTION_DATE = eldt;
            ELECTION_YEAR = elyr; ELECTION_NAME = elnm; ELECTION_TYPE = eltype; DATE_OF_BIRTH = dob; VOTE_CAST_TYPE = votcst;
            VOTE_DATE = votdt; BALLOT_STYLE_NAME = bs;
        }

    }
}