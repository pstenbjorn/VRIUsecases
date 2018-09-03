
import sys
from lxml import etree as etree_

import VRI_API_Python.VriCoreObjects as supermod

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


class USPSPostalDeliveryBox_typeSub(supermod.USPSPostalDeliveryBox_type):
    def __init__(self, action=None, USPSBox=None, CompleteSubaddress=None):
        super(USPSPostalDeliveryBox_typeSub, self).__init__(action, USPSBox, CompleteSubaddress, )
supermod.USPSPostalDeliveryBox_type.subclass = USPSPostalDeliveryBox_typeSub
# end class USPSPostalDeliveryBox_typeSub


class NumberedThoroughfareAddress_typeSub(supermod.NumberedThoroughfareAddress_type):
    def __init__(self, action=None, CompleteLandmarkName=None, CompletePlaceName=None, CompleteAddressNumber=None, CompleteStreetName=None, CompleteSubaddress=None):
        super(NumberedThoroughfareAddress_typeSub, self).__init__(action, CompleteLandmarkName, CompletePlaceName, CompleteAddressNumber, CompleteStreetName, CompleteSubaddress, )
supermod.NumberedThoroughfareAddress_type.subclass = NumberedThoroughfareAddress_typeSub
# end class NumberedThoroughfareAddress_typeSub


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


class ExternalIdentifierSub(supermod.ExternalIdentifier):
    def __init__(self, OtherType=None, Type=None, Value=None):
        super(ExternalIdentifierSub, self).__init__(OtherType, Type, Value, )
supermod.ExternalIdentifier.subclass = ExternalIdentifierSub
# end class ExternalIdentifierSub


class FileSub(supermod.File):
    def __init__(self, fileName=None, mimeType=None, valueOf_=None, extensiontype_=None):
        super(FileSub, self).__init__(fileName, mimeType, valueOf_, extensiontype_, )
supermod.File.subclass = FileSub
# end class FileSub


class ImageSub(supermod.Image):
    def __init__(self, fileName=None, mimeType=None):
        super(ImageSub, self).__init__(fileName, mimeType, )
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
    def __init__(self, ContactMethod=None, DateOfBirth=None, Ethnicity=None, Gender=None, MailingAddress=None, Name=None, Party=None, PreviousName=None, PreviousResidenceAddress=None, PreviousSignature=None, ResidenceAddress=None, ResidenceAddressIsMailingAddress=None, Signature=None, VoterClassification=None, VoterId=None, extensiontype_=None):
        super(VoterSub, self).__init__(ContactMethod, DateOfBirth, Ethnicity, Gender, MailingAddress, Name, Party, PreviousName, PreviousResidenceAddress, PreviousSignature, ResidenceAddress, ResidenceAddressIsMailingAddress, Signature, VoterClassification, VoterId, extensiontype_, )
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
    def __init__(self, BallotStyle=None, Election=None):
        super(VoterParticipationSub, self).__init__(BallotStyle, Election, )
supermod.VoterParticipation.subclass = VoterParticipationSub
# end class VoterParticipationSub


class VoterRecordSub(supermod.VoterRecord):
    def __init__(self, ContactMethod=None, DateOfBirth=None, Ethnicity=None, Gender=None, MailingAddress=None, Name=None, Party=None, PreviousName=None, PreviousResidenceAddress=None, PreviousSignature=None, ResidenceAddress=None, ResidenceAddressIsMailingAddress=None, Signature=None, VoterClassification=None, VoterId=None, District=None, ElectionAdministration=None, Locality=None, PollingLocation=None, VoterParticipation=None):
        super(VoterRecordSub, self).__init__(ContactMethod, DateOfBirth, Ethnicity, Gender, MailingAddress, Name, Party, PreviousName, PreviousResidenceAddress, PreviousSignature, ResidenceAddress, ResidenceAddressIsMailingAddress, Signature, VoterClassification, VoterId, District, ElectionAdministration, Locality, PollingLocation, VoterParticipation, )
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


