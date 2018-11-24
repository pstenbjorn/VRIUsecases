--select * from sys.xml_schema_collections
--select * from sys.xml_schema_namespaces

--create table VRIIntances (
--	id int identity(1,1),
--	VriXml xml(VoterRecordsInterchange)
--)

declare @SampleXML xml = N'<?xml version="1.0"?> 
<VoterRecordsRequest xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
	xmlns="https://raw.githubusercontent.com/usnistgov/VoterRecordsInterchange/feature/6/NIST_V0_voter_records_interchange.xsd">
  <GeneratedDate>2018-06-24</GeneratedDate>
  <Issuer>NVRA Agency</Issuer>
  <RequestMethod>other</RequestMethod>
  <Subject>
    <DateOfBirth>1999-01-01</DateOfBirth>
    <Name>
      <FirstName>John</FirstName>
      <FullName>John S. Smith</FullName>
      <LastName>Smith</LastName>
      <MiddleName>S</MiddleName>
    </Name>
    <ResidenceAddress>
      <NumberedThoroughfareAddress_type>
        <CompleteAddressNumber>1324</CompleteAddressNumber>
        <CompleteStreetName>E Main Street</CompleteStreetName>
        <CompleteSubaddress>Richmond, VA 23222</CompleteSubaddress>
      </NumberedThoroughfareAddress_type>
    </ResidenceAddress>
    <VoterId>
      <DateOfIssuance>2015-01-01</DateOfIssuance>
      <StringValue>Z88837777</StringValue>
      <Type>drivers-license</Type>
    </VoterId>
    <VoterId>
      <StringValue>1234</StringValue>
      <Type>ssn4</Type>
    </VoterId>
  </Subject>
  <TransactionId>eis-vir-6/24/2018 1:40:24 PM</TransactionId>
  <Type>lookup</Type>
</VoterRecordsRequest>'

insert into VRIIntances 
select @SampleXML


declare @SampleXMLResponse xml = N'<?xml version="1.0"?>
<VoterRecordsResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:xsd="http://www.w3.org/2001/XMLSchema" xsi:type="VoterRecords" 
xmlns="https://raw.githubusercontent.com/usnistgov/VoterRecordsInterchange/feature/6/NIST_V0_voter_records_interchange.xsd">
  <TransactionId>vri-resp93201822022</TransactionId>
  <VoterRecord>
    <DateOfBirth>1999-01-01</DateOfBirth>
    <MailingAddress>
      <USPSPostalDeliveryBox_type>
        <USPSBox>PO Box 12345</USPSBox>
        <CompleteSubaddress>Richmond, VA 23219</CompleteSubaddress>
      </USPSPostalDeliveryBox_type>
    </MailingAddress>
    <Name>
      <FirstName>John</FirstName>
      <FullName>John S. Smith</FullName>
      <LastName>Smith</LastName>
    </Name>
    <Party>
      <Name>Not-specified</Name>
    </Party>
    <ResidenceAddress>
      <NumberedThoroughfareAddress_type>
        <CompleteAddressNumber>1324</CompleteAddressNumber>
        <CompleteStreetName>E Main Street</CompleteStreetName>
        <CompleteSubaddress>Richmond, VA 23222</CompleteSubaddress>
      </NumberedThoroughfareAddress_type>
    </ResidenceAddress>
    <VoterId>
      <StringValue>99998888991</StringValue>
      <Type>state-voter-registration-id</Type>
    </VoterId>
    <District>
      <Name>7</Name>
      <Type>congressional</Type>
    </District>
    <Locality>
      <Name>Richmond City</Name>
      <Type>county</Type>
    </Locality>
    <Locality>
      <Name>111 - One Hundred Eleven</Name>
      <Type>precinct</Type>
    </Locality>
  </VoterRecord>
</VoterRecordsResponse>'

insert into VRIIntances
select @SampleXMLResponse

select * from VRIIntances