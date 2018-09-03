using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Serialization;
using vriv6;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;

namespace VRI_API_Example.VRICalls
{
    public class VRIRequestClasses
    {
        public static XmlDocument lookup (string json)
        {
            XmlDocument output = null;
            JObject voterlookup = JObject.Parse(json);
            string firstname = (string)voterlookup["VoterRequest"]["Subject"]["FirstName"];

            XmlSerializer xmlSerializer = new XmlSerializer(typeof(VoterRecordsRequest));

            VoterRecordsRequest recordsRequest = new VoterRecordsRequest();
            Voter voter = new Voter();
            Name name = new Name()
            {
                FirstName = (string)voterlookup["VoterRequest"]["Subject"]["FirstName"],
                LastName = (string)voterlookup["VoterRequest"]["Subject"]["LastName"],
                FullName = (string)voterlookup["VoterRequest"]["Subject"]["FullName"],
            };
            name.MiddleName = new string[1];
            name.MiddleName[0] = (string)voterlookup["VoterRequest"]["Subject"]["MiddleName"];
            voter.Name = name;
            voter.DateOfBirthSpecified = true;
            voter.DateOfBirth = Convert.ToDateTime((string)voterlookup["VoterRequest"]["Subject"]["DateOfBirth"]);

            int ids = voterlookup["VoterRequest"]["Subject"]["VoterId"].Count();
            voter.VoterId = new VoterId[ids];
            for (int i = 0; i < ids; i++)
            {
                VoterId vid = new VoterId();
                if(voterlookup["VoterRequest"]["Subject"]["VoterId"][i]["DateOfIssuance"] != null)
                {
                    vid.DateOfIssuanceSpecified = true;
                    vid.DateOfIssuance = Convert.ToDateTime((string)voterlookup["VoterRequest"]["Subject"]["VoterId"][i]["DateOfIssuance"]);
                }
                vid.StringValue = (string)voterlookup["VoterRequest"]["Subject"]["VoterId"][i]["StringValue"];
                vid.Type = getVoterType((string)voterlookup["VoterRequest"]["Subject"]["VoterId"][i]["type"]);
                voter.VoterId[i] = vid;
            }

            voter.ResidenceAddress = voterAddress(voter);
            
            recordsRequest.Type = new VoterRequestType[1];
            recordsRequest.Type[0] = VoterRequestType.lookup;

            recordsRequest.Issuer = "NVRA Agency";
            recordsRequest.RequestMethod = RequestMethod.motorvehicleoffice;

            recordsRequest.Subject = voter;
            recordsRequest.GeneratedDate = DateTime.Now;
            recordsRequest.TransactionId = "vri-request" + DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "").Replace("AM", "").Replace("PM", "");

            TextWriter write = new StreamWriter("C:\\dev\\nvraout.xml");
            xmlSerializer.Serialize(write, recordsRequest);

            XmlDocument res = responseRecord(recordsRequest);

            using(MemoryStream ms = new MemoryStream())
            {
                xmlSerializer.Serialize(ms, recordsRequest);
                ms.Position = 0;
                XmlReaderSettings settings = new XmlReaderSettings();
                settings.IgnoreWhitespace = true;

                using (var xtr = XmlReader.Create(ms, settings)) {
                    output = new XmlDocument();
                    output.Load(xtr);
                }
            }

            return res;
        }



        public static XmlDocument responseRecord(VoterRecordsRequest lookuprecord)
        {
            XmlDocument response = new XmlDocument();
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(VoterRecordsResponse));
            
            VoterRecords records = new VoterRecords();
            
            records.TransactionId = lookuprecord.TransactionId;
            VoterRecord vr = new VoterRecord();
            vr.DateOfBirthSpecified = true;
            vr.DateOfBirth = Convert.ToDateTime(lookuprecord.Subject.DateOfBirth);
            Name votername = new Name()
            {
                FirstName = lookuprecord.Subject.Name.FirstName,
                LastName = lookuprecord.Subject.Name.LastName,
                FullName = lookuprecord.Subject.Name.FullName
            };

