create xml schema collection VoterRecordsInterchangeV0 as 
N'<?xml version="1.0"?>
<xsd:schema elementFormDefault="qualified" version="0.0" 
	xmlns="https://raw.githubusercontent.com/usnistgov/VoterRecordsInterchange/master/NIST_V0_voter_records_interchange.xsd" 
xmlns:addr="http://www.fgdc.gov/schemas/address/addr" 
xmlns:addr_type="http://www.fgdc.gov/schemas/address/addr_type"
xmlns:xsd="http://www.w3.org/2001/XMLSchema"
targetNamespace="https://raw.githubusercontent.com/usnistgov/VoterRecordsInterchange/master/NIST_V0_voter_records_interchange.xsd" >

  <!-- ========== Roots ========== -->
  <xsd:element name="VoterRecordsRequest" type="VoterRecordsRequest"/>
  <xsd:element name="VoterRecordsResponse" type="VoterRecordsResponse"/>
  <!-- ========== Enumerations ========== -->
  <xsd:simpleType name="AssertionValue">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Enumeration for assertions from a voter or a third party such as a department of motor vehicles (DMV) in response to questions on a registration form, used in the Assertion attribute of VoterClassification.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="no">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a voter’s or third party’s assertion of “no” or “false”.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="yes">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a voter’s or third party’s assertion of “yes” or “true”.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="unknown">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a voter’s or third party’s assertion of “unknown”.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a voter’s or third party’s assertion of “other”.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="BallotReceiptMethod">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Enumeration for methods for delivering a ballot to the voter, used in the BallotReceiptPreference attribute of
oterRegistration. The sub-element may be repeated multiple times with different values as applicable, e.g., to specify both mail and online.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="email">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For email only.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="email-or-online">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For electronic mail or downloadable from a website (this value is ambiguous, thus the separate values for email and online).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="fax">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For use of a fax.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="mail">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For postal mail.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="online">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For downloadable from a website, e.g., the voter is sent a hypertext link to a ballot.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="ContactMethodType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in requests AND responses.

Enumeration for methods for contacting a voter or an election administration office, used in the Type attribute of ContactMethod.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="email">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For electronic mail.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="phone">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For use of a phone.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of contact method is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="IdentifierType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for election data-related codes in the ExternalIdentifiers class.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="fips">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For FIPS codes.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="local-level">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a code that is specific to a county or other similar locality.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="national-level">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a code that is used at the national level other than ocd-id.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="ocd-id">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For Open Civic Data identifiers.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state-level">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a code that is specific to a state.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of code is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="PhoneCapability">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request and response messages.

Enumeration for telephone capabilities, used in the Capability attribute of PhoneContactMethod.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="fax">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For telephones that include facsimile capabilities.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="mms">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For telephones that contain Multimedia Messaging Service (MMS) capabilities.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="sms">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For telephones that contain Short Messaging Service (SMS) capabilities.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="voice">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For telephones that contain voice capabilities.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="ReportingUnitType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request and response messages.

Enumeration for the type of geopolitical unit, used in the Type sub-element in the ReportingUnit element.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="ballot-batch">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for reporting batches of ballots that may cross precinct boundaries.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="ballot-style-area">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for ballot style areas generally composed of precincts.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="borough">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used in CT, NJ, PA, other states, and New York City for boroughs. For AK and LA, see county.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="city">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a city that reports results and/or for the district that encompasses it.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="city-council">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for city council districts.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="combined-precinct">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for one or more precincts that have been combined for the purposes of reporting.  Used for “Ward” if “Ward” is used interchangeably with “CombinedPrecinct”.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="congressional">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for U.S. Congressional districts.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="county">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a county and/or for the district that encompasses it.  In AK, used for counties that are called boroughs.  In LA, used for parishes.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="county-council">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for county council districts.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="drop-box">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a dropbox for absentee ballots.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="judicial">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for judicial districts.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="municipality">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used as applicable for various units such as towns, townships, villages that report votes and/or for the district that encompasses it.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="polling-place">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a polling place.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="precinct">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used also for “Ward” or “District” when these terms are used interchangeably with “Precinct”.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="school">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a school district.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="special">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a special district.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="split-precinct">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for splits of precincts.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a state and/or for the district that encompasses it.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state-house">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a state house or assembly district.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state-senate">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a state senate district.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="town">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used in some New England states as a type of municipality that reports votes and/or for the district that encompasses it.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="township">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used in some mid-western states as a type of municipality that reports votes and/or for the district that encompasses it.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="utility">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a utility district.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="village">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used as a type of municipality that reports votes and/or for the district that encompasses it.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="vote-center">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a vote center.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="ward">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for combinations or groupings of precincts or other units.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="water">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a water district.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for other types of reporting units not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="RequestError">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in response messages.

Enumeration for registration-related errors, used in the Error attribute of RegistrationRejection.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="identity-lookup-failed">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A lookup on the voter’s identity failed.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="incomplete">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The registration request is incomplete.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="ineligible">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is ineligible to be registered.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="invalid-form">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The registration form specified is invalid.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of error is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="RequestForm">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for types of registration forms, used in the RegistrationForm attribute of VoterRecordsRequest.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="fpca">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For the Federal Post Card Application form.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="nvra">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For the National Voter Registration Act form.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of form is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="RequestMethod">
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="armed-forces-recruitment-office">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter assisted by an armed forces recruitment office.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="motor-vehicle-office">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via an MVA/DMV.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other-agency-designated-by-state">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter assisted by an unspecified state-designated agency.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="public-assistance-office">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter assisted by a public assistance office.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="registration-drive-from-advocacy-group-or-political-party">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via a registration drive.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state-funded-agency-serving-persons-with-disabilities">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter assisted by a state-designated agency serving persons with disabilities.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="voter-via-election-registrars-office">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via an election or registrar’s office.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="voter-via-email">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via email.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="voter-via-fax">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via fax.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="voter-via-internet">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via the Internet, e.g., a website.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="voter-via-mail">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via postal mail.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="unknown">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The method used is unknown.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of method is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="RequestProxyType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for the registration proxy, e.g., the MVA/DMV , involved in the voters registration request, used in the
Type attribute of RegistrationProxy.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="armed-forces-recruitment-office">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter assisted by an armed forces recruitment office.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="motor-vehicle-office">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via an MVA/DMV.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other-agency-designated-by-state">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter assisted by an unspecified state-designated agency.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="public-assistance-office">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter assisted by a public assistance office.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="registration-drive-from-advocacy-group-or-political-party">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter via a registration drive.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state-funded-agency-serving-persons-with-disabilities">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter assisted by a state-designated agency serving persons with disabilities.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of source is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="SignatureSource">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for source of the voters signature, used in the Source sub-element of Signature.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="dmv">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For the department of motor vehicles or motor vehicle authority.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="local">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For an unspecified local source.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For an unspecified state source.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="voter">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter has included a signature on the form.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the source of the signature is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="SignatureType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for the type of voter signature, used in the Type sub-element of Signature.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="dynamic">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For use with biometrics or other artifacts captured as part of the act of the voter signing the registration form.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="electronic">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a facsimile of the signature applied to a marking surface, e.g., paper.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of signature is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="SuccessAction">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in response messages.

Enumeration for a response to a voter records request, indicating that the response to the request is successful and the action that occurred, used in the Action sub-element of RegistrationSuccess. The success action may not necessarily match the requested action.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="address-updated">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For indicating that an address was updated.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="name-updated">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For indicating that a name was updated.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="registration-cancelled">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For indicating that a registration was cancelled.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="registration-created">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For indicating that a registration was created.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="registration-updated">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For indicating that a registration was updated.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="status-updated">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For indicating that a registration status was updated.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for other types of success actions not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="VoterClassificationType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for voter status classifications, used in the Type attribute of VoterClassification. Whether the voter status, e.g., eighteen-on-election-day, is true, false, or unknown depends on the value of the Assertion attribute.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="activated-national-guard">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is an activated National Guard member on State orders (FPCA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="active-duty">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is a member of the Uniformed Services or Merchant Marine on active duty (FPCA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="active-duty-spouse-or-dependent">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is an eligible spouse or dependent (FPCA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="citizen-abroad-intent-to-return">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is a US citizen residing outside the US and has intention to return (FPCA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="citizen-abroad-return-uncertain">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is a US citizen residing outside the US and their return is uncertain (FPCA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="citizen-abroad-never-resided">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is a US citizen and has never resided in the US (FPCA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="deceased">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is deceased (NVRA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="declared-incompetent">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter has been declared incompetent (NVRA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="eighteen-on-election-day">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter will be 18 on election day (NVRA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="felon">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is a felon (NVRA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="permanently-denied">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter has not been permanently denied (NVRA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="protected-voter">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter status is protected (NVRA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="restored-felon">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is a restored felon (NVRA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="united-states-citizen">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter is a United States citizen (NVRA).</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of voter classification is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="VoterHelperType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for types of registration helpers, used in the Type attribute of RegistrationHelper.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="assistant">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a registration assistant.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="witness">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a registration witness.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="VoterIdType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for the type of voter ID, used in the Type attribute of VoterId.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="drivers-license">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a driver’s license.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="local-voter-registration-id">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a local voter registration record ID.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="ssn">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a complete Social Security number.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="ssn4">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for the last four digits of a Social Security number.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state-id">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a state ID that is not a state voter registration ID.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="state-voter-registration-id">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a state’s voter registration record ID.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="unspecified-document">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for an unspecified document, not known whether the document contains name, address, or photo ID.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="unspecified-document-with-name-and-address">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a document that contains the voter’s name and address, such as a utility bill.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="unspecified-document-with-photo-identification">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for a document that contains a photograph of the voter.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="unknown">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used for documentation that was not captured.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of ID is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="VoterRequestType">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Enumeration for the type of voter records request, used in the Type attribute of VoterRecordsRequest.</xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="ballot-request">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For requesting a ballot, possibly in conjunction with an FPCA registration request.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="lookup">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a voter registration lookup.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="registration">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a voter registration request.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of request is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <xsd:simpleType name="VoterStatus">
    <xsd:restriction base="xsd:string">
      <xsd:enumeration value="active">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a voter in active status.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="inactive">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For a voter in inactive status.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
      <xsd:enumeration value="other">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when the type of voter status is not included in this enumeration.</xsd:documentation>
        </xsd:annotation>
      </xsd:enumeration>
    </xsd:restriction>
  </xsd:simpleType>
  <!-- ========== Interfaces Defined ========== -->
  <!-- === Interface Address === -->
  <xsd:group name="Address">
    <xsd:choice>
      <xsd:element name="CommunityAddress_type" type="CommunityAddress_type"/>
      <xsd:element name="FourNumberAddressRange_type" type="FourNumberAddressRange_type"/>
      <xsd:element name="GeneralAddressClass_type" type="GeneralAddressClass_type"/>
      <xsd:element name="IntersectionAddress_type" type="IntersectionAddress_type"/>
      <xsd:element name="LandmarkAddress_type" type="LandmarkAddress_type"/>
      <xsd:element name="NumberedThoroughfareAddress_type" type="NumberedThoroughfareAddress_type"/>
      <xsd:element name="TwoNumberAddressRange_type" type="TwoNumberAddressRange_type"/>
      <xsd:element name="USPSGeneralDeliveryOffice_type" type="USPSGeneralDeliveryOffice_type"/>
      <xsd:element name="USPSPostalDeliveryBox_type" type="USPSPostalDeliveryBox_type"/>
      <xsd:element name="USPSPostalDeliveryRoute_type" type="USPSPostalDeliveryRoute_type"/>
      <xsd:element name="UnnumberedThoroughfareAddress_type" type="UnnumberedThoroughfareAddress_type"/>
    </xsd:choice>
  </xsd:group>
  <!-- ========== Classes ========== -->
  <xsd:complexType name="AdditionalInfo">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Class for specifying information not addressed in this model by other attributes, e.g. state-specific information that does not "fit" in any other attribute. The information will thus be highly specific to the generating application, and consuming applications must "know" the meaning of the information to make use of it. For this reason, use of this class is discouraged as much as is possible.

The StringValue and FileValue attributes are both optional, however exactly one of them must be included.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="FileValue" type="File" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used if the value is in a file; contains the filename and MIME type</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Name" type="xsd:string">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Name of the value.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="StringValue" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used if the value is a string; contains the string.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="BallotRequest" abstract="true">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">An abstract class representing a request for a ballot. Classes for specific types of BallotRequest inherit the attributes and define their own.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="BallotReceiptPreference" type="BallotReceiptMethod" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voters preference on how to receive their ballot in order from their most preferred method to least, used if it is a pre-election day ballot request. If omitted, the default method for the form will be used.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="MailForwardingAddress" minOccurs="0">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:group minOccurs="0" maxOccurs="1" ref="Address"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="BallotStyle">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">For referencing a ballot style defined elsewhere, such as in an Election Management System (EMS).</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="ExternalIdentifier" type="ExternalIdentifier" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For associating an ID with the ballot style.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="ImageUri" type="xsd:anyURI" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">URI for a ballot image.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Party" type="Party" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Unique identifier for one or more Party instances.  For associating one or more parties with the ballot style.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="ContactMethod">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request and response messages.

ElectionAdministration optionally includes this class to specify how to contact the election administration.

Voter optionally includes this class to specify the method for contacting a voter regarding the voters request. If the voter can be contacted in multiple ways, the application creating the data should order the occurrences of ContactMethod by priority.

The PhoneContactMethod class uses ContactMethod as a base class, and should be used with when the contact method is for a telephone and it is necessary to describe the capabilities of the telephone.

The Capability attribute is provided by the PhoneContactMethod class.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="OtherType" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when ContactMethodType value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="ContactMethodType">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The contact method type, e.g. email or phone.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Value" type="xsd:string">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The value of the ContactMethod. This will be the text value of the phone number, email address, or other mechanism. The values must be free of any formatting characters, such as parentheses or dashes for a phone number.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="Election">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request and response messages.

