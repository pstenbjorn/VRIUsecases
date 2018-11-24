-- request objects
with xmlnamespaces (
'https://raw.githubusercontent.com/usnistgov/VoterRecordsInterchange/feature/6/NIST_V0_voter_records_interchange.xsd' as vri)

select 
	r.value('./vri:GeneratedDate[1]', 'varchar(255)') as GenDate,
	r.value('./vri:Issuer[1]', 'varchar(255)') as Issuer,
	r.value('./vri:Type[1]', 'varchar(255)') as RequestType,	
	r.value('./vri:TransactionId[1]', 'varchar(255)') as TransID,
	r.value('./vri:Subject/vri:Name/vri:FullName[1]', 'varchar(255)') as FullName

from 
VRIIntances 
cross apply VriXml.nodes('/vri:VoterRecordsRequest') as x(r) 
where id = 3



-- response objects
with xmlnamespaces (
'https://raw.githubusercontent.com/usnistgov/VoterRecordsInterchange/feature/6/NIST_V0_voter_records_interchange.xsd' as vri)

select 	
	r.value('./vri:TransactionId[1]', 'varchar(255)') as TransID, 
	r.value('./vri:VoterRecord[1]/vri:Name[1]/vri:FullName[1]', 'varchar(255)') as FullName,
	r.value('./vri:VoterRecord[1]/vri:VoterId[1]/vri:StringValue[1]', 'varchar(255)') as VoterID,
	r.value('./vri:VoterRecord[1]/vri:Locality[1]/vri:Name[1]', 'varchar(255)') as Locality,
	r.value('./vri:VoterRecord[1]/vri:Locality[2]/vri:Name[1]', 'varchar(255)') as Precinct
from 
VRIIntances 
cross apply VriXml.nodes('/vri:VoterRecordsResponse') as x(r) 
where id = 5