            vr.Name = votername;
            vr.ResidenceAddress = voterAddress(lookuprecord.Subject);
            vr.MailingAddress = mailingAddress(lookuprecord.Subject);
            Party p = new Party();
            p.Name = "Not-specified";
            vr.Party = p;
            VoterId vid = new VoterId();
            vid.Type = VoterIdType.statevoterregistrationid;
            vid.StringValue = "99998888991";

            vr.VoterId = new VoterId[1];
            vr.VoterId[0] = vid;

            vr.District = new ReportingUnit[1];
            vr.District[0] = ru("congressional", "7");
            vr.Locality = new ReportingUnit[2];

            vr.Locality[0] = ru("county", "Richmond City");
            vr.Locality[1] = ru("precinct", "111 - One Hundred Eleven");

            records.VoterRecord = new VoterRecord[1];

            records.VoterRecord[0] = vr;

            VoterRecordsResponse vrresp = records;
            vrresp.TransactionId = "vri-resp" + DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "").Replace("AM", "").Replace("PM", "");

            TextWriter write = new StreamWriter("C:\\dev\\nvraresponse.xml");            

            xmlSerializer.Serialize(write, vrresp);

            //for validation only
            RequestAcknowledgement ack = new RequestAcknowledgement();

            VoterRecordsResponse vrresp2 = ack;

            vrresp2.TransactionId = "vri-validation" + DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "").Replace("AM", "").Replace("PM", "");

            TextWriter write2 = new StreamWriter("C:\\dev\\vriack.xml");
            xmlSerializer.Serialize(write2, vrresp2);

            
            return response;
        }

        public static VoterResidenceAddress voterAddress (Voter voter)
        {
            VoterResidenceAddress va = new VoterResidenceAddress();

            NumberedThoroughfareAddress_type na = new NumberedThoroughfareAddress_type();

            na.CompleteAddressNumber = "1324";
            na.CompleteStreetName = "E Main Street";
            na.CompleteSubaddress = "Richmond, VA 23222";

            va.NumberedThoroughfareAddress_type = na;


            return va;
        }

        public static VoterMailingAddress mailingAddress (Voter voter)
        {
            VoterMailingAddress ma = new VoterMailingAddress();
            USPSPostalDeliveryBox_type box = new USPSPostalDeliveryBox_type();
            box.USPSBox = "PO Box 12345";
            box.CompleteSubaddress = "Richmond, VA 23219";
            ma.USPSPostalDeliveryBox_type = box;

            return ma;
        }

        public static ReportingUnit ru (string type, string value)
        {
            ReportingUnit rr = new ReportingUnit();
            rr.Name = value;
            if(type == "congressional")
            {
                rr.Type = ReportingUnitType.congressional;
            }
            if (type == "county")
            {
                rr.Type = ReportingUnitType.county;
            }
            if(type == "precinct")
            {
                rr.Type = ReportingUnitType.precinct;
            }
            if(type == "state-house")
            {
                rr.Type = ReportingUnitType.statehouse;
            }
            if(type == "state-senate")
            {
                rr.Type = ReportingUnitType.statesenate;
            }
            if(type == "spit-precinct")
            {
                rr.Type = ReportingUnitType.splitprecinct;
            }

            return rr;
        }

        public static VoterIdType getVoterType(string val)
        {
            VoterIdType voterIdType = new VoterIdType();

            if(val == "driverslicense")
            {
                voterIdType = VoterIdType.driverslicense;
            }
            else if(val == "localvoterregistrationid")
            {
                voterIdType = VoterIdType.localvoterregistrationid;
            }
            else if(val == "ssn")
            {
                voterIdType = VoterIdType.ssn;
            }
            else if(val == "ssn4")
            {
                voterIdType = VoterIdType.ssn4;
            }
            else if(val == "other")
            {
                voterIdType = VoterIdType.other;
            } else
            {
                voterIdType = VoterIdType.unknown;
            }

            return voterIdType;
        }
    }
}