Describes an election event. Only the date of the election is required. Other attributes may be used to describe the election for which a ballot is requested or a voter participated.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="EndDate" type="xsd:date" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For an election that spans multiple days, the last day of the election.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="ExternalIdentifier" type="ExternalIdentifier" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For associating an ID with the election.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Name" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For including a name for the election; the name could be the same name as appears on the ballot.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="StartDate" type="xsd:date">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The first day of the election.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="ElectionAdministration">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in response messages.

ElectionAdministration optionally includes ContactMethod to specify contact information for the election authority.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="ContactMethod" type="ContactMethod" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For including various contact information.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Location" type="Location" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Location of the election authority.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Name" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Name of the election authority.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Uri" type="xsd:anyURI" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A URL for the election authority.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="ElectionBasedBallotRequest">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Implementation of BallotRequest in which a ballot for a single election event is requested.</xsd:documentation>
    </xsd:annotation>
    <xsd:complexContent>
      <xsd:extension base="BallotRequest">
        <xsd:sequence>
          <xsd:element name="Election" type="Election">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">The election for which the ballot is requested.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
        </xsd:sequence>
      </xsd:extension>
    </xsd:complexContent>
  </xsd:complexType>
  <xsd:complexType name="Error">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in response messages.

RequestRejection includes this class to describe the errors that caused the rejection.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="Name" type="RequestError">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used to indicate the type of error.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherError" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when RegistrationError value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Ref" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Reference (e.g. XPath) to the entity that the error applies.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="ExternalIdentifier">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request and response messages.

BallotStyle, Election, Party and ReportingUnit optionally include this class for associating a jurisdictions codes, i.e., identifiers, with political parties or geopolitical units such as counties, towns, precincts, etc. Multiple occurrences of ExternalIdentifier can be used to associate multiple codes, e.g., if there is a desire to associate multiple codes with an object such as state-specific codes as well as OCD-IDs (Open Civic Data Identifiers).</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="OtherType" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when Type value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="IdentifierType">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">An identifier type, e.g., FIPS.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Value" type="xsd:string">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The identifier used by the jurisdiction.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="File">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

VoterId optionally uses this class for FileValue to specify a filename for voter identification purposes such as for a utility bill. AdditionalInfo also optionally includes FileValue.

File extends the xsd:base64Binary type to add the attributes for filename and (Multi-Purpose Internet Mail Extensions) MIME type, e.g., application/pdf for a file of type PDF.

The Image element uses this class as an supertype, thus Image can be used when the type of file is for an image, e.g., image/png.</xsd:documentation>
    </xsd:annotation>
    <xsd:simpleContent>
      <xsd:extension base="xsd:base64Binary">
        <xsd:attribute name="FileName" type="xsd:string">
          <xsd:annotation>
            <xsd:documentation xml:lang="en">The filename.</xsd:documentation>
          </xsd:annotation>
        </xsd:attribute>
        <xsd:attribute name="MimeType" type="xsd:string">
          <xsd:annotation>
            <xsd:documentation xml:lang="en">The MIME type associated with the file.</xsd:documentation>
          </xsd:annotation>
        </xsd:attribute>
      </xsd:extension>
    </xsd:simpleContent>
  </xsd:complexType>
  <xsd:complexType name="Image">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Signature optionally includes this class to indicate that a file contains an image of a voters signature. Image uses File as supertype, thus attributes of File can be included in Image.</xsd:documentation>
    </xsd:annotation>
    <xsd:simpleContent>
      <xsd:extension base="xsd:base64Binary">
        <xsd:attribute name="FileName" type="xsd:string">
          <xsd:annotation>
            <xsd:documentation xml:lang="en">The filename.</xsd:documentation>
          </xsd:annotation>
        </xsd:attribute>
        <xsd:attribute name="MimeType" type="xsd:string">
          <xsd:annotation>
            <xsd:documentation xml:lang="en">The MIME type associated with the file.</xsd:documentation>
          </xsd:annotation>
        </xsd:attribute>
      </xsd:extension>
    </xsd:simpleContent>
  </xsd:complexType>
  <xsd:complexType name="LatLng">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in response messages.

Location optionally includes this element to specify the latitude and longitude of a voters voting location.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="Latitude" type="xsd:float">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Latitude of the location.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Longitude" type="xsd:float">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Longitude of the location.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Source" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">System used to perform the lookup from location name to lat/lng, e.g., the name of a geocoding service.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="Location">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in response messages.

ReportingUnit and ElectionAdministration optionally include this element to specify the address and directions to a voters voting location. The LatLng element can be included to specify the latitude and longitude of the voting location.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="Address" minOccurs="0">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:group minOccurs="0" maxOccurs="1" ref="Address"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="Directions" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Directions to the voting location.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="LatLng" type="LatLng" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Latitude/longitude of the voting location.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="Name">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Voter includes this class for specifying the name of a voter and, optionally, for specifying a previous name of the voter, using PreviousName instead of Name. RequestHelper also includes this class for specifying the name of a registration helper.

Multiple occurrences of the MiddleName attribute can be used as needed, e.g., for names with additional middle names or nicknames such as "John Andrew Winston (Jack) Smith".

All elements are optional, however at least FullName must be included if the other attributes are not.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="FirstName" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Person’s first (given) name.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="FullName" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Person’s full name.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="LastName" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Person’s last (family) name.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="MiddleName" type="xsd:string" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Person’s middle name.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Prefix" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A prefix associated with the person, e.g., Mr.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Suffix" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A suffix associated with the person, e.g., Jr.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="Party">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

BallotStyle optionally includes this attribute to specify the associated political party, such as for closed primaries.

Voter optionally includes this attribute to specify a voters political party.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="Abbreviation" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Short name for the party, e.g., “DEM”.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="ExternalIdentifier" type="ExternalIdentifier" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For associating an ID with the party.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Name" type="xsd:string">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Official full name of the party, e.g., “Republican”.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="PermanentBallotRequest">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Implementation of BallotRequest which serves to request ballots for election events that the voter is qualified on a long term basis. Although &amp;quot;permanent&amp;quot;, the request may be subject to renewal or cancellation procedures.</xsd:documentation>
    </xsd:annotation>
    <xsd:complexContent>
      <xsd:extension base="BallotRequest">
      </xsd:extension>
    </xsd:complexContent>
  </xsd:complexType>
  <xsd:complexType name="PhoneContactMethod">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request and response messages.

RequestHelper, and RequestProxy use this class to specify a telephone number as well as the capabilities of the telephone, e.g., sms, fax, etc.

PhoneContactMethod is subtype of ContactMethod. Thus, the elements that include ContactMethod could use PhoneContactMethod as applicable.</xsd:documentation>
    </xsd:annotation>
    <xsd:complexContent>
      <xsd:extension base="ContactMethod">
        <xsd:sequence>
          <xsd:element name="Capability" type="PhoneCapability" minOccurs="0" maxOccurs="unbounded">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">Specifies the phone’s capabilities, e.g., fax, sms.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
        </xsd:sequence>
      </xsd:extension>
    </xsd:complexContent>
  </xsd:complexType>
  <xsd:complexType name="ReportingUnit">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in response messages.

RequestSuccess and VoterRecord include this class so as to provide a list of geopolitical geography associated with the voters registration, e.g., the voters precinct, polling place, districts, etc. The Type attribute uses the ReportingUnitType enumeration to specify the type of geopolitical geography being defined. If the reporting unit type is not listed in enumeration ReportingUnitType, use other and include the reporting unit type (that is not listed in the enumeration) in OtherType.

The IsDistricted boolean is not strictly necessary, as it is possible to identify districts by their Type attribute. However, if the type of district is not listed in the ReportingUnitType enumeration and therefore OtherType is used, then IsDistricted is necessary. The IsDistricted boolean can also be used to signify that a ReportingUnit defined as a jurisdiction, e.g., a county, is also used as a district for, e.g., county-wide contests.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="ExternalIdentifier" type="ExternalIdentifier" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For associating an ID with the ReportingUnit.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="IsDistricted" type="xsd:boolean" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Boolean to indicate that the reporting unit is a district.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Location" type="Location" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Location of the district office.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Name" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Name of the reporting unit.Name of the reporting unit.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherType" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when ReportingUnitType value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="ReportingUnitType">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Enumerated type of reporting unit, e.g., district, precinct.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="RequestAcknowledgement">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in response messages.

For indicating that the request was received but action on the request is pending.</xsd:documentation>
    </xsd:annotation>
    <xsd:complexContent>
      <xsd:extension base="VoterRecordsResponse">
      </xsd:extension>
    </xsd:complexContent>
  </xsd:complexType>
  <xsd:complexType name="RequestHelper">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">VoterRecordsRequest optionally includes this element to specify information about a request helper, i.e., a request assistant or witness involved in a voters request.

RequestHelper includes the Name element to specify the registration helpers name and optionally includes the Signature element if a registration helpers signature is required.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="Address" minOccurs="0">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:group minOccurs="0" maxOccurs="1" ref="Address"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="Name" type="Name" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">To specify the name of the helper.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Phone" type="PhoneContactMethod" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Request helper’s phone number.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Signature" type="Signature" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">To specify the signature of the helper.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="VoterHelperType">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">To specify the type of helper, e.g., assistant.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="RequestProxy">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

VoterRecordsRequest optionally includes this class to specify information about a request proxy involved in a voter records request.

OriginTransactionId can be used to include an optional identifier of the originating external transaction from the proxy, e.g., used for the transaction ID generated by a DMV application enacting a voter registration request to a registration portal application (on behalf of a citizen obtaining a drivers license). This sub-element is not to be confused with TransactionId in VoterRecordsRequest, which is used to include a transaction ID of the voter records request, e.g., the transaction ID of the registration portals voter records request.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="Address" minOccurs="0">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:group minOccurs="0" maxOccurs="1" ref="Address"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="Name" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A name associated with the proxy.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OriginTransactionId" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">An identifier associated with the transaction between the proxy and, e.g., the registration portal.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherType" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when RegistrationProxyType value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Phone" type="PhoneContactMethod" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A phone number associated with the proxy.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="TimeStamp" type="xsd:date" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The date of the request from the proxy.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="RequestProxyType">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The type of the requesting proxy, e.g., motor-vehicle-office, voter-via-email.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="RequestRejection">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in responses.

For indicating that the request failed. The Error attribute is used to indicate the type of error that occurred. The AdditionalDetails attribute can be used to provide more information as to the rejection.</xsd:documentation>
    </xsd:annotation>
    <xsd:complexContent>
      <xsd:extension base="VoterRecordsResponse">
        <xsd:sequence>
          <xsd:element name="AdditionalDetails" type="xsd:string" minOccurs="0" maxOccurs="unbounded">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">Used to provide additional details as applicable.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
          <xsd:element name="Error" type="Error" minOccurs="0" maxOccurs="unbounded">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">For associating a RequestRejection with one or more Errors.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
        </xsd:sequence>
      </xsd:extension>
    </xsd:complexContent>
  </xsd:complexType>
  <xsd:complexType name="RequestSuccess">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in responses.

For indicating a successful response to a request. The Action attribute is used to indicate the action that occurred, which may differ from what was requested. For example, a request for a new voter registration may succeed, but if the voter was already registered, the response may indicate a registration update as opposed to a registration create.

The response also includes, optionally, other information useful to the voter, including a description of the voter’s polling place, districts (i.e., contests) associated with the polling place, or other geopolitical geographies such as the voter’s precinct.</xsd:documentation>
    </xsd:annotation>
    <xsd:complexContent>
      <xsd:extension base="VoterRecordsResponse">
        <xsd:sequence>
          <xsd:element name="Action" type="SuccessAction" minOccurs="0" maxOccurs="unbounded">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">Used to indicate the action that occurred.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
          <xsd:element name="District" type="ReportingUnit" minOccurs="0" maxOccurs="unbounded">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">One or more districts associated with the voter’s precinct.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
          <xsd:element name="EffectiveDate" type="xsd:date" minOccurs="0">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">The effective date of the action.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
          <xsd:element name="ElectionAdministration" type="ElectionAdministration" minOccurs="0">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">The election administration that conducts elections for the voter.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
          <xsd:element name="Locality" type="ReportingUnit" minOccurs="0" maxOccurs="unbounded">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">Other geographies such as the voter’s precinct.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
          <xsd:element name="PollingPlace" type="ReportingUnit" minOccurs="0">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">The voter’s polling place.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
        </xsd:sequence>
      </xsd:extension>
    </xsd:complexContent>
  </xsd:complexType>
  <xsd:complexType name="Signature">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request messages.

Voter optionally includes this class for specifying information about a voters signature on a registration request. If there is a need to include previous signature that uses a different name, e.g., a maiden name, Voter uses PreviousSignature instead of Signature.

RequestHelper optionally includes this class for specifying information about the helpers signature.

Source is used to specify the source of the voters signature, for example, on file at a department of motor vehicles. FileValue is used to include an image of the voters signature.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="Date" type="xsd:date" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The date of the signature, i.e., when created.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="FileValue" type="Image" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The signature image in base 64 binary</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherSource" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when Source value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherType" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when SignatureType value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Source" type="SignatureSource" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A source for the signature, e.g., dmv.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="SignatureType" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A signature type, e.g., dynamic.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="TemporalBallotRequest">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Implementation of BallotRequest in which election opportunities that the voter is qualified during a given time frame will be requested.</xsd:documentation>
    </xsd:annotation>
    <xsd:complexContent>
      <xsd:extension base="BallotRequest">
        <xsd:sequence>
          <xsd:element name="EndDate" type="xsd:date">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">The date at which the request is no longer effective.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
          <xsd:element name="StartDate" type="xsd:date">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">The date at which the request comes into effect.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
        </xsd:sequence>
      </xsd:extension>
    </xsd:complexContent>
  </xsd:complexType>
  <xsd:complexType name="Voter">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Voter contains attributes specific to identifying a voter.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="ContactMethod" type="ContactMethod" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">How to contact the voter, listed in order of preference.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="DateOfBirth" type="xsd:date" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter’s data of birth in YYYY-MM-DD
