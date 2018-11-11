#!/usr/bin/env python


#

import sys
from lxml import etree as etree_

import ??? as supermod

def parsexml_(infile, parser=None, **kwargs):
    if parser is None:
        # Use the lxml ElementTree compatible parser so that, e.g.,
        #   we ignore comments.
        parser = etree_.ETCompatXMLParser()
    doc = etree_.parse(infile, parser=parser, **kwargs)
    return doc

#
# Globals
#

ExternalEncoding = ''

#
# Data representation classes
#


class AdditionalInfoSub(supermod.AdditionalInfo):
    def __init__(self, FileValue=None, Name=None, StringValue=None):
        super(AdditionalInfoSub, self).__init__(FileValue, Name, StringValue, )
supermod.AdditionalInfo.subclass = AdditionalInfoSub
# end class AdditionalInfoSub


class BallotRequestSub(supermod.BallotRequest):
    def __init__(self, BallotReceiptPreference=None, MailForwardingAddress=None, extensiontype_=None):
        super(BallotRequestSub, self).__init__(BallotReceiptPreference, MailForwardingAddress, extensiontype_, )
supermod.BallotRequest.subclass = BallotRequestSub
# end class BallotRequestSub


class BallotStyleSub(supermod.BallotStyle):
    def __init__(self, ExternalIdentifier=None, ImageUri=None, Party=None):
        super(BallotStyleSub, self).__init__(ExternalIdentifier, ImageUri, Party, )
supermod.BallotStyle.subclass = BallotStyleSub
# end class BallotStyleSub


class ContactMethodSub(supermod.ContactMethod):
    def __init__(self, OtherType=None, Type=None, Value=None, extensiontype_=None):
        super(ContactMethodSub, self).__init__(OtherType, Type, Value, extensiontype_, )
supermod.ContactMethod.subclass = ContactMethodSub
# end class ContactMethodSub


class ElectionSub(supermod.Election):
    def __init__(self, EndDate=None, ExternalIdentifier=None, Name=None, StartDate=None):
        super(ElectionSub, self).__init__(EndDate, ExternalIdentifier, Name, StartDate, )
supermod.Election.subclass = ElectionSub
# end class ElectionSub


class ElectionAdministrationSub(supermod.ElectionAdministration):
    def __init__(self, ContactMethod=None, Location=None, Name=None, Uri=None):
        super(ElectionAdministrationSub, self).__init__(ContactMethod, Location, Name, Uri, )
supermod.ElectionAdministration.subclass = ElectionAdministrationSub
# end class ElectionAdministrationSub


class ElectionBasedBallotRequestSub(supermod.ElectionBasedBallotRequest):
    def __init__(self, BallotReceiptPreference=None, MailForwardingAddress=None, Election=None):
        super(ElectionBasedBallotRequestSub, self).__init__(BallotReceiptPreference, MailForwardingAddress, Election, )
supermod.ElectionBasedBallotRequest.subclass = ElectionBasedBallotRequestSub
# end class ElectionBasedBallotRequestSub


class ErrorSub(supermod.Error):
    def __init__(self, Name=None, OtherError=None, Ref=None):
        super(ErrorSub, self).__init__(Name, OtherError, Ref, )
supermod.Error.subclass = ErrorSub
# end class ErrorSub


class ExternalIdentifierSub(supermod.ExternalIdentifier):
    def __init__(self, OtherType=None, Type=None, Value=None):
        super(ExternalIdentifierSub, self).__init__(OtherType, Type, Value, )
supermod.ExternalIdentifier.subclass = ExternalIdentifierSub
# end class ExternalIdentifierSub


class FileSub(supermod.File):
    def __init__(self, FileName=None, MimeType=None, valueOf_=None, extensiontype_=None):
        super(FileSub, self).__init__(FileName, MimeType, valueOf_, extensiontype_, )
supermod.File.subclass = FileSub
# end class FileSub


class ImageSub(supermod.Image):
    def __init__(self, FileName=None, MimeType=None):
        super(ImageSub, self).__init__(FileName, MimeType, )
supermod.Image.subclass = ImageSub
# end class ImageSub


class LatLngSub(supermod.LatLng):
    def __init__(self, Latitude=None, Longitude=None, Source=None):
        super(LatLngSub, self).__init__(Latitude, Longitude, Source, )
supermod.LatLng.subclass = LatLngSub
# end class LatLngSub


class LocationSub(supermod.Location):
    def __init__(self, Address=None, Directions=None, LatLng=None):
        super(LocationSub, self).__init__(Address, Directions, LatLng, )
supermod.Location.subclass = LocationSub
# end class LocationSub


class NameSub(supermod.Name):
    def __init__(self, FirstName=None, FullName=None, LastName=None, MiddleName=None, Prefix=None, Suffix=None, valueOf_=None):
        super(NameSub, self).__init__(FirstName, FullName, LastName, MiddleName, Prefix, Suffix, )
supermod.Name.subclass = NameSub
# end class NameSub


class PartySub(supermod.Party):
    def __init__(self, Abbreviation=None, ExternalIdentifier=None, Name=None):
        super(PartySub, self).__init__(Abbreviation, ExternalIdentifier, Name, )
supermod.Party.subclass = PartySub
# end class PartySub


class PermanentBallotRequestSub(supermod.PermanentBallotRequest):
    def __init__(self, BallotReceiptPreference=None, MailForwardingAddress=None):
        super(PermanentBallotRequestSub, self).__init__(BallotReceiptPreference, MailForwardingAddress, )
supermod.PermanentBallotRequest.subclass = PermanentBallotRequestSub
# end class PermanentBallotRequestSub


class PhoneContactMethodSub(supermod.PhoneContactMethod):
    def __init__(self, OtherType=None, Type=None, Value=None, Capability=None):
        super(PhoneContactMethodSub, self).__init__(OtherType, Type, Value, Capability, )
supermod.PhoneContactMethod.subclass = PhoneContactMethodSub
# end class PhoneContactMethodSub


class ReportingUnitSub(supermod.ReportingUnit):
    def __init__(self, ExternalIdentifier=None, IsDistricted=None, Location=None, Name=None, OtherType=None, Type=None):
        super(ReportingUnitSub, self).__init__(ExternalIdentifier, IsDistricted, Location, Name, OtherType, Type, )