class MailForwardingAddressTypeSub(supermod.MailForwardingAddressType):
    def __init__(self, NumberedThoroughfareAddress_type=None, USPSPostalDeliveryBox_type=None):
        super(MailForwardingAddressTypeSub, self).__init__(NumberedThoroughfareAddress_type, USPSPostalDeliveryBox_type, )
supermod.MailForwardingAddressType.subclass = MailForwardingAddressTypeSub
# end class MailForwardingAddressTypeSub


class AddressTypeSub(supermod.AddressType):
    def __init__(self, NumberedThoroughfareAddress_type=None, USPSPostalDeliveryBox_type=None):
        super(AddressTypeSub, self).__init__(NumberedThoroughfareAddress_type, USPSPostalDeliveryBox_type, )
supermod.AddressType.subclass = AddressTypeSub
# end class AddressTypeSub


class AddressType1Sub(supermod.AddressType1):
    def __init__(self, NumberedThoroughfareAddress_type=None, USPSPostalDeliveryBox_type=None):
        super(AddressType1Sub, self).__init__(NumberedThoroughfareAddress_type, USPSPostalDeliveryBox_type, )
supermod.AddressType1.subclass = AddressType1Sub
# end class AddressType1Sub


class AddressType2Sub(supermod.AddressType2):
    def __init__(self, NumberedThoroughfareAddress_type=None, USPSPostalDeliveryBox_type=None):
        super(AddressType2Sub, self).__init__(NumberedThoroughfareAddress_type, USPSPostalDeliveryBox_type, )
supermod.AddressType2.subclass = AddressType2Sub
# end class AddressType2Sub


class MailingAddressTypeSub(supermod.MailingAddressType):
    def __init__(self, NumberedThoroughfareAddress_type=None, USPSPostalDeliveryBox_type=None):
        super(MailingAddressTypeSub, self).__init__(NumberedThoroughfareAddress_type, USPSPostalDeliveryBox_type, )
supermod.MailingAddressType.subclass = MailingAddressTypeSub
# end class MailingAddressTypeSub


class PreviousResidenceAddressTypeSub(supermod.PreviousResidenceAddressType):
    def __init__(self, NumberedThoroughfareAddress_type=None, USPSPostalDeliveryBox_type=None):
        super(PreviousResidenceAddressTypeSub, self).__init__(NumberedThoroughfareAddress_type, USPSPostalDeliveryBox_type, )
supermod.PreviousResidenceAddressType.subclass = PreviousResidenceAddressTypeSub
# end class PreviousResidenceAddressTypeSub


class ResidenceAddressTypeSub(supermod.ResidenceAddressType):
    def __init__(self, NumberedThoroughfareAddress_type=None, USPSPostalDeliveryBox_type=None):
        super(ResidenceAddressTypeSub, self).__init__(NumberedThoroughfareAddress_type, USPSPostalDeliveryBox_type, )
supermod.ResidenceAddressType.subclass = ResidenceAddressTypeSub
# end class ResidenceAddressTypeSub


class VoterRecordsSub(supermod.VoterRecords):
    def __init__(self, TransactionId=None, VoterRecord=None):
        super(VoterRecordsSub, self).__init__(TransactionId, VoterRecord, )
supermod.VoterRecords.subclass = VoterRecordsSub
# end class VoterRecordsSub


class RequestSuccessSub(supermod.RequestSuccess):
    def __init__(self, TransactionId=None, Action=None, District=None, EffectiveDate=None, ElectionAdministration=None, Locality=None, PollingPlace=None):
        super(RequestSuccessSub, self).__init__(TransactionId, Action, District, EffectiveDate, ElectionAdministration, Locality, PollingPlace, )
supermod.RequestSuccess.subclass = RequestSuccessSub
# end class RequestSuccessSub


class RequestRejectionSub(supermod.RequestRejection):
    def __init__(self, TransactionId=None, AdditionalDetails=None, Error=None, OtherError=None):
        super(RequestRejectionSub, self).__init__(TransactionId, AdditionalDetails, Error, OtherError, )
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