format.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Ethnicity" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter’s ethnicity.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Gender" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Older systems may not understand values other than "Male" or "Female" (the only choices available on FPCA).</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="MailingAddress" minOccurs="0">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:group minOccurs="0" maxOccurs="1" ref="Address"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="Name" type="Name">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Voter’s name.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Party" type="Party" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Voter’s political party.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="PreviousName" type="Name" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A voter’s previous name.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="PreviousResidenceAddress" minOccurs="0">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:group minOccurs="0" maxOccurs="1" ref="Address"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="PreviousSignature" type="Signature" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Information about a previous voter signature on the registration form.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="ResidenceAddress">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:group minOccurs="1" maxOccurs="1" ref="Address"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="ResidenceAddressIsMailingAddress" type="xsd:boolean" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">If set to true, MailingAddress need not be included.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Signature" type="Signature" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Information about the voter signature on the registration form.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="VoterClassification" type="VoterClassification" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">How the voter is classified per assertions the voter has made on a registration form.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="VoterId" type="VoterId" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Information to provide voter identity.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="VoterClassification">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Voter optionally includes this class to describe a voters classification per criteria on the voters request form, e.g., united-states-citizen or eighteen-on-election-day.

VoterClassification includes assertions of the voter in response to the voter request form criteria. For example, an assertion of true may be used with a criterion of united-states-citizen. Assertions can be negative, such as providing an assertion of false for a criterion of felon, an assertion of unknown to indicate that the voter does not know whether they meet or do not meet the specific criteria on the form or an assertion of other, in which the assertion is specified by the value of OtherAssertion.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="Assertion" type="AssertionValue">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A positive, negative, other or unknown assertion</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherAssertion" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">An locally defined assertion value.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherType" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when VoterClassificationType value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="VoterClassificationType">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">A classification type, e.g., felon.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="VoterId">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in request and response messages.

Used to include information about a voters identification that may be required in a registration request. Voter includes VoterId.

AttestNoSuchId is used to attest that the voter has no ID of a specified type, thus it must be included with a value of true if attesting that the voter has no ID for that specified type. It can be included with a value of false to attest that the voter does have an ID of the specified type, in which case either StringValue or FileValue must be included; however, it is assumed to be false if not included. The StringValue and FileValue sub-elements are both optional, however at least one of them must be included.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="AttestNoSuchId" type="xsd:boolean" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used to attest that the voter has no ID. Assumed to be false if not present.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="DateOfIssuance" type="xsd:date" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Date the ID was issued.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="FileValue" type="File" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used to include a file name for the ID.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherType" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when VoterIdType value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="StringValue" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used to include the ID as a string.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="VoterIdType">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The type of voter ID.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="VoterParticipation">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">For indicating an election that the voter participated in. Participation does not imply a counted ballot.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="BallotStyle" type="BallotStyle" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For associating the voter participation to a specific ballot style, such to a partisan ballot in a closed primary.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Election" type="Election">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For associating the voter participation to a specific election event.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="PollingLocation" type="ReportingUnit" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The polling place used by the voter.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="VoterRecord">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">A subtype of Voter representing a voter record stored in a Voter Registration Database (VRDB).

VoterRecord optionally contains additional information useful to the voter, including a description of the voter’s polling place, districts associated with the voters precinct, or other geopolitical geographies such as the voter’s precinct.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="District" type="ReportingUnit" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">One or more districts associated with the voter’s precinct.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="ElectionAdministration" type="ElectionAdministration" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The election administration that conducts elections for the voter.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="HavaIdRequired" type="xsd:boolean" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Indicates that the voter must present identification at the polls per HAVA.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Locality" type="ReportingUnit" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Other geographies such as the voter’s precinct.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherStatus" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when VoterStatus value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="PollingLocation" type="ReportingUnit" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The voter’s polling place.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Voter" type="Voter"/>
      <xsd:element name="VoterParticipation" type="VoterParticipation" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For associating a VoterRecord to elections the voter has participated in.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="VoterStatus" type="VoterStatus" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The status of the VoterRecord, possibly to indicate the ability to receive a regular ballot.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="VoterRecordResults">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">Used in responses.

For indicating a successful response to a lookup request.

A lookup for a single voter may result in multiple VoterRecords being returned. This can occur if the voter has duplicate records in the VRDB, or if the criteria specified in the lookup request was broad.</xsd:documentation>
    </xsd:annotation>
    <xsd:complexContent>
      <xsd:extension base="VoterRecordsResponse">
        <xsd:sequence>
          <xsd:element name="VoterRecord" type="VoterRecord" minOccurs="0" maxOccurs="unbounded">
            <xsd:annotation>
              <xsd:documentation xml:lang="en">A particular voter record returned.</xsd:documentation>
            </xsd:annotation>
          </xsd:element>
        </xsd:sequence>
      </xsd:extension>
    </xsd:complexContent>
  </xsd:complexType>
  <xsd:complexType name="VoterRecordsRequest">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">The root element for request messages.

For defining items pertaining to the status and type of the voter records request and when it was generated. VoterRecordsRequest includes the Subject association to specify various information about the voter in question. It includes the BallotRequest association to handle a request for an ballot; this request may be part of an FPCA form registration or may be submitted independently.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="AdditionalInfo" type="AdditionalInfo" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">For including other information not specified by this model.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="BallotRequest" type="BallotRequest" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Specifies information relating to a request for a ballot.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Form" type="RequestForm" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">If the request is for a voter registration, the registration form used by the voter.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="GeneratedDate" type="xsd:date">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The date that the voter records request was generated.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Issuer" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The name of the issuer of the voter records request transaction, e.g., State of West Virginia Voter Registration Portal.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherForm" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when RegistrationForm value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherRequestMethod" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when RegistrationMethod value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="OtherType" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Used when RequestType value is other.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="RequestHelper" type="RequestHelper" minOccurs="0" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Included if the registration involves a registration assistant organization.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="RequestMethod" type="RequestMethod">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The method used by the voter to register.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="RequestProxy" type="RequestProxy" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Included if the registration request is via a proxy, e.g., the DMV.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="SelectedLanguage" type="xsd:language" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The language specified by the voter, if any.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Subject" type="Voter">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Specifies information about the voter who is the subject of the request.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="TransactionId" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">An identifier of the voter records request transaction.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="Type" type="VoterRequestType" maxOccurs="unbounded">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">The type of request, e.g., registration.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
      <xsd:element name="VendorApplicationId" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">An identifier of the vendor application generating the voter registration request, e.g., X-VRDB Version 3.1.a.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
  <xsd:complexType name="VoterRecordsResponse" abstract="true">
    <xsd:annotation>
      <xsd:documentation xml:lang="en">The root element for response messages.