supermod.ReportingUnit.subclass = ReportingUnitSub
# end class ReportingUnitSub


class RequestHelperSub(supermod.RequestHelper):
    def __init__(self, Address=None, Name=None, Phone=None, Signature=None, Type=None):
        super(RequestHelperSub, self).__init__(Address, Name, Phone, Signature, Type, )
supermod.RequestHelper.subclass = RequestHelperSub
# end class RequestHelperSub


class RequestProxySub(supermod.RequestProxy):
    def __init__(self, Address=None, Name=None, OriginTransactionId=None, OtherType=None, Phone=None, TimeStamp=None, Type=None):
        super(RequestProxySub, self).__init__(Address, Name, OriginTransactionId, OtherType, Phone, TimeStamp, Type, )
supermod.RequestProxy.subclass = RequestProxySub
# end class RequestProxySub


class SignatureSub(supermod.Signature):
    def __init__(self, Date=None, FileValue=None, OtherSource=None, OtherType=None, Source=None, Type=None):
        super(SignatureSub, self).__init__(Date, FileValue, OtherSource, OtherType, Source, Type, )
supermod.Signature.subclass = SignatureSub
# end class SignatureSub


class TemporalBallotRequestSub(supermod.TemporalBallotRequest):
    def __init__(self, BallotReceiptPreference=None, MailForwardingAddress=None, EndDate=None, StartDate=None):
        super(TemporalBallotRequestSub, self).__init__(BallotReceiptPreference, MailForwardingAddress, EndDate, StartDate, )
supermod.TemporalBallotRequest.subclass = TemporalBallotRequestSub
# end class TemporalBallotRequestSub


class VoterSub(supermod.Voter):
    def __init__(self, ContactMethod=None, DateOfBirth=None, Ethnicity=None, Gender=None, MailingAddress=None, Name=None, Party=None, PreviousName=None, PreviousResidenceAddress=None, PreviousSignature=None, ResidenceAddress=None, ResidenceAddressIsMailingAddress=None, Signature=None, VoterClassification=None, VoterId=None):
        super(VoterSub, self).__init__(ContactMethod, DateOfBirth, Ethnicity, Gender, MailingAddress, Name, Party, PreviousName, PreviousResidenceAddress, PreviousSignature, ResidenceAddress, ResidenceAddressIsMailingAddress, Signature, VoterClassification, VoterId, )
supermod.Voter.subclass = VoterSub
# end class VoterSub


class VoterClassificationSub(supermod.VoterClassification):
    def __init__(self, Assertion=None, OtherAssertion=None, OtherType=None, Type=None):
        super(VoterClassificationSub, self).__init__(Assertion, OtherAssertion, OtherType, Type, )
supermod.VoterClassification.subclass = VoterClassificationSub
# end class VoterClassificationSub


class VoterIdSub(supermod.VoterId):
    def __init__(self, AttestNoSuchId=None, DateOfIssuance=None, FileValue=None, OtherType=None, StringValue=None, Type=None):
        super(VoterIdSub, self).__init__(AttestNoSuchId, DateOfIssuance, FileValue, OtherType, StringValue, Type, )
supermod.VoterId.subclass = VoterIdSub
# end class VoterIdSub


class VoterParticipationSub(supermod.VoterParticipation):
    def __init__(self, BallotStyle=None, Election=None, PollingLocation=None):
        super(VoterParticipationSub, self).__init__(BallotStyle, Election, PollingLocation, )
supermod.VoterParticipation.subclass = VoterParticipationSub
# end class VoterParticipationSub


class VoterRecordSub(supermod.VoterRecord):
    def __init__(self, District=None, ElectionAdministration=None, HavaIdRequired=None, Locality=None, OtherStatus=None, PollingLocation=None, Voter=None, VoterParticipation=None, VoterStatus=None):
        super(VoterRecordSub, self).__init__(District, ElectionAdministration, HavaIdRequired, Locality, OtherStatus, PollingLocation, Voter, VoterParticipation, VoterStatus, )
supermod.VoterRecord.subclass = VoterRecordSub
# end class VoterRecordSub


class VoterRecordsRequestSub(supermod.VoterRecordsRequest):
    def __init__(self, AdditionalInfo=None, BallotRequest=None, Form=None, GeneratedDate=None, Issuer=None, OtherForm=None, OtherRequestMethod=None, OtherType=None, RequestHelper=None, RequestMethod=None, RequestProxy=None, SelectedLanguage=None, Subject=None, TransactionId=None, Type=None, VendorApplicationId=None):
        super(VoterRecordsRequestSub, self).__init__(AdditionalInfo, BallotRequest, Form, GeneratedDate, Issuer, OtherForm, OtherRequestMethod, OtherType, RequestHelper, RequestMethod, RequestProxy, SelectedLanguage, Subject, TransactionId, Type, VendorApplicationId, )
supermod.VoterRecordsRequest.subclass = VoterRecordsRequestSub
# end class VoterRecordsRequestSub


class VoterRecordsResponseSub(supermod.VoterRecordsResponse):
    def __init__(self, TransactionId=None, extensiontype_=None):
        super(VoterRecordsResponseSub, self).__init__(TransactionId, extensiontype_, )
supermod.VoterRecordsResponse.subclass = VoterRecordsResponseSub
# end class VoterRecordsResponseSub


