using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using vriv6;
using System.Xml;
using System.Xml.Serialization;

//simple calls to underlying classes

namespace VRI_API_Example.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            string json = @"{
              ""VoterRequest"": {
                ""Subject"": {
                  ""FirstName"": ""John"",
                  ""LastName"": ""Smith"",
                  ""FullName"": ""John S. Smith"",
                  ""MiddleName"": ""S"",
                  ""DateOfBirth"": ""1999-01-01T05:00:00.000Z"",
                  ""VoterId"": [
                    {
                      ""DateOfIssuance"": ""2015-01-01T05:00:00.000Z"",
                      ""StringValue"": ""Z88837777"",
                      ""type"": ""driverslicense""
                    },
                    {
                      ""StringValue"": ""1234"",
                      ""type"": ""ssn4""
                    }
                  ]
                },
                ""Type"": ""lookup"",
                ""Issuer"": ""Third-Party Issuer"",
                ""RequestMethod"": ""other"",
                ""GeneratedDate"": ""2018-06-11T22:38:33.644Z""
              }
            }";
            XmlDocument lookup = VRICalls.VRIRequestClasses.lookup(json);
            //getXML();
            string[] args = new string[] { "EPB SAMPLE" };
            VoterCSVConversion.Main(args);
            ViewBag.Title = "Home Page";

            return View();
        }

        public static void getXML()
        {
            
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(VoterRecordsRequest));


            VoterRecordsRequest recordsRequest = new VoterRecordsRequest();
            Voter voter = new Voter();
            Name name = new Name()
            {
                FirstName = "John",
                LastName = "Smith",
                FullName = "John S. Smith"
            };
            name.MiddleName = new string[1];
            name.MiddleName[0]= "S";            
            voter.Name = name;
            voter.DateOfBirthSpecified = true;
            voter.DateOfBirth = Convert.ToDateTime("01/01/1999");

            VoterId voterId = new VoterId();
            voterId.DateOfIssuanceSpecified = true;
            voterId.DateOfIssuance = Convert.ToDateTime("01/01/2015");
            voterId.StringValue = "Z666776677";
            VoterIdType type = VoterIdType.driverslicense;
            voterId.Type = type;         
            VoterId voterid2 = new VoterId();
            voterid2.StringValue = "1234";
            VoterIdType type2 = VoterIdType.ssn4;
            voterid2.Type = type2;
            voter.VoterId = new VoterId[2];

            voter.VoterId[0] = voterId;
            voter.VoterId[1] = voterid2;


            //voter.ResidenceAddress.NumberedThoroughfareAddress_type.CompleteAddressNumber = "4868";
            //voter.ResidenceAddress.NumberedThoroughfareAddress_type.CompleteStreetName = "Bonnie Brae Rd";
            //voter.ResidenceAddress.NumberedThoroughfareAddress_type.CompleteSubaddress = "Richmond, VA 23234";


            recordsRequest.Type = new VoterRequestType[1];
            recordsRequest.Type[0] = VoterRequestType.lookup;

            recordsRequest.Issuer = "Third-Party Issuer";
            recordsRequest.RequestMethod = RequestMethod.other ;
            
            recordsRequest.Subject = voter;
            recordsRequest.GeneratedDate = DateTime.Now;

            TextWriter write = new StreamWriter("C:\\dev\\vriout.xml");
            xmlSerializer.Serialize(write, recordsRequest);
            


        }
    }
}