For defining items pertaining to the status of a response to a voter records request.   is an abstract element with three xsi:types that get used according to the type of response:
•	, used to indicate an acknowledgement only.
•	, used to indicate a failure and the type of failure.
•	, used to indication that a successful registration action occurred and the type of registration action, which may differ from the type of registration action requested.

 optionally includes the  sub-element associated with the voter records request.</xsd:documentation>
    </xsd:annotation>
    <xsd:sequence>
      <xsd:element name="TransactionId" type="xsd:string" minOccurs="0">
        <xsd:annotation>
          <xsd:documentation xml:lang="en">Transaction ID associated with the voter records request.</xsd:documentation>
        </xsd:annotation>
      </xsd:element>
    </xsd:sequence>
  </xsd:complexType>
	<!-- Begin Support Groups -->
	<xsd:group name="IntersectionAddress_StreetName_group">
		<xsd:sequence>
			<xsd:element name="SeparatorElement"
				type="Separator_type" maxOccurs="1" minOccurs="1" />
			<xsd:element name="CompleteStreetName"
				type="CompleteStreetName_type" maxOccurs="1"
				minOccurs="1" />
		</xsd:sequence>
	</xsd:group>

	<!-- Begin Base Class Types -->

	<!-- Thoroughfare Addresses  -->

	<xsd:complexType name="NumberedThoroughfareAddress_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">Defining Characteristics:
   1. Addresses of this class must include a Complete Address Number and a Complete Street Name.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. 	</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:choice>
				<xsd:element name="CompleteLandmarkName"
					type="CompleteLandmarkName_type" minOccurs="0"
					maxOccurs="1" />
				<xsd:element name="CompletePlaceName"
					type="CompletePlaceName_type" minOccurs="0"
					maxOccurs="1" />
			</xsd:choice>
			<xsd:element name="CompleteAddressNumber"
				type="CompleteAddressNumber_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="CompleteStreetName"
				type="CompleteStreetName_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="CompleteSubaddress"
				type="CompleteSubaddress_type" minOccurs="0"
				maxOccurs="1" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="0"
				maxOccurs="unbounded" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>


	<xsd:complexType name="IntersectionAddress_type">
			<xsd:annotation>
				<xsd:documentation>Defining Characteristics:
   1. An address of this class must include two or more Complete Street Names, each separated by a Separator Element.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. 

			</xsd:documentation>
			</xsd:annotation>
			<xsd:sequence>
			<xsd:choice>
				<xsd:element name="CompleteLandmarkName"
					type="CompleteLandmarkName_type" minOccurs="0"
					maxOccurs="1" />
				<xsd:element name="CompletePlaceName"
					type="CompletePlaceName_type" minOccurs="0"
					maxOccurs="1" />
			</xsd:choice>
			<xsd:element name="CornerOf" type="CornerOf_type" minOccurs="0"
			    maxOccurs="1"></xsd:element>
			<xsd:element name="CompleteStreetName"
				type="CompleteStreetName_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="IntersectionAddress_StreetName_group"
				minOccurs="1" maxOccurs="unbounded" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<xsd:complexType name="TwoNumberAddressRange_type">
			<xsd:annotation>
				<xsd:documentation>Defining Characteristics
   1. Addresses of this class must include two Complete Address Numbers separated by a hyphen. The first Complete Address Number must be less than or equal to the second.
   2. The two Complete Address Numbers must be followed by a Complete Street Name.
   3. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. 
			</xsd:documentation>
			</xsd:annotation>
			<xsd:sequence>
			<xsd:choice>
				<xsd:element name="CompleteLandmarkName"
					type="CompleteLandmarkName_type" minOccurs="0"
					maxOccurs="1" />
				<xsd:element name="CompletePlaceName"
					type="CompletePlaceName_type" minOccurs="0"
					maxOccurs="1" />
			</xsd:choice>
			<xsd:element name="CompleteAddressNumber"
				type="CompleteAddressNumber_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="SeparatorElement"
				type="Separator_type" maxOccurs="1" minOccurs="1" />
			<xsd:element name="CompleteAddressNumber"
				type="CompleteAddressNumber_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="CompleteStreetName"
				type="CompleteStreetName_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="unbounded" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<xsd:complexType name="FourNumberAddressRange_type">
		<xsd:annotation>
			<xsd:documentation>Defining Characteristics:
   1. Addresses of this class must include four Complete Address Numbers, representing respectively the left low, left high, right low, and right high four Complete Address Numbers for the block or transportation segment(s), followed by a Complete Street Name.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A ZIP Code is recommended but not mandatory.
   3. The Four Number Address Range syntax follows the structure established by the U.S. Census Bureau for TIGER/Line file street segment address ranges (see http://www.census.gov/geo/www/tiger/tgrshp2008/TGRSHP08.pdf ("All Lines Shapefile" attribute table layout)). </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:choice>
				<xsd:element name="CompleteLandmarkName"
					type="CompleteLandmarkName_type" minOccurs="0"
					maxOccurs="1" />
				<xsd:element name="CompletePlaceName"
					type="CompletePlaceName_type" minOccurs="0"
					maxOccurs="1" />
			</xsd:choice>
			<xsd:element name="CompleteAddressNumber"
				type="CompleteAddressNumber_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="SeparatorElement"
				type="Separator_type" maxOccurs="1" minOccurs="1" />
			<xsd:element name="CompleteAddressNumber"
				type="CompleteAddressNumber_type" minOccurs="1"
				maxOccurs="1" />

			<xsd:element name="CompleteAddressNumber"
				type="CompleteAddressNumber_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="SeparatorElement"
				type="Separator_type" maxOccurs="1" minOccurs="1" />
			<xsd:element name="CompleteAddressNumber"
				type="CompleteAddressNumber_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="CompleteStreetName"
				type="CompleteStreetName_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<xsd:complexType name="UnnumberedThoroughfareAddress_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">Defining Characteristics:
   1. Addresses of this class must contain a Complete Street Name with no Complete Address Number preceding it.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:choice>
				<xsd:element name="CompleteLandmarkName"
					type="CompleteLandmarkName_type" minOccurs="0"
					maxOccurs="1" />
				<xsd:element name="CompletePlaceName"
					type="CompletePlaceName_type" minOccurs="0"
					maxOccurs="1" />
			</xsd:choice>
			<xsd:element name="CompleteStreetName"
				type="CompleteStreetName_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="CompleteSubaddress"
				type="CompleteSubaddress_type" minOccurs="0"
				maxOccurs="1" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<!-- Landmark Address Classes -->

	<xsd:complexType name="LandmarkAddress_type">
        <xsd:annotation>
        	<xsd:documentation>Defining Characteristics:
   1. Addresses of this class must include a Complete Landmark Name, with no Complete Address Number preceding it and no Complete Street Name following it.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. </xsd:documentation>
        </xsd:annotation>
        <xsd:sequence>
			<xsd:element name="CompleteLandmarkName"
				type="CompleteLandmarkName_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:element name="CompleteSubaddress"
				type="CompleteSubaddress_type" minOccurs="0"
				maxOccurs="1" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<xsd:complexType name="CommunityAddress_type">
		<xsd:annotation>
			<xsd:documentation>Defining Characteristics:
   1. Addresses of this class must include a Complete Address Number followed by a Complete Landmark Name or a Complete Place Name, and they must not include a Complete Street Name.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="CompleteAddressNumber"
				type="CompleteAddressNumber_type" minOccurs="1"
				maxOccurs="1" />
			<xsd:choice>
				<xsd:element name="CompleteLandmarkName"
					type="CompleteLandmarkName_type" minOccurs="1"
					maxOccurs="1" />
				<xsd:element name="CompletePlaceName"
					type="CompletePlaceName_type" minOccurs="1"
					maxOccurs="1" />
			</xsd:choice>
			<xsd:element name="CompleteSubaddress"
				type="CompleteSubaddress_type" minOccurs="0"
				maxOccurs="1" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<!-- Postal Delivery Address Classes -->
	<xsd:complexType name="USPSPostalDeliveryBox_type">
        <xsd:annotation>
        	<xsd:documentation>Defining Characteristics:
   1. Addresses of this class must include a Usps Box in the required format, and must not include a Usps Route.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. </xsd:documentation>
        </xsd:annotation>
        <xsd:sequence>
			<xsd:element name="USPSBox" type="USPSBox_type"
				minOccurs="1" maxOccurs="1" />
			<xsd:element name="CompleteSubaddress"
				type="CompleteSubaddress_type" minOccurs="0"
				maxOccurs="1" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<xsd:complexType name="USPSPostalDeliveryRoute_type">
        <xsd:annotation>
        	<xsd:documentation>Defining Characteristics:
   1. Addresses of this class must include a Usps Address in the specified RR or HC or overseas military delivery format.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. </xsd:documentation>
        </xsd:annotation>
        <xsd:sequence>
			<xsd:element name="USPSAddress"
				type="USPSAddress_type" minOccurs="1" maxOccurs="1" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="1" />

			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<xsd:complexType name="USPSGeneralDeliveryOffice_type">
        <xsd:annotation>
        	<xsd:documentation>Defining Characteristics:
   1. Addresses of this class must include a USPSGeneral Delivery Point in the specified format.
   2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory. </xsd:documentation>
        </xsd:annotation>
        <xsd:sequence>
			<xsd:element name="USPSGeneralDeliveryPoint"
				type="USPSGeneralDeliveryPoint_type" />
			<xsd:group ref="PlaceStateZip_group" minOccurs="1"
				maxOccurs="1" />
			<xsd:group ref="AddressAttributes_group"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="action" type="Action_type"
			use="optional" />
	</xsd:complexType>

	<xsd:complexType name="GeneralAddressClass_type">
        <xsd:annotation>
        	<xsd:documentation>Defining Characteristic: 
  In addresses of this class the Delivery Address must be unparsed (except that in Types 2 and 3 the Complete Subaddress may be separated from the rest of the Delivery Address) and may contain thoroughfare, landmark, or postal syntaxes. This class may also include addresses that do not conform to any of the thoroughfare, landmark, or postal classes, including non-U.S. addresses. </xsd:documentation>
        </xsd:annotation>
        <xsd:choice>
			<xsd:element name="GeneralAddress"
				type="GeneralAddress_type" />
			<xsd:sequence>
				<xsd:element name="USPSGeneralDeliveryPoint"
					type="USPSGeneralDeliveryPoint_type" />
				<xsd:group ref="PlaceStateZip_group"
					minOccurs="1" maxOccurs="1" />
				<xsd:group ref="AddressAttributes_group"
					minOccurs="0" maxOccurs="1" />
			</xsd:sequence>
		</xsd:choice>
		<xsd:attribute name="action" type="Action_type" />
	</xsd:complexType>

	<xsd:group name="AddressCollection_group">
		<xsd:annotation>
			<xsd:documentation>
				The Single Choice Union of all Address Types
			</xsd:documentation>
		</xsd:annotation>
		<xsd:choice>
			<xsd:element name="NumberedThoroughfareAddress"
				type="NumberedThoroughfareAddress_type" minOccurs="0"
				maxOccurs="unbounded" />
			<xsd:element name="IntersectionAddress"
				type="IntersectionAddress_type" minOccurs="0"
				maxOccurs="unbounded" />
			<xsd:element name="TwoNumberAddressRange"
				type="TwoNumberAddressRange_type" minOccurs="0"
				maxOccurs="unbounded" />
			<xsd:element name="FourNumberAddressRange"
				type="FourNumberAddressRange_type" minOccurs="0"
				maxOccurs="unbounded" />
			<xsd:element name="UnnumberedThoroughfareAddress"
				type="UnnumberedThoroughfareAddress_type" minOccurs="0"
				maxOccurs="unbounded" />

			<xsd:element name="LandmarkAddress"
				type="LandmarkAddress_type" minOccurs="0"
				maxOccurs="unbounded" />
			<xsd:element name="CommunityAddress"
				type="CommunityAddress_type" minOccurs="0"
				maxOccurs="unbounded" />

			<xsd:element name="USPSPostalDeliveryBox"
				type="USPSPostalDeliveryBox_type" minOccurs="0"
				maxOccurs="unbounded" />
			<xsd:element name="USPSPostalDeliveryRoute"
				type="USPSPostalDeliveryRoute_type" minOccurs="0"
				maxOccurs="unbounded" />
			<xsd:element name="USPSGeneralDeliveryOffice"
				type="USPSGeneralDeliveryOffice_type" minOccurs="0"
				maxOccurs="unbounded" />

			<xsd:element name="GeneralAddressClass"
				type="GeneralAddressClass_type" minOccurs="0"
				maxOccurs="unbounded" />

			<xsd:element name="AddressReferenceSystem"
				type="AddressReferenceSystem_type" minOccurs="0"
				maxOccurs="unbounded" />
		</xsd:choice>
	</xsd:group>

	<!-- End Complex Types -->

	<!-- Wrapper collecting a set of addresses -->
	<xsd:element name="AddressCollection">
		<xsd:complexType mixed="false">
			<xsd:choice minOccurs="1" maxOccurs="unbounded">
				<xsd:group ref="AddressCollection_group" />
			</xsd:choice>
			<xsd:attribute name="version" type="version_type"
				use="required" />
		</xsd:complexType>
	</xsd:element>
	
	
	
 
	<xsd:simpleType name="version_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The ID for this version
				of the Address Standard.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="0.4" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="Separator_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
A word, phrase, or symbol used as a separator between components of a complex element or class. The Separator Element is required for Intersection Addresses and for Two Number Address Ranges, and it may be used in constructing a Complete Street Name.
</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="CornerOf_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A directional word describing a corner formed by the intersection of two thoroughfares. 
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>
	
	<xsd:simpleType name="ElementSequenceNumber_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The order in which the
				elements of a Complete Subaddress,
				Complete Landmark Name, or Complete Place Name should be written.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:integer" />
	</xsd:simpleType>


	<xsd:simpleType name="GNISFeatureID_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				"A permanent, unique
				number assigned to a geographic feature for the
				sole purpose of uniquely identifying that feature as a record in any
				information system database, dataset, file, or document and for
				distinguishing it from all other feature records so identified. The
				number is assigned sequentially (highest existing number plus one)
				to
				new records as they are created in the Geographic Names Information
				System."

				Definition Source Geographic Names Project, USGS, 523
				National Center,
				Reston, VA 20192-0523, as posted August 25, 2009 at:
				http://geonames.usgs.gov/domestic/metadata.htm "Feature Identifier"
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:integer" />
	</xsd:simpleType>

	<xsd:complexType name="AddressNumberPrefix_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en"> The portion of the Complete Address Number which precedes the Address Number itself.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="Separator" type="Separator_type" />
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:simpleType name="AddressNumber_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The numeric identifier for a land parcel, house, building or other location along a thoroughfare or within a community. 

1. The Address Number is defined as an integer to support address sorting, parity (even/odd) definition, and in/out of address range tests.
2. The Address Number must be converted to a characterString when it is combined with the prefix and suffix into a Complete Address Number.
3. Some addresses may contain letters, fractions, hyphens, decimals and other non-integer content within the Complete Address Number. Those non-integer elements should be placed in the Address Number Prefix if they appear before the Address Number, or in the Address Number Suffix if they follow the Address Number. For example, if the New York City hyphenated address 194-03 ½ 50th Avenue, New York, NY 11365 were to be parsed rather than represented as a Complete Address Number:
---the Address Number Prefix would be "194-" (including the hyphen),
---the Address Number would be 3 (converted to "03" (text) in constructing the Complete Address Number),
---and the Address Number Suffix would be "1/2".
4. Special care should be taken with records where the Address Number is 0 (zero). Occasionally zero is issued as a valid address number (e.g. Zero Prince Street, Alexandria, VA 22314) or it can be imputed (1/2 Fifth Avenue, New York, NY 10003 (for which the Address Number would be 0 and the Address Number Suffix would be "1/2")). More often, though, zero is shown because the Address Number is either missing or non-existent, and null value has been converted to zero.
5. Address Numbers vs. Address "Letters". In rare instances, thoroughfare addresses may be identified by letters instead of numbers (for example, "A" Main Street, "B" Main Street, "C" Main Street, "AA" Main Street, "AB" Main Street, etc.) A few thousand such cases have been verified in Puerto Rico, and others may be found elsewhere. In such cases, the letter(s) cannot be treated as an Address Number, because an Address Number must be an integer. The letter(s) also cannot be an Address Number Prefix or Address Number Suffix, because neither of those can be created except in conjunction with an Address Number. Instead, the letter(s) should be treated a Subaddress Identifier in an Unnumbered Thoroughfare Address. (For example: Complete Street Name = "Calle Sanchez", Complete Subaddress Identifier = "AB", Complete Place Name = "Mayaguez" State Name = "PR"). As an alternative, the address may be classified in the General Address Class and treated accordingly. </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value="[0-9]+" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:complexType name="AddressNumberSuffix_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The portion of the Complete Address Number which follows the Address Number itself. 

1. This element is not found in most Complete Address Numbers. When found, it should be separated from the Address Number so that the Address Number can be maintained as an integer for sorting and quality control tests.
2. Informally an Address Number and Address Number Suffix may be written with or without a space between them. Within this standard, the default assumption is that an empty space separates elements unless stated otherwise. The Attached Element can be used to indicate where the assumed space between the Address Number and Address Number Suffix has been omitted within an address file (see Attached Element for additional notes).
3. If a hyphen appears between the Address Number and the Address Number Suffix, the hyphen is included in the Address Number Suffix.
4. When milepost Complete Address Numbers include decimal fractions, the integer portion of the milepost number is treated as the Address Number, and the fraction (including the decimal point) is treated as an Address Number Suffix. (See Complete Address Number for additional notes on milepost address numbers.) </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="Separator" type="Separator_type" />
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>


	<!-- StreetName Content -->


	<xsd:complexType name="StreetNamePreModifier_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A word or phrase in a Complete Street Name that
1. Precedes and modifies the Street Name, but is separated from it by a Street Name Pre Type or a Street Name Pre Directional or both, or
2. Is placed outside the Street Name so that the Street Name can be used in creating a sorted (alphabetical or alphanumeric) list of street names. </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="Separator" type="Separator_type"></xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="StreetNamePreDirectional_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A word preceding the Street Name that indicates the direction or position of the thoroughfare relative to an arbitrary starting point or line, or the sector where it is located. </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="Separator" type="Separator_type"></xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="StreetNamePreType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A word or phrase that precedes the Street Name and identifies a type of thoroughfare in a Complete Street Name. </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="Separator"
					type="Separator_type">
				</xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:simpleType name="StreetName_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Official name of a
				street as assigned by a local
				governing authority, or an alternate
				(alias) name that
				is used and recognized, excluding street types,
				directionals, and modifiers.

				1. Each jurisdiction should establish
				its own list of
				street names and use it as a domain of values to
				validate addresses. Alternate and Official names are
				distinguished by
				the address attribute "Alias Status
				Attribute"

				2. Local addressing
				authorities are urged to follow
				consistent internal street naming
				practices, and to
				resolve internal street name inconsistencies,
				especially
				for numbered streets ("Twentieth" or "20th" ?), internal
				capitalization ("McIntyre" or "Mcintyre" ?), hyphens,
				and
				apostrophes.

				3. If alternate or abbreviated versions of street names
				are needed for a specialized purpose such as mailing or
				emergency
				dispatch, they can be created in views or
				export routines.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:complexType name="StreetNamePostModifier_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A word or phrase in a Complete Street Name that follows and modifies the Street Name, but is separated from it by a Street Name Post Type or a Street Name Post Directional or both. </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="Separator" type="Separator_type"></xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="StreetNamePostDirectional_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A word preceding the Street Name that indicates the direction or position of the thoroughfare relative to an arbitrary starting point or line, or the sector where it is located. </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="Separator" type="Separator_type"></xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="StreetNamePostType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A word or phrase that follows the Street Name and identifies a type of thoroughfare in a Complete Street Name. </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="Separator"
					type="Separator_type">
				</xsd:attribute>
				<xsd:attribute name="NewAttribute" type="xsd:string"></xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<!-- Occupancy Types -->

	<xsd:simpleType name="SubaddressComponentOrder_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The order in which
				SubaddressType and
				SubaddressIdentifier appear within an
				SubaddressElement when expressed as text. "Apartment 7"
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:integer">
			<xsd:enumeration value="1">
				<xsd:annotation>
					<xsd:documentation>SubaddressType first, then SubaddressIdentifier
						(or: SubaddressElement does not include an SubaddressType).
						Example: "Floor 7"</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="2">
				<xsd:annotation>
					<xsd:documentation>SubaddressIdentifier first, then SubaddressType.
						Example: "Empire Room"</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="3">
				<xsd:annotation>
					<xsd:documentation>Order is not known or unstated.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="SubaddressType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				This is a modifier to
				the SubaddressIdentifier element and this
				cannot exist without it.
				The type of structure (when
				several structures are found at the same
				address), e.g.,
				Apartment, Tower, Block. Used with Building
				Identifier
				to designate one of several structures at a given site.
				Fits within the general USPS definition of a "secondary
				address
				designator" and EPA definitions of "secondary
				address identifier"
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="SubaddressIdentifier_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The letters, numbers,
				words or combination thereof used
				to distinguish one structure from
				another when several
				occur at the same address.

				Used with
				SubaddressType to designate one of several
				structures at a given
				site. Fits within the USPS
				defnition of a "secondary address
				designator" and the
				general EPA definition of "secondary address
				identifier"
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>


	<xsd:complexType name="SubaddressElement_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A single combination of
				SubaddressType and
				SubaddressIdentifier (or, in some cases, a
				SubaddressIdentifier alone), which, alone or in
				combination with
				other SubaddressElements, distinguishes
				one subaddress within or
				between structures from another
				when several occur within the same
				feature. See
				CompleteSubaddress for a definition of "subaddress."
			</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="SubaddressType" type="SubaddressType_type"
				maxOccurs="1" minOccurs="0" />
			<xsd:element name="SubaddressIdentifier" type="SubaddressIdentifier_type"
				maxOccurs="1" minOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="ElementSequenceNumber"
			type="ElementSequenceNumber_type" />
		<xsd:attribute name="SubaddressComponentOrder"
			type="SubaddressComponentOrder_type" />
		<xsd:attribute name="Separator" type="Separator_type" />
		<xsd:attribute name="GNISFeatureID" type="GNISFeatureID_type"></xsd:attribute>
	</xsd:complexType>

	<!-- Landmark Name Type -->

	<xsd:complexType name="LandmarkName_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The name by which a
				prominent feature is publicly known.

				Landmarks usually have a street
				address. A landmark name
				does not imply official historic landmark
				status, but
				simply a commonly used name that substitutes for an
				address number and street name in identifying the
				location of a
				specific building or feature. Generally
				the use of a landmarks
				street address is preferable
				because it is unambiguous. All landmark
				names should be
				cross-referenced to a street address or other
				coordinate
				location.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="ElementSequenceNumber"
					type="ElementSequenceNumber_type" />
				<xsd:attribute name="GNISFeatureID" type="GNISFeatureID_type" />
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<!-- Area and Zone Elements -->

	<xsd:simpleType name="CommunityPlaceName_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A named area, sector,
				or development that is not an
				incorporated municipality or other
				governmental unit,
				such as a neighborhood in a city, or a rural
				settlement
				in unincorporated area. Often called "urbanization" in
				Puerto Rican addressing usage.

				1. "Urbanizacion", commonly used in
				urban areas of
				Puerto Rico, is an important part of the address.
				Street
				names and address ranges are often repeated in a city,
				especially where a city has annexed older towns; they
				are
				distinguished by their urbanizacion or community
				name.

				2. Certain
				other words can be used in place of
				"urbanizacion": extenciones,
				mansiones, reparto, villa,
				parque, jardine, altura, alturas, colinas,
				estancias,
				extension, quintas, sector, terraza, villa, villas.

				3. For
				more information on Puerto Rican addressing
				conventions, see USPS
				Publication 28 Section 29, and
				USPS "Addressing Standards for Puerto
				Rico and the
				Virgin Islands".
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".+" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="PlaceNameType_type">
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="USPSCommunity">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
						The name given by the
						U.S. Postal Service to the
						post office from which mail is delivered
						to the
						address. In many places this will be different
						from the name
						of the municipality in which the
						address is physically located.

						The
						name given by the U.S. Postal Service to the
						post office from which
						mail is delivered to the
						address. In many places this will be
						different
						from the name of the incorporated municipality
						in which
						the address is physically located.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="MunicipalJurisdiction">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
						The name of the
						municipality (city, township, or
						othe non-county local government)
						in which the
						address is physically located. In many places
						this will
						be different than the city name used
						by the U.S. Postal Service.

						Required by most local governments for tax and
						services
						determinations. This will be null for
						addresses in unincorporated
						portions of
						counties.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="County">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
						The primary
						administrative subdivision of a
						state in the United States.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:pattern value=".+"></xsd:pattern>
		</xsd:restriction>
	</xsd:simpleType>


	<xsd:simpleType name="StateName_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The primary legal
				subdivision of the United States,
				represented by its two letter USPS
				abbreviation.

				This is the only element stored in abbreviated form.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<!-- "US State and The District of Columbia"  Abbreviations -->
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="ZipCode_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A five-digit code that
				identifies a specific pseudo
				geographic delivery area. ZIP Codes can
				represent an
				area within a state, an area that crosses state
				boundaries (unusual condition) or a single building or
				company that
				has a very high mail volume. "ZIP" is an
				acronym for Zone Improvement
				Plan. Zero pad from the
				left to fill the range as in 01776.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value="[0-9]{5}" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="ZipPlus4_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A four-digit extension
				of the five-digit Zip Code that
				identifies a portion of a carrier
				route for USPS mail
				delivery. Zero pad from the left to fill the
				range as in
				0030.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value="[0-9]{4}" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="CountryName_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The name of the country
				in which the address is located.

				1.Although the scope of this
				standard is restricted to
				US addresses, this item is included for two
				reasons: to
				facilitate reconciliation with address standards of
				other
				nations, and to accommodate files which mix
				addresses from the US and
				other countries. 2. ISO 3166-1
				official short English names are
				specified because they
				a familiar and concise, and because ISO 3166-1
				is
				specified in the UPU address standard. 3. The names can
				be found
				at:
				http://www.iso.org/iso/en/prods-services/iso3166ma/02iso-3166-code-lists/list-en1.html
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="USPSBoxType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A box used for receipt
				of USPS mail. The box may be
				located in the post office lobby (e.g PO
				Box), on the
				customers premises or other USPS authorized place (e.g.
				rural route box).
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="USPSBoxId_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The numbers or letters
				distinguishing one box from
				another within a post office. May include
				slash, hyphen
				or period.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:complexType name="USPSBox_type">
		<xsd:annotation>
			<xsd:documentation>A container for the receipt of USPS mail uniquely
				identified by the combination of a USPS Box Type and a USPS Box ID.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="USPSBoxType" type="USPSBoxType_type"
				maxOccurs="1" minOccurs="1" />
			<xsd:element name="USPSBoxId" type="USPSBoxId_type"
				maxOccurs="1" minOccurs="1" />
		</xsd:sequence>
	</xsd:complexType>

	<xsd:simpleType name="USPSBoxGroupType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A collection of postal
				boxes served from a single
				distribution point.

				This group includes
				rural routes, highway contract
				routes, postal service centers,
				overseas military common
				mail rooms and military unit numbers.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="USPSBoxGroupId_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The numbers or letters
				distinguishing one group of boxes
				from another within a distribution
				point. May include
				hyphen, slash or period.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:complexType name="USPSRoute_type">
		<xsd:sequence>
			<xsd:element name="USPSBoxGroupType" type="USPSBoxGroupType_type"
				maxOccurs="1" minOccurs="1" />
			<xsd:element name="USPSBoxGroupId" type="USPSBoxGroupId_type"
				maxOccurs="1" minOccurs="1" />
		</xsd:sequence>
	</xsd:complexType>

	<xsd:complexType name="USPSAddress_type">
		<xsd:sequence>
			<xsd:element name="USPSRoute" type="USPSRoute_type"
				maxOccurs="1" minOccurs="1" />
			<xsd:element name="USPSBox" type="USPSBox_type"
				maxOccurs="1" minOccurs="1" />
		</xsd:sequence>
	</xsd:complexType>
	<xsd:simpleType name="USPSGeneralDeliveryPoint_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A central point where
				mail may be picked up by the
				addressee. Two values are permitted:
				"General Delivery"
				(for post offices), and ships names (for overseas
				military addresses).
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressAuthorityIdentifiertype_old">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A Concatenation of
				codes found in FIPS 5-2, 6-4, and
				55-3 data guides, with a locally
				defined code that MUST
				be defined in the metadata. The general format
				is
				(expressed as regular expressions)
				[0-9]{2}[0-9]{3}[0-9]{5}[0-9]{4}.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>


	<!-- Locational type -->

	<xsd:simpleType name="AddressXCoordinate_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The X coordinate of the
				address location.</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:double" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressYCoordinate_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The Y coordinate of the
				address location.</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:double" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressLongitude_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The longitude
				coordinate of the address location, noted
				in decimal degrees. For
				point and polygon features,
				coordinate pairs typically locate the
				point of
				assignment: a centroid point, a point locating the entry
				to a
				property, etc.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:double" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressLatitude_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The latitude coordinate
				of the address location, noted
				in decimal degrees. For point and
				polygon features,
				coordinate pairs typically locate the point of
				assignment: a centroid point, a point locating the entry
				to a
				property, etc.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:double" />
	</xsd:simpleType>

	<xsd:simpleType name="LocationUSNG_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The USNG or US National
				Grid is an alphanumeric
				reference system that overlays the Universal
				Transverse
				Mercator (UTM) numerical coordinate system. A USNG
				coordinate consists of three parts, the:

				1. Grid Zone Designation
				(GZD) for worldwide unique
				geoaddresses (two digits plus one letter,
				developed from
				the UTM system).

				2. 100,000-meter Square Identification
				for regional
				areas (two letters).

				3. Grid Coordinates for local areas
				(always an even
				number of digits between 2 and 10 depending upon
				precision necesary to uniquely identify the location).
				Look to
				www.fgdc.gov/standards/status/usng.html for a
				normative definition.
				Adapted from US National Grid, FDGC-STD-011-2001, Section 3.3
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressElevation_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">Distance of the address
				in specified units above or below a vertical datum, as defined by a
				specified coordinate reference system. </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:double" />
	</xsd:simpleType>
	<xsd:simpleType name="AddressZLevel_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Floor or level of the
				structure. The lowest level of a building is 1, and ascending
				numbers are assigned in order to each higher level.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressCoordinateReferenceSystemID_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A name or number which,
				along with the Address Coordinate Reference System Authority,
				identifies the coordinate reference system to which Address X
				Coordinate and Address Y Coordinate. Address Latitude and Address
				Longitude, US National Grid Coordinate, or Address Elevation values
				are referenced. </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:integer" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressCoordinateReferenceSystemAuthority_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The Authority that
				assigns the unique Address Coordinate Reference System ID (number or
				name) to the Address Coordinate Reference System to which the
				Address X Coordinate and Address Y Coordinate, Address Latitude and
				Address Longitude, US National Grid Coordinate, or Address Elevation
				are referenced. </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:complexType name="AddressCoordinateReferenceSystem_type">
		<xsd:sequence>
			<xsd:element name="AddressCoordinateReferenceSystemAuthority"
				type="AddressCoordinateReferenceSystemAuthority_type" />
			<xsd:element name="AddressCoordinateReferenceSystemID"
				type="AddressCoordinateReferenceSystemID_type"></xsd:element>
		</xsd:sequence>
	</xsd:complexType>

	<!-- Non Locational Elements -->

	<xsd:simpleType name="AddressID_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The unique
				identification number assigned to an address by the addressing
				authority. The ID number must be unique for each address assigned by
				an addressing authority.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemId_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A unique identifier of
				the Address Reference System for a specified area (Address Reference
				System Extent). </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:integer" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemName_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The name of the address
				system used in a specified area (Address Reference System Extent).
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemAuthority_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The Authority that
				assigns the unique Address Coordinate Reference System ID (number or
				name) to
				the Address Coordinate Reference System to which the Address X
				Coordinate and Address Y
				Coordinate, Address Latitude and Address Longitude, US National Grid
				Coordinate, or Address Elevation are referenced. 
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemExtent_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">Boundary of the area(s)
				within which an Address Reference System is used.
			</xsd:documentation>
		</xsd:annotation>		
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The category of address
				reference system in use. The
				type of reference system determines and
				guides the
				assignment of numbers within the Address Reference
				System
				Extent.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="Axial"></xsd:enumeration>
			<xsd:enumeration value="Grid"></xsd:enumeration>
			<xsd:enumeration value="Radial"></xsd:enumeration>
			<xsd:enumeration value="Linear Non-Axial"></xsd:enumeration>
			<xsd:enumeration value="Distance"></xsd:enumeration>
			<xsd:enumeration value="Area Based"></xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:complexType name="AddressReferenceSystemRules_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The rules by which
				address numbers, street names and
				other components of a thoroughfare
				address are
				determined.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="AddressReferenceSystemBlockRules"
				type="AddressReferenceSystemBlockRules_type" minOccurs="0"
				maxOccurs="unbounded"></xsd:element>
			<xsd:element name="AddressReferenceSystemNumberingRules"
				type="AddressReferenceSystemNumberingRules_type"
				minOccurs="0" maxOccurs="unbounded"></xsd:element>
			<xsd:element name="AddressReferenceSystemStreetNamingRules"
				type="AddressReferenceSystemStreetNamingRules_type"
				minOccurs="0" maxOccurs="unbounded"></xsd:element>
			<xsd:element
				name="AddressReferenceSystemStreetTypeDirectionalAndModfierRules"
				type="AddressReferenceSystemStreetTypeDirectionalAndModifierRules_type"
				minOccurs="0" maxOccurs="unbounded"></xsd:element>
			<xsd:element
				name="AddressReferenceSystemPlaceNameStateCountyAndZipCodeRules"
				type="AddressReferenceSystemPlaceNameStateCountryAndZipCodeRules_type"
				minOccurs="0" maxOccurs="unbounded"></xsd:element>
			<xsd:element name="AddressReferenceSystemSubaddressRules"
				type="AddressReferenceSystemSubaddressRules_type"
				minOccurs="0" maxOccurs="unbounded"></xsd:element>
		</xsd:sequence>
	</xsd:complexType>

	<xsd:simpleType name="AddressReferenceSystemBlockRules_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">This element defines a
				block in an Address Reference System, and sets forth the rules for
				block ranges and block breaks. </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemNumberingRules_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The rules for numbering
				along a thoroughfare, including parity (odd/even side definition),
				and numbering increment distance and value.</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemStreetNamingRules_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The rules for the
				selection and use of street names within an Address Reference System
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType
		name="AddressReferenceSystemStreetTypeDirectionalAndModifierRules_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">Rules pertaining to the
				use of street types (suffix and prefix), directionals (prefix and
				suffix), and modifiers (prefix and suffix) of street names.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType
		name="AddressReferenceSystemPlaceNameStateCountryAndZipCodeRules_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">This element contains
				rules for the use of place names, state names, country names, and
				ZIP Codes within the jurisdiction of an Address Authority.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemSubaddressRules_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The rules that are
				applied to the addressing of areas within structures as subaddresses
				(units, suites, apartments, spaces, etc.) within a given Address
				Reference System</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemAxis_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The line that defines the points of origin for address numbering along thoroughfares that intersect it, or which are numbered in parallel to streets that
	intersect it. It may be a road, another geographic feature, or an
				imaginary line.</xsd:documentation>
		</xsd:annotation>
		
			<xsd:restriction base="xsd:string">
			</xsd:restriction>
		
	</xsd:simpleType>

	<xsd:simpleType name="AddressReferenceSystemAxisPointOfBeginning_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">Coordinate location of the beginning point of address numbering along an Address Reference System Axis. </xsd:documentation>
		</xsd:annotation>
		
			<xsd:restriction base="xsd:string"></xsd:restriction>
		
	</xsd:simpleType>

	<xsd:complexType name="AddressReferenceSystemGridAngle_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The degree to which a specific, named address grid is tilted off a north/south or east/west orientation.  </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:double"></xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>
	
	<xsd:complexType name="AddressReferenceSystemReferencePolyline_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A street, geometric
				line, or other line used to measure address number assignment
				intervals and ranges within an Address Reference System. The Address
				Reference System Reference Polyline may consist of a beginning
				point, one or more segments of a street centerline, geographically
				identified line, such as a line of latitude or longitude, a
				land-division based line, such as a township, range, or section
				line, or an imaginary line constructed for the purpose of allocating
				address ranges and address numbers.</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string"></xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="AddressReferenceSystemRangeBreakpoint_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A point along a street
				or other thoroughfare within an Address Reference System where an
				address range beginning and/or endpoint is located.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string"></xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="AddressReferenceSystemRangeBreakline_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A line connecting the
				Address Reference System Range Breakpoints with the same value
				within an Address Reference System</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string"></xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="AddressReferenceSystemRangePolygon_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A line connecting the
				Address Reference System Range Breakpoints with the same value
				within an Address Reference System</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string"></xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:simpleType name="AddressReferenceSystemReferenceDocumentCitation_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">A bibliographic
				reference to an ordinance, map, manual, or other document in which
				the rules governing an Address Reference System are written.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>

	<xsd:complexType name="AddressReferenceSystem_type">
		<xsd:annotation>
			<xsd:documentation>An Address Reference System is a set of rules and
				geometries that define how addresses are
				assigned along thoroughfares and/or within a given area (Address Reference
				System Extent).
				At minimum, an Address Reference System must specify where Complete
				Address Number sequences
				begin and how Complete Address Numbers are assigned along the length of
				thoroughfares governed by
				the Address Reference System within the Address Reference System
				Extent. Address Reference Systems
				typically provide rules governing left-right parity of Complete Address
				Numbers, assignment of Street Names
				and street types, use of directionals and quadrants, and other aspects
				of address assignment.An Address
				Reference System that is based on axis lines, an Address Reference System
				Axis defined for each axis used
				to define address assignment. Each Address Reference System Axis must
				have an identified Address Reference
				System Axis Point Of Beginning. An Address Reference System is known by
				its Address Reference System
				Name (required). Additional business rules for an Address Reference
				System are described in the Address Reference
				System Rules. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="AddressReferenceSystemId"
				type="AddressReferenceSystemId_type" maxOccurs="1"
				minOccurs="1" />
			<xsd:element name="AddressReferenceSystemName"
				type="AddressReferenceSystemName_type" maxOccurs="1"
				minOccurs="1" />
			<xsd:element name="AddressReferenceSystemAuthority"
				type="AddressReferenceSystemAuthority_type" maxOccurs="1"
				minOccurs="0" />
			<xsd:element name="AddressReferenceSystemExtent"
				type="AddressReferenceSystemExtent_type" maxOccurs="1"
				minOccurs="0" />
			<xsd:element name="AddressReferenceSystemType"
				type="AddressReferenceSystemType_type" maxOccurs="1"
				minOccurs="0" />
			<xsd:element name="AddressReferenceSystemRules"
				type="AddressReferenceSystemRules_type" maxOccurs="1"
				minOccurs="0" />
			<xsd:element name="AddressReferenceSystemAxis"
				type="AddressReferenceSystemAxis_type" maxOccurs="1"
				minOccurs="0" />
			<xsd:element name="AddressReferenceSystemAxisPointOfBeginning"
				type="AddressReferenceSystemAxisPointOfBeginning_type"
				maxOccurs="1" minOccurs="0" />
			<xsd:element name="AddressReferenceSystemReferencePolyline"
				type="AddressReferenceSystemReferencePolyline_type"
				maxOccurs="unbounded" minOccurs="0" />
			<xsd:element name="AddressReferenceSystemRangeBreakpoint"
				type="AddressReferenceSystemRangeBreakpoint_type"
				maxOccurs="1" minOccurs="0" />
			<xsd:element name="AddressReferenceSystemRangeBreakline"
				type="AddressReferenceSystemRangeBreakline_type"
				maxOccurs="unbounded" minOccurs="0" />
			<xsd:element name="AddressReferenceSystemReferenceDocumentCitation"
				type="AddressReferenceSystemReferenceDocumentCitation_type"
				maxOccurs="unbounded" minOccurs="0" />
		</xsd:sequence>
	</xsd:complexType>


	<xsd:complexType name="RelatedAddressID_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The identifier of an
				address that is related to the
				identifier of another address.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="AddressID_type">
				<xsd:attribute name="AddressRelationType"
					type="AddressRelationType_type" />
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:simpleType name="AddressRelationType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The manner in which an
				address identified by a RelatedAddressID is related to an address
				identified by an AddressID. 
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="RelatedTransportationFeatureId_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The unique identifier
				assigned (within the reference transportation base model) to a
				transportation feature to which an address is related. see U.S.
				Federal Geographic Data Committee, "Framework Data Content Standard
				Part 7: Transportation base."
				"Framework Data Content Standard Part 7c: Roads." 
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressTransportationFeatureId_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The unique identifier
				assigned to the particular feature that represents an address within
				a transportation base model. see U.S. Federal Geographic Data
				Committee, "Framework Data Content Standard Part 7: Transportation
				base."
				"Framework Data Content Standard Part 7c: Roads." 
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressTransportationFeatureType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The type of
				transportation feature (TranFeature) used to represent an address.
				For transportation features generally: U.S. Federal Geographic Data
				Committee, "Framework Data Content Standard Part 7: Transportation
				base."
				For roads features only: U.S. Federal Geographic Data Committee,
				"Framework Data Content Standard Part 7: Transportation base," as
				extended by "Framework Data Content Standard Part 7c: Roads."
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressTransportationSystemAuthority_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The authority that
				maintains the transportation base model specified by the Address
				Transportation System Name, and assigns Address Transportation
				Feature I Ds to the features it represents. 
</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressTransportationSystemName_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The name of the
				transportation base model to which the address is related.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressParcelIdentifier_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The primary permanent
				identifier, as defined by the Address Parcel Identifier Source, for
				a parcel that includes the land or feature identified by an address.
				A parcel is &quot;a single cadastral unit, which is the spatial
				extent of the past, present, and future rights and interests in real
				property.&quot;
				Definition source for &quot;parcel identifier&quot;: Adapted from FGDC, May
				2008. &quot;Geographic Information Framework Data Content Standard
				Part 1: Cadastral.&quot; Section 4.2.
				Definition source for &quot;parcel&quot;: FGDC, May 2008. &quot;Cadastral Data
				Content Standard for the National Spatial Data Infrastructure.&quot;
				Vesion 1.4 – Fourth Revision. p. 45. (Part 3.2 &quot;Parcel)
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressParcelIdentifierSource_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">The permanent
				identifier for the agency, organization, or jurisdiction that
				assigns and maintains the Address Parcel Identifier.
				Definition source: FGDC, May 2008. &quot;Geographic Information Framework Data
				Content Standard Part 1: Cadastral.&quot; Section 4.7.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressUUId_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The unique
				identification number assigned to an address
				by the addressing
				authority. The ID number must be
				unique for each address assigned by
				an addressing
				authority. This, combined with the FIPS number of the
				addressing authority, can provide a unique ID for every
				address in
				the US.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AssociatedAddressId_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The unique
				identification number of and address related to this one.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="MailableAddress_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Identifies whether an
				addresses receives USPS mail
				delivery (that is, the address is
				occupiable, and the
				USPS provides provides on-premises USPS mail
				delivery to
				it).
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
			<xsd:enumeration value="Yes">
				<xsd:annotation>
					<xsd:documentation>The USPS delivers mail to this address.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="No">
				<xsd:annotation>
					<xsd:documentation>The USPS does not deliver mail to this address.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Unknown">
				<xsd:annotation>
					<xsd:documentation>It is unknown whether the USPS delivers mail to
						this address.</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressSideOfStreet_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The side of the
				transportation segment (right , left,
				both, none, unknown) on which
				the address is located.
				U.S. Federal Geographic Data Committee,
				"Framework Data
				Content Standard Part 7: Transportation base,"
				sections
				7.3.2 and B.3.6
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
			<xsd:enumeration value="right">
				<xsd:annotation>
					<xsd:documentation>
						The address is related to the right side of the
						street.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="left">
				<xsd:annotation>
					<xsd:documentation>
						The address is realted to the left side of the
						street.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="both">
				<xsd:annotation>
					<xsd:documentation>
						The address pertains to both sides of the
						street.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="none">
				<xsd:annotation>
					<xsd:documentation>The address is not on either or both sides of
						the street or the concept of side of street does not apply to the
						address.
						For instance an intersection address would have a AddressSideOfStreet
						of none.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unknown"></xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressRangeSide_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The side of the
				transportation segment (right , left,
				both, none, unknown) on which
				the address range applies.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
			<xsd:enumeration value="right">
				<xsd:annotation>
					<xsd:documentation>
						The address is related to the right side of the
						street.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="left">
				<xsd:annotation>
					<xsd:documentation>
						The address is realted to the left side of the
						street.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="both">
				<xsd:annotation>
					<xsd:documentation>
						The address pertains to both sides of the
						street.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="none">
				<xsd:annotation>
					<xsd:documentation>The address is not on either or both sides of
						the street or the concept of side of street does not apply to the
						address.
						For instance an intersection address would have a AddressSideOfStreet
						of none.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unknown"></xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>


	<xsd:simpleType name="AddressRangeParity_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The set of Address
				Number Parity values specified in the Address Reference System
				Numbering Rules for the Address Numbers in an address range.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
			<xsd:enumeration value="even">
				<xsd:annotation>
					<xsd:documentation>
						All Address Numbers in the range have an Address
						Number Parity of "even".
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="odd">
				<xsd:annotation>
					<xsd:documentation>
						All Address Numbers in the range have an Address
						Number Parity of "odd".
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="both">
				<xsd:annotation>
					<xsd:documentation>
						Both even and odd Address Numbers are found in
						the range.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="none">
				<xsd:annotation>
					<xsd:documentation>
						No Address Number is found within the range.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unknown">
				<xsd:annotation>
					<xsd:documentation>The parity of the Address Numbers in the range
						in not known. </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>


	<xsd:simpleType name="OfficialStatus_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Whether the address,
				street name, landmark name, or
				place name is as given by the official
				addressing
				authority (official), or an alternate or alias (official
				or unofficial), or a verified error.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
			<xsd:enumeration value="Official">
				<xsd:annotation>
					<xsd:documentation>
						The address or name as designated by the Address
						Authority.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Alternate or Alias">
				<xsd:annotation>
					<xsd:documentation>
						An alternate or alias to the official address or
						name that is also in official or popular use.
						The Related Address
						ID can be used to link an
						alternate or alias to the Address ID of
						the
						official address. There are two types of
						alternate or alias
						names, official and
						unofficial, each of which has subtypes.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Official Alternate or Alias">
				<xsd:annotation>
					<xsd:documentation>
						These are alternate names designated by an
						official Address Authority.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Official Renaming Action of the Address Authority">
				<xsd:annotation>
					<xsd:documentation>An Address Authority may replace one address or
						name with another, e.g. by renaming or renumbering. The prior,
						older address should be retained as an alias, to provide for
						conversion to the new address.</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Alternates Established by an Address Authority">
				<xsd:annotation>
					<xsd:documentation>An Address Authority may establish a name or
						number to be used in addition to the official address or name. For
						example, a state highway designation (State Highway 7) may be
						given to a locally-named road, or a memorial name may be applied
						to an existing street by posting an additional sign, while the
						local or original name and addresses continue to be recognized as
						official.</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Unofficial Alternate or Alias">
				<xsd:annotation>
					<xsd:documentation>
						These are addresses or names that are used by
						the public or by an individual, but are not
						recognized as official
						by the Address Authority.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration
				value="Alternate Names Established by Colloquial Use in a Community">
				<xsd:annotation>
					<xsd:documentation>An address or name that is in popular use but is
						not the official name or an official alternate or alias.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Unofficial Alternate Names Frequently Encountered">
				<xsd:annotation>
					<xsd:documentation>In data processing, entry errors occur. Such
						errors if frequently encountered may be corrected by a direct
						match of the error and a substitution of a correct name.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration
				value="Unofficial Alternate Names In Use by an Agency or Entity">
				<xsd:annotation>
					<xsd:documentation>For data processing efficiency, entities often
						create alternate names or abbreviations for internal use. These
						must be changed to the official form for public use and
						transmittal to external users.</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Posted or Vanity Address">
				<xsd:annotation>
					<xsd:documentation>An address that is posted, but is not recognized
						by the Address Authority (e.g. a vanity address on a building);
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Verified Invalid">
				<xsd:annotation>
					<xsd:documentation>
						An address that has been verified as being
						invalid, but which keeps appearing in address
						lists. Different from
						Unofficial Alternate Names
						in that these addresses are known not to
						exist.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressStartDate_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The earliest date on
				which the address is known to
				exist.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:date" />
	</xsd:simpleType>

	<xsd:simpleType name="AddressEndDate_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The earliest date on
				which the address is known to no
				longer be valid.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:date" />
	</xsd:simpleType>

	<xsd:simpleType name="DataSetID_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The locally defined ID for the DataSet.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string" />
	</xsd:simpleType>


	<xsd:simpleType name="AddressClassification_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The type or
				classification of the address according to
				the classification
				standard.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="NumberedThoroughfareAddress"></xsd:enumeration>
			<xsd:enumeration value="IntersectionAddress"></xsd:enumeration>
			<xsd:enumeration value="TwoNumberAddressRange"></xsd:enumeration>
			<xsd:enumeration value="FourNumberAddressRange"></xsd:enumeration>
			<xsd:enumeration value="UnnumberedThoroughfareAddress"></xsd:enumeration>
			<xsd:enumeration value="LandmarkAddress"></xsd:enumeration>
			<xsd:enumeration value="CommunityAddress"></xsd:enumeration>
			<xsd:enumeration value="USPSPostalDeliveryBox"></xsd:enumeration>
			<xsd:enumeration value="USPSPostal DeliveryRoute"></xsd:enumeration>
			<xsd:enumeration value="USPSGeneral DeliveryOffice"></xsd:enumeration>
			<xsd:enumeration value="GeneralAddressClass"></xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressFeatureType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The type of feature
				identified by the address

				Initial list of feature types: Building
				Utility Cabinet,
				Telephone Pole, Building, Street block, street block
				face, intersection, parcel, building, entrance, unit.
				The list might
				be expanded indefinitely to include
				infrastructure and other
				features.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".+" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressLifecycle_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The Lifecycle status of
				the address.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="PROPOSED" />
			<xsd:enumeration value="ACTIVE" />
			<xsd:enumeration value="RETIRED" />
			<xsd:enumeration value="TEMPORARY" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressLifecycleStatus_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The life cycle status
				of the address.

			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="Potential">
				<xsd:annotation>
					<xsd:documentation>
						Address falls within a theoretical range, but
						has never been used.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Proposed">
				<xsd:annotation>
					<xsd:documentation>
						Application pending for use of this address
						(e.g., address tentatively issued for
						subdivision plat that is not
						yet fully
						approved).
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Active">
				<xsd:annotation>
					<xsd:documentation>
						Address has been issued and is in use.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Retired">
				<xsd:annotation>
					<xsd:documentation>
						Address was issued, but is now obsolete (e.g.
						street name has been changed), building was
						demolished, etc.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>


	<xsd:simpleType name="AddressOfficialStatus_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Whether the address is
				as given by the official
				addressing authority (official), or an
				unofficial
				variant or equivalent of it (alias).
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="Official">
				<xsd:annotation>
					<xsd:documentation>
						The address or name as designated by the
						addressing authority.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Alternate Name">
				<xsd:annotation>
					<xsd:documentation>
						In any of the address classes described in 2.2,
						the collective name element may have another
						acceptable form. Some
						alternate names may be
						conditional, on attempt, ie if the alias
						resolves the address no further alternate names
						should be
						considered. Other alternate names are
						always applied, such as
						official renamings. All
						alternate names carry a limit of
						applicability
						and a timeframe of applicability. The limit of
						appicability may be a limit to a single zipcode,
						a naming
						authorities boundary, such as city or
						county limits, or a range of
						address numbers
						with such a boundary.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Alternate Renamed">
				<xsd:annotation>
					<xsd:documentation>
						Upon official renaming of an address, or
						renumbering of an address, or a series of
						addresses, the prior,
						older address will occur
						in address lists for a period of time and
						a
						conversion to current names or current addresses
						will need to be
						provided. Such an entity may
						match a single address or a range of
						addresses.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Alternate Authority Name">
				<xsd:annotation>
					<xsd:documentation>
						The alternate name is established by a separate,
						or the same, naming authority. Such names may
						apply to any address
						class, including landmarks.
						Such names would be established by
						naming
						authorities with a geographically larger area of
						responsibility, containing all or part of a
						naming authority with a
						smaller region, such as
						a state name overlaying a county name or a
						county name overlaying a city or town name.
						Examples would be a
						state highway designation
						(State Highway 7) overlaid upon locally
						named
						roads or a memorial highway overlaid on local
						road names or
						state highway names.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Alternate Colloquial Name">
				<xsd:annotation>
					<xsd:documentation>
						Local communities hold on to address names much
						longer than do regional agencies. A community
						may use a colloquial
						address name as much as 30
						years after that name has either expired
						or is
						no longer salient. This entry provides a
						conversion to a
						current name.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Unoffical Alternate Name">
				<xsd:annotation>
					<xsd:documentation>
						In data processing, entry errors occur. Such
						errors if frequently encountered may be
						corrected by a direct match
						of the error and a
						substitution to a current name.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Unofficial Agencys Name">
				<xsd:annotation>
					<xsd:documentation>
						For data processing efficiency, entities often
						create alternate names for internal use. When
						such alternate names
						are exposed to other
						entities they need to be resolved to a current
						name.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Posted Address">
				<xsd:annotation>
					<xsd:documentation>
						Address is posted, but not recognized by
						addressing authority (e.g. vanity address on a
						building).
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Verified Invalid">
				<xsd:annotation>
					<xsd:documentation>
						Address is verified as being invalid, but keeps
						appearing in address lists. Different from
						Unoffical Altername
						Names in that these are
						known not to exist;Address has been issued
						and
						is in use.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:pattern value=".+"></xsd:pattern>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressAnomalyStatus_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A status flag, or an
				explanatory note, for an address
				that is not correct according to the
				address schema in
				which it is located, but is nonetheless a valid
				address.
				This field may be used to identify the type of anomaly
				(e.g.
				wrong parity, out of sequence, out of range, etc.)
				rather than simply
				whether or not it is anomalous. Local
				jurisdictions may create
				specific categories for
				anomalies.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string"></xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressRangeSpan_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Whether an address
				range covers part of a transportation
				segment, one segment, multiple
				segments, or the entire
				thoroughfare within the Address Reference
				System Extent.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="Partial Segment"></xsd:enumeration>
			<xsd:enumeration value="Single Segment"></xsd:enumeration>
			<xsd:enumeration value="Multi Segment"></xsd:enumeration>
			<xsd:enumeration value="Entire Street"></xsd:enumeration>
			<xsd:enumeration value="Unknown"></xsd:enumeration>
			<xsd:pattern value=".+"></xsd:pattern>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressRangeDirectionality_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Whether the low
				Complete Address Number of an address range is closer to the
				from-node or the to-node of the transportation segment(s) that the
				range is related to. 
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="With">
				<xsd:annotation>
					<xsd:documentation>The low address is nearer the from node; numbers
						ascend toward the to node.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Against">
				<xsd:annotation>
					<xsd:documentation>The low address is nearer the to node; numbers
						descend toward the to node. 
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="With-Against">
				<xsd:annotation>
					<xsd:documentation>The numbers run in opposite directions on either
						side of the street. The low number on the left side is nearer the
						from node. The low number on the right side is nearer the to node.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Against-With">
				<xsd:annotation>
					<xsd:documentation>The numbers run in opposite directions on either
						side of the street. The low number on the left side is nearer the
						to node. The low number on the right side is nearer the from node.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Null">
				<xsd:annotation>
					<xsd:documentation>The address range has null values for the high
						and low Complete Address Numbers. 
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="NA">
				<xsd:annotation>
					<xsd:documentation>Does not apply (transportation segment
						directionality is inconsistent within the range).
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Unknown">
				<xsd:annotation>
					<xsd:documentation>The address range directionality is not known.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressRangeType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">This attribute states
				whether an address range (either a Two Number Address Range or a
				Four Number Address Range) is actual or potential.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="Actual">
				<xsd:annotation>
					<xsd:documentation>
						The low and high CompleteAddressNumbers are
						numbers that have been assigned and are in use
						along the addressed
						feature.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Potential">
				<xsd:annotation>
					<xsd:documentation>
						The low and high CompleteAddressNumbers are
						numbers that would be assigned if all possible
						numbers were in use
						along the addressed feature,
						and there were no gaps between the
						range and its
						preceding and following ranges.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Unknown">
				<xsd:annotation>
					<xsd:documentation>
						The relationship between the low and high
						CompleteAddressNumbers and the addressed feature
						is unknown.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>


	<xsd:simpleType name="LocationDescription_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A text description
				providing more detail on how to
				identify or find the addressed
				feature.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string"></xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressNumberParity_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en"> The property of an
				Address Number with respect to being odd or even.
				"A relation between a pair of integers: if both integers
				are odd or
				both are even they have the same parity; if
				one is odd and the other
				is even they have different
				parity."
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="Even" />
			<xsd:enumeration value="Odd" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AttachedElement_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				This attribute
				identifies when two or more Complete
				Address Number elements or two
				or more Complete Street
				Name elements have been combined without a
				space
				separating them.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="Attached">
				<xsd:annotation>
					<xsd:documentation>
						The elements inside the CompleteAddressNumber or
						CompleteStreetName are attached and need special
						parsing rules.
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Not Attached"></xsd:enumeration>
			<xsd:enumeration value="Unknown"></xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressNumberSide_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				"The Concept of Left
				and Right sides of a feature that a Number Range Applies to.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="Left" />
			<xsd:enumeration value="Right" />
			<xsd:enumeration value="Unknown" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressNumberBounds_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				"The Concept of Low or
				High of numbers participating in a Number Range Applies to.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="Low" />
			<xsd:enumeration value="High" />
			<xsd:enumeration value="Unknown" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:complexType name="StreetNameGroup">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A geographic area where
				the street names conform to a
				theme. For example, some neighborhoods
				feature streets
				named for birds, US presidents or trees. A subset of
				the
				complete street name domain applies to this area.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="name" type="xsd:string"></xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:simpleType name="AddressSchemeName_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Name of the address
				scheme that operates over a
				specified area, i.e.: mountain addresses,
				plains
				addresses.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressSchemeDescription_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				A description of an
				Address Scheme that includes
				business rules about parity, naming
				conventions, and
				other matters concerning the assignment and
				maintenance
				of an addressing scheme.

				This element may refer to an
				address ordinance, Standard
				Operating Procedures manual or other
				external document
				wherein the rules for addresses in a given scheme
				are
				written.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<!-- add  axes name as an attribute  -->
	<!-- change data type to GML::Point -->
	<xsd:complexType name="AddressSchemeOrigin_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Location where the
				address axes meet.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="OriginValue" type="xsd:int"></xsd:attribute>
				<xsd:attribute name="AxisId" type="xsd:string"></xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="AddressSchemeAxes_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Address axes define the
				boundaries between adjoining
				zones in address schema. Those zones may
				be quadrants
				(northwest, northeast, southeast, southwest) or other
				geographic divisions. Lowest address numbers occur
				nearest an axis.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="AxisId" type="xsd:string"></xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="AddressSchemeExtent_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Boundary of the area
				over which an address schema
				is used when assiging addresses.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string" />
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:simpleType name="AddressDirectSource_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Source from whom the
				data provider obtained the address,
				or with whom the data provider
				validated the address.
				Important if the data provider did not obtain
				the
				address directly from the local authority.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="AddressAuthority_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The authority (e.g.,
				municipality, county) that created
				or has jurisdiction over the
				creation of an address.

				The addressing authority may or may not be
				the same as
				the physical or postal jurisdiction noted for the
				address.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="AddressAuthorityIdentifier_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The FIPS or GNIs code
				for the authority (e.g.,
				municipality, county) that created or has
				jurisdiction
				over the creation of an address.

				The addressing authority
				may or may not be the same as
				the physical or postal jurisdiction
				noted for the
				address.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>
	<!-- Complex Types -->


	<xsd:simpleType name="Action_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				An action command for
				incremental datasets. Add
				indicates that the information is new.
				DELETE indicates
				that the information is to be removed.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="ADD" />
			<xsd:enumeration value="DELETE" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:simpleType name="DeliveryAddressType_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Whether the Delivery Address includes or excludes the Complete Subaddress.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:token">
			<xsd:enumeration value="SubAddress Included">
				<xsd:annotation>
					<xsd:documentation>The Delivery Address includes the Complete
						Subaddress (if any) </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="SubAddres Excluded">
				<xsd:annotation>
					<xsd:documentation>The Delivery Address includes the Complete
						Subaddress (if any) </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="Unstated">
				<xsd:annotation>
					<xsd:documentation>Not stated/no information (default value)
					</xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>

	<!--  Complex Elements -->

	<xsd:complexType name="DeliveryAddress_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The entire address, unparsed, except for the Place Name, State Name,
				Zip Code, Zip Plus 4, Country Name, and, optionally,
				Complete Subaddress elements.  
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="DeliveryAddressType"
					type="DeliveryAddressType_type" />
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>
	
	<xsd:simpleType name="PlaceStateZip_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				The unparsed
				accumulation of Postal City, State, and
				ZIPCode elements.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:pattern value=".*" />
		</xsd:restriction>
	</xsd:simpleType>

	<xsd:complexType name="FeatureOccupancy_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				This element is defined
				solely for use with the General
				Address class, which is constructed
				to accommodate and
				mix addresses of all types (e.g., a general postal
				mailing list or contact list). Place Name, State Name,
				Zip Code, and
				Zip Plus 4, which appear in all address
				classes, are kept separate
				from the rest of the address.
				No longer a parsed datatype. Content
				still represents it
				as such.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string"></xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>


	<xsd:complexType name="GeneralAddress_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				This element is defined
				solely for use with the General
				Address class, which is constructed
				to accommodate and
				mix addresses of all types (e.g., a general postal
				mailing list or contact list). Place Name, State Name,
				Zip Code, and
				Zip Plus 4, which appear in all address
				classes, are kept separate
				from the rest of the address.
				No longer a parsed datatype. Content
				still represents it
				as such.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string" />
		</xsd:simpleContent>
	</xsd:complexType>

	<!--        -->
	<xsd:complexType name="LocationXY_type">
		<xsd:sequence>
			<xsd:element name="X" type="AddressXCoordinate_type"
				minOccurs="1" maxOccurs="1" />
			<xsd:element name="Y" type="AddressYCoordinate_type"
				minOccurs="1" maxOccurs="1" />
		</xsd:sequence>
	</xsd:complexType>

	<xsd:complexType name="LocationLongLat_type">
		<xsd:sequence>
			<xsd:element name="Longitude" type="AddressLongitude_type"
				minOccurs="1" maxOccurs="1" />
			<xsd:element name="Latitude" type="AddressLatitude_type"
				minOccurs="1" maxOccurs="1" />
		</xsd:sequence>
	</xsd:complexType>

	<xsd:complexType name="Location_type">
		<xsd:sequence>
			<xsd:element name="USNGCoordinate" type="LocationUSNG_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="LongLat" type="LocationLongLat_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="XYCoordinate" type="LocationXY_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AdressZLevel" type="AddressZLevel_type"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
	</xsd:complexType>

	<xsd:complexType name="CompleteStreetName_type">
		<xsd:sequence>
			<xsd:element name="StreetNamePreModifier" type="StreetNamePreModifier_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetNamePreDirectional" type="StreetNamePreDirectional_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetNamePreType" type="StreetNamePreType_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetName" type="StreetName_type"
				minOccurs="1" maxOccurs="1" />
			<xsd:element name="StreetNamePostType" type="StreetNamePreType_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetNamePostDirectional" type="StreetNamePreDirectional_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetNamePostModifier" type="StreetNamePreModifier_type"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="AttachedElement" type="AttachedElement_type" />
	</xsd:complexType>

	<xsd:group name="CompleteStreetName_group">
		<xsd:sequence>
			<xsd:element name="StreetNamePreModifier" type="StreetNamePreModifier_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetNamePreDirectional" type="StreetNamePreDirectional_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetNamePreType" type="StreetNamePreType_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetName" type="StreetName_type"
				minOccurs="1" maxOccurs="1" />
			<xsd:element name="StreetNamePostType" type="StreetNamePreType_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetNamePostDirectional" type="StreetNamePreDirectional_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="StreetNamePostModifier" type="StreetNamePreModifier_type"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
	</xsd:group>
	
	<xsd:group name="CompleteAddressNumber_group">
        <xsd:annotation>
        	<xsd:documentation>The portion of the Complete Address Number which follows the Address Number itself. 