class NumberedThoroughfareAddress_typeSub(supermod.NumberedThoroughfareAddress_type):
    def __init__(self, action=None, CompleteLandmarkName=None, CompleteAddressNumber=None, CompleteStreetName=None, CompleteSubaddress=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(NumberedThoroughfareAddress_typeSub, self).__init__(action, CompleteLandmarkName, CompleteAddressNumber, CompleteStreetName, CompleteSubaddress, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.NumberedThoroughfareAddress_type.subclass = NumberedThoroughfareAddress_typeSub
# end class NumberedThoroughfareAddress_typeSub


class IntersectionAddress_typeSub(supermod.IntersectionAddress_type):
    def __init__(self, action=None, CompleteLandmarkName=None, CornerOf=None, SeparatorElement=None, CompleteStreetName=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(IntersectionAddress_typeSub, self).__init__(action, CompleteLandmarkName, CornerOf, SeparatorElement, CompleteStreetName, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.IntersectionAddress_type.subclass = IntersectionAddress_typeSub
# end class IntersectionAddress_typeSub


class TwoNumberAddressRange_typeSub(supermod.TwoNumberAddressRange_type):
    def __init__(self, action=None, CompleteLandmarkName=None, SeparatorElement=None, CompleteAddressNumber=None, CompleteStreetName=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(TwoNumberAddressRange_typeSub, self).__init__(action, CompleteLandmarkName, SeparatorElement, CompleteAddressNumber, CompleteStreetName, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.TwoNumberAddressRange_type.subclass = TwoNumberAddressRange_typeSub
# end class TwoNumberAddressRange_typeSub


class FourNumberAddressRange_typeSub(supermod.FourNumberAddressRange_type):
    def __init__(self, action=None, CompleteLandmarkName=None, CompleteAddressNumber=None, SeparatorElement=None, CompleteStreetName=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(FourNumberAddressRange_typeSub, self).__init__(action, CompleteLandmarkName, CompleteAddressNumber, SeparatorElement, CompleteStreetName, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.FourNumberAddressRange_type.subclass = FourNumberAddressRange_typeSub
# end class FourNumberAddressRange_typeSub


class UnnumberedThoroughfareAddress_typeSub(supermod.UnnumberedThoroughfareAddress_type):
    def __init__(self, action=None, CompleteLandmarkName=None, CompleteStreetName=None, CompleteSubaddress=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(UnnumberedThoroughfareAddress_typeSub, self).__init__(action, CompleteLandmarkName, CompleteStreetName, CompleteSubaddress, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.UnnumberedThoroughfareAddress_type.subclass = UnnumberedThoroughfareAddress_typeSub
# end class UnnumberedThoroughfareAddress_typeSub


class LandmarkAddress_typeSub(supermod.LandmarkAddress_type):
    def __init__(self, action=None, CompleteLandmarkName=None, CompleteSubaddress=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(LandmarkAddress_typeSub, self).__init__(action, CompleteLandmarkName, CompleteSubaddress, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.LandmarkAddress_type.subclass = LandmarkAddress_typeSub
# end class LandmarkAddress_typeSub


class CommunityAddress_typeSub(supermod.CommunityAddress_type):
    def __init__(self, action=None, CompleteAddressNumber=None, CompleteLandmarkName=None, CompleteSubaddress=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(CommunityAddress_typeSub, self).__init__(action, CompleteAddressNumber, CompleteLandmarkName, CompleteSubaddress, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.CommunityAddress_type.subclass = CommunityAddress_typeSub
# end class CommunityAddress_typeSub


class USPSPostalDeliveryBox_typeSub(supermod.USPSPostalDeliveryBox_type):
    def __init__(self, action=None, USPSBox=None, CompleteSubaddress=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(USPSPostalDeliveryBox_typeSub, self).__init__(action, USPSBox, CompleteSubaddress, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.USPSPostalDeliveryBox_type.subclass = USPSPostalDeliveryBox_typeSub
# end class USPSPostalDeliveryBox_typeSub


class USPSPostalDeliveryRoute_typeSub(supermod.USPSPostalDeliveryRoute_type):
    def __init__(self, action=None, USPSAddress=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(USPSPostalDeliveryRoute_typeSub, self).__init__(action, USPSAddress, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.USPSPostalDeliveryRoute_type.subclass = USPSPostalDeliveryRoute_typeSub
# end class USPSPostalDeliveryRoute_typeSub


class USPSGeneralDeliveryOffice_typeSub(supermod.USPSGeneralDeliveryOffice_type):
    def __init__(self, action=None, USPSGeneralDeliveryPoint=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(USPSGeneralDeliveryOffice_typeSub, self).__init__(action, USPSGeneralDeliveryPoint, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.USPSGeneralDeliveryOffice_type.subclass = USPSGeneralDeliveryOffice_typeSub
# end class USPSGeneralDeliveryOffice_typeSub


class GeneralAddressClass_typeSub(supermod.GeneralAddressClass_type):
    def __init__(self, action=None, GeneralAddress=None, USPSGeneralDeliveryPoint=None, CompletePlaceName=None, StateName=None, ZipCode=None, ZipPlus4=None, CountryName=None, PlaceStateZip=None, AddressId=None, AddressAuthority=None, RelatedAddressId=None, AddressXCoordinate=None, AddressYCoordinate=None, AddressLongitude=None, AddressLatitude=None, USNationalGridCoordinate=None, AddressElevation=None, AddressCoordinateReferenceSystem=None, AddressParcelIdentifierSource=None, AddressParcelIdentifier=None, AddressTransportationSystemName=None, AddressTransportationSystemAuthority=None, AddressTransportationFeatureType=None, AddressTransportationFeatureID=None, RelatedTransportationFeatureID=None, AddressRangeType=None, AddressRangeParity=None, AddressRangeDirectionality=None, AddressRangeSpan=None, AddressClassification=None, AddressFeatureType=None, AddressLifecycleStatus=None, OfficialStatus=None, AddressAnomalyStatus=None, AddressSideOfStreet=None, AddressZLevel=None, LocationDescription=None, MailableAddress=None, AddressStartDate=None, AddressEndDate=None, DataSetID=None, AddressReferenceSystemId=None, AddressReferenceSystemAuthority=None):
        super(GeneralAddressClass_typeSub, self).__init__(action, GeneralAddress, USPSGeneralDeliveryPoint, CompletePlaceName, StateName, ZipCode, ZipPlus4, CountryName, PlaceStateZip, AddressId, AddressAuthority, RelatedAddressId, AddressXCoordinate, AddressYCoordinate, AddressLongitude, AddressLatitude, USNationalGridCoordinate, AddressElevation, AddressCoordinateReferenceSystem, AddressParcelIdentifierSource, AddressParcelIdentifier, AddressTransportationSystemName, AddressTransportationSystemAuthority, AddressTransportationFeatureType, AddressTransportationFeatureID, RelatedTransportationFeatureID, AddressRangeType, AddressRangeParity, AddressRangeDirectionality, AddressRangeSpan, AddressClassification, AddressFeatureType, AddressLifecycleStatus, OfficialStatus, AddressAnomalyStatus, AddressSideOfStreet, AddressZLevel, LocationDescription, MailableAddress, AddressStartDate, AddressEndDate, DataSetID, AddressReferenceSystemId, AddressReferenceSystemAuthority, )
supermod.GeneralAddressClass_type.subclass = GeneralAddressClass_typeSub
# end class GeneralAddressClass_typeSub


class AddressCollectionSub(supermod.AddressCollection):
    def __init__(self, version=None, NumberedThoroughfareAddress=None, IntersectionAddress=None, TwoNumberAddressRange=None, FourNumberAddressRange=None, UnnumberedThoroughfareAddress=None, LandmarkAddress=None, CommunityAddress=None, USPSPostalDeliveryBox=None, USPSPostalDeliveryRoute=None, USPSGeneralDeliveryOffice=None, GeneralAddressClass=None, AddressReferenceSystem=None):
        super(AddressCollectionSub, self).__init__(version, NumberedThoroughfareAddress, IntersectionAddress, TwoNumberAddressRange, FourNumberAddressRange, UnnumberedThoroughfareAddress, LandmarkAddress, CommunityAddress, USPSPostalDeliveryBox, USPSPostalDeliveryRoute, USPSGeneralDeliveryOffice, GeneralAddressClass, AddressReferenceSystem, )
supermod.AddressCollection.subclass = AddressCollectionSub
# end class AddressCollectionSub


class AddressNumberPrefix_typeSub(supermod.AddressNumberPrefix_type):
    def __init__(self, Separator=None, valueOf_=None):
        super(AddressNumberPrefix_typeSub, self).__init__(Separator, valueOf_, )
supermod.AddressNumberPrefix_type.subclass = AddressNumberPrefix_typeSub
# end class AddressNumberPrefix_typeSub


class AddressNumberSuffix_typeSub(supermod.AddressNumberSuffix_type):
    def __init__(self, Separator=None, valueOf_=None):
        super(AddressNumberSuffix_typeSub, self).__init__(Separator, valueOf_, )
supermod.AddressNumberSuffix_type.subclass = AddressNumberSuffix_typeSub
# end class AddressNumberSuffix_typeSub


class StreetNamePreModifier_typeSub(supermod.StreetNamePreModifier_type):
    def __init__(self, Separator=None, valueOf_=None):
        super(StreetNamePreModifier_typeSub, self).__init__(Separator, valueOf_, )
supermod.StreetNamePreModifier_type.subclass = StreetNamePreModifier_typeSub
# end class StreetNamePreModifier_typeSub


class StreetNamePreDirectional_typeSub(supermod.StreetNamePreDirectional_type):
    def __init__(self, Separator=None, valueOf_=None):
        super(StreetNamePreDirectional_typeSub, self).__init__(Separator, valueOf_, )
supermod.StreetNamePreDirectional_type.subclass = StreetNamePreDirectional_typeSub
# end class StreetNamePreDirectional_typeSub


class StreetNamePreType_typeSub(supermod.StreetNamePreType_type):
    def __init__(self, Separator=None, valueOf_=None):
        super(StreetNamePreType_typeSub, self).__init__(Separator, valueOf_, )
supermod.StreetNamePreType_type.subclass = StreetNamePreType_typeSub
# end class StreetNamePreType_typeSub


class StreetNamePostModifier_typeSub(supermod.StreetNamePostModifier_type):
    def __init__(self, Separator=None, valueOf_=None):
        super(StreetNamePostModifier_typeSub, self).__init__(Separator, valueOf_, )
supermod.StreetNamePostModifier_type.subclass = StreetNamePostModifier_typeSub
# end class StreetNamePostModifier_typeSub


class StreetNamePostDirectional_typeSub(supermod.StreetNamePostDirectional_type):
    def __init__(self, Separator=None, valueOf_=None):
        super(StreetNamePostDirectional_typeSub, self).__init__(Separator, valueOf_, )
supermod.StreetNamePostDirectional_type.subclass = StreetNamePostDirectional_typeSub
# end class StreetNamePostDirectional_typeSub


class StreetNamePostType_typeSub(supermod.StreetNamePostType_type):
    def __init__(self, Separator=None, NewAttribute=None, valueOf_=None):
        super(StreetNamePostType_typeSub, self).__init__(Separator, NewAttribute, valueOf_, )
supermod.StreetNamePostType_type.subclass = StreetNamePostType_typeSub
# end class StreetNamePostType_typeSub


class SubaddressElement_typeSub(supermod.SubaddressElement_type):
    def __init__(self, ElementSequenceNumber=None, SubaddressComponentOrder=None, Separator=None, GNISFeatureID=None, SubaddressType=None, SubaddressIdentifier=None):
        super(SubaddressElement_typeSub, self).__init__(ElementSequenceNumber, SubaddressComponentOrder, Separator, GNISFeatureID, SubaddressType, SubaddressIdentifier, )
supermod.SubaddressElement_type.subclass = SubaddressElement_typeSub
# end class SubaddressElement_typeSub


class LandmarkName_typeSub(supermod.LandmarkName_type):
    def __init__(self, ElementSequenceNumber=None, GNISFeatureID=None, valueOf_=None):
        super(LandmarkName_typeSub, self).__init__(ElementSequenceNumber, GNISFeatureID, valueOf_, )
supermod.LandmarkName_type.subclass = LandmarkName_typeSub
# end class LandmarkName_typeSub


class USPSBox_typeSub(supermod.USPSBox_type):
    def __init__(self, USPSBoxType=None, USPSBoxId=None):
        super(USPSBox_typeSub, self).__init__(USPSBoxType, USPSBoxId, )
supermod.USPSBox_type.subclass = USPSBox_typeSub
# end class USPSBox_typeSub


class USPSRoute_typeSub(supermod.USPSRoute_type):
    def __init__(self, USPSBoxGroupType=None, USPSBoxGroupId=None):
        super(USPSRoute_typeSub, self).__init__(USPSBoxGroupType, USPSBoxGroupId, )
supermod.USPSRoute_type.subclass = USPSRoute_typeSub
# end class USPSRoute_typeSub


class USPSAddress_typeSub(supermod.USPSAddress_type):
    def __init__(self, USPSRoute=None, USPSBox=None):
        super(USPSAddress_typeSub, self).__init__(USPSRoute, USPSBox, )
supermod.USPSAddress_type.subclass = USPSAddress_typeSub
# end class USPSAddress_typeSub


class AddressCoordinateReferenceSystem_typeSub(supermod.AddressCoordinateReferenceSystem_type):
    def __init__(self, AddressCoordinateReferenceSystemAuthority=None, AddressCoordinateReferenceSystemID=None):
        super(AddressCoordinateReferenceSystem_typeSub, self).__init__(AddressCoordinateReferenceSystemAuthority, AddressCoordinateReferenceSystemID, )
supermod.AddressCoordinateReferenceSystem_type.subclass = AddressCoordinateReferenceSystem_typeSub
# end class AddressCoordinateReferenceSystem_typeSub


class AddressReferenceSystemExtent_typeSub(supermod.AddressReferenceSystemExtent_type):
    def __init__(self):
        super(AddressReferenceSystemExtent_typeSub, self).__init__()
supermod.AddressReferenceSystemExtent_type.subclass = AddressReferenceSystemExtent_typeSub
# end class AddressReferenceSystemExtent_typeSub


class AddressReferenceSystemRules_typeSub(supermod.AddressReferenceSystemRules_type):
    def __init__(self, AddressReferenceSystemBlockRules=None, AddressReferenceSystemNumberingRules=None, AddressReferenceSystemStreetNamingRules=None, AddressReferenceSystemStreetTypeDirectionalAndModfierRules=None, AddressReferenceSystemPlaceNameStateCountyAndZipCodeRules=None, AddressReferenceSystemSubaddressRules=None):
        super(AddressReferenceSystemRules_typeSub, self).__init__(AddressReferenceSystemBlockRules, AddressReferenceSystemNumberingRules, AddressReferenceSystemStreetNamingRules, AddressReferenceSystemStreetTypeDirectionalAndModfierRules, AddressReferenceSystemPlaceNameStateCountyAndZipCodeRules, AddressReferenceSystemSubaddressRules, )
supermod.AddressReferenceSystemRules_type.subclass = AddressReferenceSystemRules_typeSub
# end class AddressReferenceSystemRules_typeSub


class AddressReferenceSystemAxis_typeSub(supermod.AddressReferenceSystemAxis_type):
    def __init__(self):
        super(AddressReferenceSystemAxis_typeSub, self).__init__()
supermod.AddressReferenceSystemAxis_type.subclass = AddressReferenceSystemAxis_typeSub
# end class AddressReferenceSystemAxis_typeSub


class AddressReferenceSystemAxisPointOfBeginning_typeSub(supermod.AddressReferenceSystemAxisPointOfBeginning_type):
    def __init__(self):
        super(AddressReferenceSystemAxisPointOfBeginning_typeSub, self).__init__()
supermod.AddressReferenceSystemAxisPointOfBeginning_type.subclass = AddressReferenceSystemAxisPointOfBeginning_typeSub
# end class AddressReferenceSystemAxisPointOfBeginning_typeSub


class AddressReferenceSystemGridAngle_typeSub(supermod.AddressReferenceSystemGridAngle_type):
    def __init__(self, valueOf_=None):
        super(AddressReferenceSystemGridAngle_typeSub, self).__init__(valueOf_, )
supermod.AddressReferenceSystemGridAngle_type.subclass = AddressReferenceSystemGridAngle_typeSub
# end class AddressReferenceSystemGridAngle_typeSub


class AddressReferenceSystemReferencePolyline_typeSub(supermod.AddressReferenceSystemReferencePolyline_type):
    def __init__(self):
        super(AddressReferenceSystemReferencePolyline_typeSub, self).__init__()
supermod.AddressReferenceSystemReferencePolyline_type.subclass = AddressReferenceSystemReferencePolyline_typeSub
# end class AddressReferenceSystemReferencePolyline_typeSub


class AddressReferenceSystemRangeBreakpoint_typeSub(supermod.AddressReferenceSystemRangeBreakpoint_type):
    def __init__(self):
        super(AddressReferenceSystemRangeBreakpoint_typeSub, self).__init__()
supermod.AddressReferenceSystemRangeBreakpoint_type.subclass = AddressReferenceSystemRangeBreakpoint_typeSub
# end class AddressReferenceSystemRangeBreakpoint_typeSub


class AddressReferenceSystemRangeBreakline_typeSub(supermod.AddressReferenceSystemRangeBreakline_type):
    def __init__(self):
        super(AddressReferenceSystemRangeBreakline_typeSub, self).__init__()
supermod.AddressReferenceSystemRangeBreakline_type.subclass = AddressReferenceSystemRangeBreakline_typeSub
# end class AddressReferenceSystemRangeBreakline_typeSub


class AddressReferenceSystemRangePolygon_typeSub(supermod.AddressReferenceSystemRangePolygon_type):
    def __init__(self):
        super(AddressReferenceSystemRangePolygon_typeSub, self).__init__()
supermod.AddressReferenceSystemRangePolygon_type.subclass = AddressReferenceSystemRangePolygon_typeSub
# end class AddressReferenceSystemRangePolygon_typeSub


class AddressReferenceSystem_typeSub(supermod.AddressReferenceSystem_type):
    def __init__(self, AddressReferenceSystemId=None, AddressReferenceSystemName=None, AddressReferenceSystemAuthority=None, AddressReferenceSystemExtent=None, AddressReferenceSystemType=None, AddressReferenceSystemRules=None, AddressReferenceSystemAxis=None, AddressReferenceSystemAxisPointOfBeginning=None, AddressReferenceSystemReferencePolyline=None, AddressReferenceSystemRangeBreakpoint=None, AddressReferenceSystemRangeBreakline=None, AddressReferenceSystemReferenceDocumentCitation=None):
        super(AddressReferenceSystem_typeSub, self).__init__(AddressReferenceSystemId, AddressReferenceSystemName, AddressReferenceSystemAuthority, AddressReferenceSystemExtent, AddressReferenceSystemType, AddressReferenceSystemRules, AddressReferenceSystemAxis, AddressReferenceSystemAxisPointOfBeginning, AddressReferenceSystemReferencePolyline, AddressReferenceSystemRangeBreakpoint, AddressReferenceSystemRangeBreakline, AddressReferenceSystemReferenceDocumentCitation, )
supermod.AddressReferenceSystem_type.subclass = AddressReferenceSystem_typeSub
# end class AddressReferenceSystem_typeSub


class RelatedAddressID_typeSub(supermod.RelatedAddressID_type):
    def __init__(self, AddressRelationType=None, valueOf_=None):
        super(RelatedAddressID_typeSub, self).__init__(AddressRelationType, valueOf_, )
supermod.RelatedAddressID_type.subclass = RelatedAddressID_typeSub
# end class RelatedAddressID_typeSub


class StreetNameGroupSub(supermod.StreetNameGroup):
    def __init__(self, name=None):
        super(StreetNameGroupSub, self).__init__(name, )
supermod.StreetNameGroup.subclass = StreetNameGroupSub
# end class StreetNameGroupSub


class AddressSchemeOrigin_typeSub(supermod.AddressSchemeOrigin_type):
    def __init__(self, OriginValue=None, AxisId=None):
        super(AddressSchemeOrigin_typeSub, self).__init__(OriginValue, AxisId, )
supermod.AddressSchemeOrigin_type.subclass = AddressSchemeOrigin_typeSub
# end class AddressSchemeOrigin_typeSub


class AddressSchemeAxes_typeSub(supermod.AddressSchemeAxes_type):
    def __init__(self, AxisId=None):
        super(AddressSchemeAxes_typeSub, self).__init__(AxisId, )
supermod.AddressSchemeAxes_type.subclass = AddressSchemeAxes_typeSub
# end class AddressSchemeAxes_typeSub


class AddressSchemeExtent_typeSub(supermod.AddressSchemeExtent_type):
    def __init__(self):
        super(AddressSchemeExtent_typeSub, self).__init__()
supermod.AddressSchemeExtent_type.subclass = AddressSchemeExtent_typeSub
# end class AddressSchemeExtent_typeSub


class DeliveryAddress_typeSub(supermod.DeliveryAddress_type):
    def __init__(self, DeliveryAddressType=None, valueOf_=None):
        super(DeliveryAddress_typeSub, self).__init__(DeliveryAddressType, valueOf_, )
supermod.DeliveryAddress_type.subclass = DeliveryAddress_typeSub
# end class DeliveryAddress_typeSub


class FeatureOccupancy_typeSub(supermod.FeatureOccupancy_type):
    def __init__(self, valueOf_=None):
        super(FeatureOccupancy_typeSub, self).__init__(valueOf_, )
supermod.FeatureOccupancy_type.subclass = FeatureOccupancy_typeSub
# end class FeatureOccupancy_typeSub


class GeneralAddress_typeSub(supermod.GeneralAddress_type):
    def __init__(self, valueOf_=None):
        super(GeneralAddress_typeSub, self).__init__(valueOf_, )
supermod.GeneralAddress_type.subclass = GeneralAddress_typeSub
# end class GeneralAddress_typeSub


class LocationXY_typeSub(supermod.LocationXY_type):
    def __init__(self, X=None, Y=None):
        super(LocationXY_typeSub, self).__init__(X, Y, )
supermod.LocationXY_type.subclass = LocationXY_typeSub
# end class LocationXY_typeSub


class LocationLongLat_typeSub(supermod.LocationLongLat_type):
    def __init__(self, Longitude=None, Latitude=None):
        super(LocationLongLat_typeSub, self).__init__(Longitude, Latitude, )
supermod.LocationLongLat_type.subclass = LocationLongLat_typeSub
# end class LocationLongLat_typeSub


class Location_typeSub(supermod.Location_type):
    def __init__(self, USNGCoordinate=None, LongLat=None, XYCoordinate=None, AdressZLevel=None):
        super(Location_typeSub, self).__init__(USNGCoordinate, LongLat, XYCoordinate, AdressZLevel, )
supermod.Location_type.subclass = Location_typeSub
# end class Location_typeSub


class CompleteStreetName_typeSub(supermod.CompleteStreetName_type):
    def __init__(self, AttachedElement=None, StreetNamePreModifier=None, StreetNamePreDirectional=None, StreetNamePreType=None, StreetName=None, StreetNamePostType=None, StreetNamePostDirectional=None, StreetNamePostModifier=None):
        super(CompleteStreetName_typeSub, self).__init__(AttachedElement, StreetNamePreModifier, StreetNamePreDirectional, StreetNamePreType, StreetName, StreetNamePostType, StreetNamePostDirectional, StreetNamePostModifier, )
supermod.CompleteStreetName_type.subclass = CompleteStreetName_typeSub
# end class CompleteStreetName_typeSub


class CompleteAddressNumber_typeSub(supermod.CompleteAddressNumber_type):
    def __init__(self, AddressNumberParity=None, AttachedElement=None, AddressNumberPrefix=None, AddressNumber=None, AddressNumberSuffix=None):
        super(CompleteAddressNumber_typeSub, self).__init__(AddressNumberParity, AttachedElement, AddressNumberPrefix, AddressNumber, AddressNumberSuffix, )
supermod.CompleteAddressNumber_type.subclass = CompleteAddressNumber_typeSub
# end class CompleteAddressNumber_typeSub


class AddressNumberRange_typeSub(supermod.AddressNumberRange_type):
    def __init__(self, Separator=None, Parity=None, Side=None, CompleteAddressNumber=None):
        super(AddressNumberRange_typeSub, self).__init__(Separator, Parity, Side, CompleteAddressNumber, )
supermod.AddressNumberRange_type.subclass = AddressNumberRange_typeSub
# end class AddressNumberRange_typeSub


class PlaceName_typeSub(supermod.PlaceName_type):
    def __init__(self, PlaceNameType=None, ElementSequenceNumber=None, GNISFeatureID=None, valueOf_=None):
        super(PlaceName_typeSub, self).__init__(PlaceNameType, ElementSequenceNumber, GNISFeatureID, valueOf_, )
supermod.PlaceName_type.subclass = PlaceName_typeSub
# end class PlaceName_typeSub


class CompleteSubaddress_typeSub(supermod.CompleteSubaddress_type):
    def __init__(self, SubaddressElement=None):
        super(CompleteSubaddress_typeSub, self).__init__(SubaddressElement, )
supermod.CompleteSubaddress_type.subclass = CompleteSubaddress_typeSub
# end class CompleteSubaddress_typeSub


class CompleteLandmarkName_typeSub(supermod.CompleteLandmarkName_type):
    def __init__(self, Separator=None, LandmarkName=None):
        super(CompleteLandmarkName_typeSub, self).__init__(Separator, LandmarkName, )
supermod.CompleteLandmarkName_type.subclass = CompleteLandmarkName_typeSub
# end class CompleteLandmarkName_typeSub


class CompletePlaceName_typeSub(supermod.CompletePlaceName_type):
    def __init__(self, Separator=None, PlaceName=None):
        super(CompletePlaceName_typeSub, self).__init__(Separator, PlaceName, )
supermod.CompletePlaceName_type.subclass = CompletePlaceName_typeSub
# end class CompletePlaceName_typeSub


class MailForwardingAddressTypeSub(supermod.MailForwardingAddressType):
    def __init__(self, CommunityAddress_type=None, FourNumberAddressRange_type=None, GeneralAddressClass_type=None, IntersectionAddress_type=None, LandmarkAddress_type=None, NumberedThoroughfareAddress_type=None, TwoNumberAddressRange_type=None, USPSGeneralDeliveryOffice_type=None, USPSPostalDeliveryBox_type=None, USPSPostalDeliveryRoute_type=None, UnnumberedThoroughfareAddress_type=None):
        super(MailForwardingAddressTypeSub, self).__init__(CommunityAddress_type, FourNumberAddressRange_type, GeneralAddressClass_type, IntersectionAddress_type, LandmarkAddress_type, NumberedThoroughfareAddress_type, TwoNumberAddressRange_type, USPSGeneralDeliveryOffice_type, USPSPostalDeliveryBox_type, USPSPostalDeliveryRoute_type, UnnumberedThoroughfareAddress_type, )
supermod.MailForwardingAddressType.subclass = MailForwardingAddressTypeSub
# end class MailForwardingAddressTypeSub


class AddressTypeSub(supermod.AddressType):
    def __init__(self, CommunityAddress_type=None, FourNumberAddressRange_type=None, GeneralAddressClass_type=None, IntersectionAddress_type=None, LandmarkAddress_type=None, NumberedThoroughfareAddress_type=None, TwoNumberAddressRange_type=None, USPSGeneralDeliveryOffice_type=None, USPSPostalDeliveryBox_type=None, USPSPostalDeliveryRoute_type=None, UnnumberedThoroughfareAddress_type=None):
        super(AddressTypeSub, self).__init__(CommunityAddress_type, FourNumberAddressRange_type, GeneralAddressClass_type, IntersectionAddress_type, LandmarkAddress_type, NumberedThoroughfareAddress_type, TwoNumberAddressRange_type, USPSGeneralDeliveryOffice_type, USPSPostalDeliveryBox_type, USPSPostalDeliveryRoute_type, UnnumberedThoroughfareAddress_type, )
supermod.AddressType.subclass = AddressTypeSub
# end class AddressTypeSub


class AddressType1Sub(supermod.AddressType1):
    def __init__(self, CommunityAddress_type=None, FourNumberAddressRange_type=None, GeneralAddressClass_type=None, IntersectionAddress_type=None, LandmarkAddress_type=None, NumberedThoroughfareAddress_type=None, TwoNumberAddressRange_type=None, USPSGeneralDeliveryOffice_type=None, USPSPostalDeliveryBox_type=None, USPSPostalDeliveryRoute_type=None, UnnumberedThoroughfareAddress_type=None):
        super(AddressType1Sub, self).__init__(CommunityAddress_type, FourNumberAddressRange_type, GeneralAddressClass_type, IntersectionAddress_type, LandmarkAddress_type, NumberedThoroughfareAddress_type, TwoNumberAddressRange_type, USPSGeneralDeliveryOffice_type, USPSPostalDeliveryBox_type, USPSPostalDeliveryRoute_type, UnnumberedThoroughfareAddress_type, )
supermod.AddressType1.subclass = AddressType1Sub
# end class AddressType1Sub


class AddressType2Sub(supermod.AddressType2):
    def __init__(self, CommunityAddress_type=None, FourNumberAddressRange_type=None, GeneralAddressClass_type=None, IntersectionAddress_type=None, LandmarkAddress_type=None, NumberedThoroughfareAddress_type=None, TwoNumberAddressRange_type=None, USPSGeneralDeliveryOffice_type=None, USPSPostalDeliveryBox_type=None, USPSPostalDeliveryRoute_type=None, UnnumberedThoroughfareAddress_type=None):
        super(AddressType2Sub, self).__init__(CommunityAddress_type, FourNumberAddressRange_type, GeneralAddressClass_type, IntersectionAddress_type, LandmarkAddress_type, NumberedThoroughfareAddress_type, TwoNumberAddressRange_type, USPSGeneralDeliveryOffice_type, USPSPostalDeliveryBox_type, USPSPostalDeliveryRoute_type, UnnumberedThoroughfareAddress_type, )
supermod.AddressType2.subclass = AddressType2Sub
# end class AddressType2Sub


class MailingAddressTypeSub(supermod.MailingAddressType):
    def __init__(self, CommunityAddress_type=None, FourNumberAddressRange_type=None, GeneralAddressClass_type=None, IntersectionAddress_type=None, LandmarkAddress_type=None, NumberedThoroughfareAddress_type=None, TwoNumberAddressRange_type=None, USPSGeneralDeliveryOffice_type=None, USPSPostalDeliveryBox_type=None, USPSPostalDeliveryRoute_type=None, UnnumberedThoroughfareAddress_type=None):
        super(MailingAddressTypeSub, self).__init__(CommunityAddress_type, FourNumberAddressRange_type, GeneralAddressClass_type, IntersectionAddress_type, LandmarkAddress_type, NumberedThoroughfareAddress_type, TwoNumberAddressRange_type, USPSGeneralDeliveryOffice_type, USPSPostalDeliveryBox_type, USPSPostalDeliveryRoute_type, UnnumberedThoroughfareAddress_type, )
supermod.MailingAddressType.subclass = MailingAddressTypeSub
# end class MailingAddressTypeSub


class PreviousResidenceAddressTypeSub(supermod.PreviousResidenceAddressType):
    def __init__(self, CommunityAddress_type=None, FourNumberAddressRange_type=None, GeneralAddressClass_type=None, IntersectionAddress_type=None, LandmarkAddress_type=None, NumberedThoroughfareAddress_type=None, TwoNumberAddressRange_type=None, USPSGeneralDeliveryOffice_type=None, USPSPostalDeliveryBox_type=None, USPSPostalDeliveryRoute_type=None, UnnumberedThoroughfareAddress_type=None):
        super(PreviousResidenceAddressTypeSub, self).__init__(CommunityAddress_type, FourNumberAddressRange_type, GeneralAddressClass_type, IntersectionAddress_type, LandmarkAddress_type, NumberedThoroughfareAddress_type, TwoNumberAddressRange_type, USPSGeneralDeliveryOffice_type, USPSPostalDeliveryBox_type, USPSPostalDeliveryRoute_type, UnnumberedThoroughfareAddress_type, )
supermod.PreviousResidenceAddressType.subclass = PreviousResidenceAddressTypeSub
# end class PreviousResidenceAddressTypeSub


class ResidenceAddressTypeSub(supermod.ResidenceAddressType):
    def __init__(self, CommunityAddress_type=None, FourNumberAddressRange_type=None, GeneralAddressClass_type=None, IntersectionAddress_type=None, LandmarkAddress_type=None, NumberedThoroughfareAddress_type=None, TwoNumberAddressRange_type=None, USPSGeneralDeliveryOffice_type=None, USPSPostalDeliveryBox_type=None, USPSPostalDeliveryRoute_type=None, UnnumberedThoroughfareAddress_type=None):
        super(ResidenceAddressTypeSub, self).__init__(CommunityAddress_type, FourNumberAddressRange_type, GeneralAddressClass_type, IntersectionAddress_type, LandmarkAddress_type, NumberedThoroughfareAddress_type, TwoNumberAddressRange_type, USPSGeneralDeliveryOffice_type, USPSPostalDeliveryBox_type, USPSPostalDeliveryRoute_type, UnnumberedThoroughfareAddress_type, )
supermod.ResidenceAddressType.subclass = ResidenceAddressTypeSub
# end class ResidenceAddressTypeSub


class VoterRecordResultsSub(supermod.VoterRecordResults):
    def __init__(self, TransactionId=None, VoterRecord=None):
        super(VoterRecordResultsSub, self).__init__(TransactionId, VoterRecord, )
supermod.VoterRecordResults.subclass = VoterRecordResultsSub
# end class VoterRecordResultsSub


class RequestSuccessSub(supermod.RequestSuccess):
    def __init__(self, TransactionId=None, Action=None, District=None, EffectiveDate=None, ElectionAdministration=None, Locality=None, PollingPlace=None):
        super(RequestSuccessSub, self).__init__(TransactionId, Action, District, EffectiveDate, ElectionAdministration, Locality, PollingPlace, )
supermod.RequestSuccess.subclass = RequestSuccessSub
# end class RequestSuccessSub


class RequestRejectionSub(supermod.RequestRejection):
    def __init__(self, TransactionId=None, AdditionalDetails=None, Error=None):
        super(RequestRejectionSub, self).__init__(TransactionId, AdditionalDetails, Error, )
supermod.RequestRejection.subclass = RequestRejectionSub
# end class RequestRejectionSub


class RequestAcknowledgementSub(supermod.RequestAcknowledgement):
    def __init__(self, TransactionId=None):
        super(RequestAcknowledgementSub, self).__init__(TransactionId, )
supermod.RequestAcknowledgement.subclass = RequestAcknowledgementSub
# end class RequestAcknowledgementSub


def get_root_tag(node):
    tag = supermod.Tag_pattern_.match(node.tag).groups()[-1]
    rootClass = None
    rootClass = supermod.GDSClassesMapping.get(tag)
    if rootClass is None and hasattr(supermod, tag):
        rootClass = getattr(supermod, tag)
    return tag, rootClass


def parse(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'VoterRecordsRequest'
        rootClass = supermod.VoterRecordsRequest
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    doc = None
    if not silence:
        sys.stdout.write('<?xml version="1.0" ?>\n')
        rootObj.export(
            sys.stdout, 0, name_=rootTag,
            namespacedef_='',
            pretty_print=True)
    return rootObj


def parseEtree(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'VoterRecordsRequest'
        rootClass = supermod.VoterRecordsRequest
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    doc = None
    mapping = {}
    rootElement = rootObj.to_etree(None, name_=rootTag, mapping_=mapping)
    reverse_mapping = rootObj.gds_reverse_node_mapping(mapping)
    if not silence:
        content = etree_.tostring(
            rootElement, pretty_print=True,
            xml_declaration=True, encoding="utf-8")
        sys.stdout.write(content)
        sys.stdout.write('\n')
    return rootObj, rootElement, mapping, reverse_mapping


def parseString(inString, silence=False):
    if sys.version_info.major == 2:
        from StringIO import StringIO
    else:
        from io import BytesIO as StringIO
    parser = None
    doc = parsexml_(StringIO(inString), parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'VoterRecordsRequest'
        rootClass = supermod.VoterRecordsRequest
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    doc = None
    if not silence:
        sys.stdout.write('<?xml version="1.0" ?>\n')
        rootObj.export(
            sys.stdout, 0, name_=rootTag,
            namespacedef_='')
    return rootObj


def parseLiteral(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'VoterRecordsRequest'
        rootClass = supermod.VoterRecordsRequest
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    doc = None
    if not silence:
        sys.stdout.write('#from ??? import *\n\n')
        sys.stdout.write('import ??? as model_\n\n')
        sys.stdout.write('rootObj = model_.rootClass(\n')
        rootObj.exportLiteral(sys.stdout, 0, name_=rootTag)
        sys.stdout.write(')\n')
    return rootObj


USAGE_TEXT = """
Usage: python ???.py <infilename>
"""


def usage():
    print(USAGE_TEXT)
    sys.exit(1)


def main():
    args = sys.argv[1:]
    if len(args) != 1:
        usage()
    infilename = args[0]
    parse(infilename)


if __name__ == '__main__':
    #import pdb; pdb.set_trace()
    main()