1. The Address Number element is required to compose a Complete Address Number. The other elements are optional.
2. The Address Number must be converted from integer to characterString when constructing the Complete Address Number.
3. The great majority of Complete Address Numbers are simple integers. Infrequently the integer is followed by an alphanumeric Address Number Suffix, typically a letter or a fraction. Even more rarely the integer is preceded by an alphanumeric Address Number Prefix. In addition to the typical numbering format, four special-case formats are found in the United States: Milepost addresses, grid-style address numbers, hyphenated address numbers, and other Address Number Prefix letters or symbols.
4. Milepost Complete Address Numbers (Example: "Milepost 240"). Road mileposts are sometimes used to specify locations along highways and similar roads. Mileposts are often used to locate, for example, crash sites, emergency call boxes, bridge locations, inspection stations, roadside rest stops, railroad crossings, highway exits, park and campground entrances, RV parks, and truck stops. Milepost addresses should be parsed as follows:
---"Milepost" (or equivalent word or phrase, such as "kilometer" or "Mile Marker") is an Address Number Prefix
---The milepost number (integer part only) is an Address Number
---Tenths, if given, are an Address Number Suffix, including the decimal point.
---The road name or highway route number is a Complete Street Name, and parsed accordingly
Note that, in Puerto Rico, road measurements are given in kilometers (km), which are sometimes divided into hectometers (hm).
5. Grid-style Complete Address Numbers (Example: "N89W16758"). In certain communities in and around southern Wisconsin, Complete Address Numbers include a map grid cell reference preceding the Address Number. In the examples above, "N89W16758" should be read as "North 89, West 167, Address Number 58". "W63N645" should be read as "West 63, North, Address Number 645." The north and west values specify a locally-defined map grid cell with which the address is located. Local knowledge is needed to know when the grid reference stops and the Address Number begins.
6. Hyphenated Complete Address Numbers (Example: "5-5415"). In some areas (notably certain parts of New York City, southern California, and Hawaii), Complete Address Numbers often include hyphens. Hyphenated Complete Address Numbers should not be confused with Two Number Address Ranges. The former is a single Complete Address Number while the latter includes two Complete Address Numbers.
7. Hyphenated Complete Address Numbers can be parsed so that the number indicating the site or structure is the Address Number, and the remainder (including the hyphen) is the Address Number Prefix or Address Number Suffix.
8. In New York City, hyphenated Complete Address Numbers (the recommended format for storing complete address numbers in New York City) follow a more complex set of rules. The number to the left of the hyphen indicates the "block" (conceptually--the number does not always change at street intersections and sometimes it changes within a single block face). The number to the right of the hyphen indicates the site or house number within the "block". If the Address Number is less than ten, it is written with a leading zero, as in 194-03 1/2 above. Additional leading zeros may be added to either number to provide for correct sorting if the entire Complete Address Number is treated as a characterString with the hyphen included. Within the address standard, these numbers can be constructed and parsed as follows:
a. The left-side number (194) and the hyphen form the Address Number Prefix element (text), with leading zeros shown if needed.
b. The right-side number (3) is the Address Number (integer), converted to a characterString with the leading zero(s) added (03) upon conversion to Complete Address Number.
c. The suffix, if any (such as the "1/2" in 194-03 1/2), is an Address Number Suffix.
9. Other Address Number Prefix Letters or Symbols. In Puerto Rico, Address Numbers are commonly preceded by an Address Number Prefix letter (e.g. "A 19"). In Portland, OR, negative Address Numbers have been assigned in an area along the west bank of the Willamette River. The minus sign is represented as a leading zero ("0121" and "121" are two different Complete Address Numbers). In such cases the leading zero should be treated as an Address Number Prefix.
10. Zero as a Complete Address Number. Special care should be taken with records where the Address Number is 0 (zero). Occasionally zero is issued as a valid address number (e.g. 0 Prince Street, Alexandria, VA 22314) or it can be imputed (1/2 Fifth Avenue, New York, NY 10003, for which the Address Number would be 0 and the Address Number Suffix would be "1/2"). More often, though, the Address Number is either missing or non-existent, and null value has been converted to zero.
11. Address Numbers vs. Address "Letters". In rare instances, thoroughfare addresses may be identified by letters instead of numbers (for example, "A" Main Street, "B" Main Street, "C" Main Street, "AA" Main Street, "AB" Main Street, etc.) A few thousand such cases have been verified in Puerto Rico, and others may be found elsewhere. In such cases, the letter(s) cannot be treated as an Address Number, because an Address Number must be an integer. The letter(s) also cannot be an Address Number Prefix or Address Number Suffix, because neither of those can be created except in conjunction with an Address Number. Instead, the letter(s) should be treated a Subaddress Identifier in an Unnumbered Thoroughfare Address. (For example: Complete Street Name = "Calle Sanchez", Complete Subaddress Identifier = "AB", Complete Place Name = "Mayaguez" State Name = "PR"). As an alternative, the address may be classified in the General Address Class and treated accordingly. </xsd:documentation>
        </xsd:annotation>
        <xsd:sequence>
			<xsd:element name="AddressNumberPrefix" type="AddressNumberPrefix_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressNumber" type="AddressNumber_type"
				minOccurs="1" maxOccurs="1" />
			<xsd:element name="AddressNumberSuffix" type="AddressNumberSuffix_type"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
	</xsd:group>
	
	<xsd:complexType name="CompleteAddressNumber_type">
		<xsd:sequence>
			<xsd:element name="AddressNumberPrefix" type="AddressNumberPrefix_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressNumber" type="AddressNumber_type"
				minOccurs="1" maxOccurs="1" />
			<xsd:element name="AddressNumberSuffix" type="AddressNumberSuffix_type"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
		<xsd:attribute name="AddressNumberParity" type="AddressNumberParity_type" />
		<xsd:attribute name="AttachedElement" type="AttachedElement_type" />
	</xsd:complexType>

	<xsd:complexType name="AddressNumberRange_type">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				{ Complete Address
				Number (low)*} + { Separator Element
				*} + { Complete Address Number
				(high)*} A set of two
				address numbers, separated by a "Separator",
				representing the low and high numbers of an address
				range. An address
				number range element should be
				accompanied by an Address Range Type
				Attribute that
				describes the type of range presented in this element.
			</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="CompleteAddressNumber" type="CompleteAddressNumber_type"
				minOccurs="2" maxOccurs="2" />
		</xsd:sequence>
		<xsd:attribute name="Separator" type="Separator_type" />
		<xsd:attribute name="Parity" type="AddressNumberParity_type" />
		<xsd:attribute name="Side" type="AddressNumberSide_type" />
	</xsd:complexType>

	<xsd:complexType name="PlaceName_type">
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute name="PlaceNameType" type="PlaceNameType_type" />
				<xsd:attribute name="ElementSequenceNumber"
					type="ElementSequenceNumber_type" />
				<xsd:attribute name="GNISFeatureID" type="GNISFeatureID_type" />
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>

	<xsd:complexType name="CompleteSubaddress_type">
		<xsd:sequence>
			<xsd:element name="SubaddressElement" type="SubaddressElement_type"
				minOccurs="1" maxOccurs="unbounded" />
		</xsd:sequence>
	</xsd:complexType>

	<xsd:complexType name="CompleteLandmarkName_type">
		<xsd:sequence>
			<xsd:element name="LandmarkName" type="LandmarkName_type"
				minOccurs="1" maxOccurs="unbounded" />
		</xsd:sequence>
		<xsd:attribute name="Separator" type="Separator_type" />
	</xsd:complexType>

	<xsd:complexType name="CompletePlaceName_type">
		<xsd:sequence>
			<xsd:element name="PlaceName" type="PlaceName_type"
				minOccurs="1" maxOccurs="unbounded" />
		</xsd:sequence>
		<xsd:attribute name="Separator" type="Separator_type" />
	</xsd:complexType>


	<!-- Supporting Information -->

	<xsd:group name="AddressAttributes_group">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
				Support information and record level metadata for each Address
			</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="AddressId" type="AddressID_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressAuthority" type="AddressAuthority_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="RelatedAddressId" type="AssociatedAddressId_type"
				minOccurs="0" maxOccurs="unbounded" />
				
			<xsd:element name="AddressXCoordinate" type="AddressXCoordinate_type"
				minOccurs="0" maxOccurs="1" />	
			<xsd:element name="AddressYCoordinate" type="AddressYCoordinate_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressLongitude" type="AddressLongitude_type"
				minOccurs="0" maxOccurs="1" />				
			<xsd:element name="AddressLatitude" type="AddressLatitude_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="USNationalGridCoordinate" type="LocationUSNG_type"
				minOccurs="0" maxOccurs="1" />				
			<xsd:element name="AddressElevation" type="AddressElevation_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressCoordinateReferenceSystem" type="AddressCoordinateReferenceSystem_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressParcelIdentifierSource" type="AddressParcelIdentifierSource_type"
				minOccurs="0" maxOccurs="unbounded" />
			<xsd:element name="AddressParcelIdentifier" type="AddressParcelIdentifier_type"
				minOccurs="0" maxOccurs="unbounded" />
				
			<xsd:element name="AddressTransportationSystemName" type="AddressTransportationSystemName_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressTransportationSystemAuthority" type="AddressTransportationSystemAuthority_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressTransportationFeatureType" type="AddressTransportationFeatureType_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressTransportationFeatureID" type="AssociatedAddressId_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="RelatedTransportationFeatureID" type="AssociatedAddressId_type"
				minOccurs="0" maxOccurs="unbounded" />
				
			<xsd:element name="AddressRangeType" type="AddressRangeType_type"
				minOccurs="0" maxOccurs="2" />
			<xsd:element name="AddressRangeParity" type="AddressRangeParity_type"
				minOccurs="0" maxOccurs="2" />
			<xsd:element name="AddressRangeDirectionality" type="AddressRangeDirectionality_type"
				minOccurs="0" maxOccurs="2" />
			<xsd:element name="AddressRangeSpan" type="AddressRangeSpan_type"
				minOccurs="0" maxOccurs="unbounded" />
				
			<xsd:element name="AddressClassification" type="AddressClassification_type"
			    maxOccurs="1" minOccurs="0"/>
			<xsd:element name="AddressFeatureType" type="AddressFeatureType_type"
				minOccurs="0" maxOccurs="unbounded" />
			<xsd:element name="AddressLifecycleStatus" type="AddressLifecycleStatus_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="OfficialStatus" type="OfficialStatus_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressAnomalyStatus" type="AddressAnomalyStatus_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressSideOfStreet" type="AddressSideOfStreet_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressZLevel" type="AddressZLevel_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="LocationDescription" type="LocationDescription_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="MailableAddress" type="MailableAddress_type"
				minOccurs="0" maxOccurs="1" />
								
									
			<xsd:element name="AddressStartDate" type="AddressStartDate_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressEndDate" type="AddressEndDate_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="DataSetID" type="DataSetID_type"
				minOccurs="0" maxOccurs="1" />

			<xsd:element name="AddressReferenceSystemId" type="AddressReferenceSystemId_type"
				minOccurs="0" maxOccurs="1" />
			<xsd:element name="AddressReferenceSystemAuthority" type="AddressReferenceSystemAuthority_type"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
	</xsd:group>

	<!--  End Content Types -->

	<!-- Begin Utility Groups -->
	<xsd:group name="ZipCode_group">
		<xsd:sequence>
			<xsd:element name="ZipCode" type="ZipCode_type"
				minOccurs="1" maxOccurs="1" />
			<xsd:element name="ZipPlus4" type="ZipPlus4_type"
				minOccurs="0" maxOccurs="1" />
		</xsd:sequence>
	</xsd:group>

	<xsd:group name="PlaceStateZip_group">
		<xsd:choice>
			<xsd:sequence>
				<xsd:element name="CompletePlaceName"
					type="CompletePlaceName_type" minOccurs="1"
					maxOccurs="1" />
				<xsd:element name="StateName"
					type="StateName_type" minOccurs="1" maxOccurs="1" />
				<xsd:group ref="ZipCode_group" minOccurs="0"
					maxOccurs="1" />
				<xsd:element name="CountryName"
					type="CountryName_type" maxOccurs="1" minOccurs="0" />
			</xsd:sequence>
			<xsd:element name="PlaceStateZip" type="PlaceStateZip_type" maxOccurs="unbounded" minOccurs="1"/>
		</xsd:choice>
	</xsd:group>


  
  </xsd:schema>
';
GO
