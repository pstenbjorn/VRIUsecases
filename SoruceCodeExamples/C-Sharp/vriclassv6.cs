/*
These are generated and modified class objects describing the VRI xsd with some modifications to both the source xsd and generated classes
*/


namespace vriv6
{
    using System.Xml.Serialization;

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd", IsNullable = false)]
    public partial class VoterRecordsRequest
    {

        private AdditionalInfo[] additionalInfoField;

        private BallotRequest ballotRequestField;

        private RequestForm formField;

        private bool formFieldSpecified;

        private System.DateTime generatedDateField;

        private string issuerField;

        private string otherFormField;

        private string otherRequestMethodField;

        private string otherTypeField;

        private RequestHelper[] requestHelperField;

        private RequestMethod requestMethodField;

        private RequestProxy requestProxyField;

        private string selectedLanguageField;

        private Voter subjectField;

        private string transactionIdField;

        private VoterRequestType[] typeField;

        private string vendorApplicationIdField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("AdditionalInfo")]
        public AdditionalInfo[] AdditionalInfo
        {
            get
            {
                return this.additionalInfoField;
            }
            set
            {
                this.additionalInfoField = value;
            }
        }

        /// <remarks/>
        public BallotRequest BallotRequest
        {
            get
            {
                return this.ballotRequestField;
            }
            set
            {
                this.ballotRequestField = value;
            }
        }

        /// <remarks/>
        public RequestForm Form
        {
            get
            {
                return this.formField;
            }
            set
            {
                this.formField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool FormSpecified
        {
            get
            {
                return this.formFieldSpecified;
            }
            set
            {
                this.formFieldSpecified = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime GeneratedDate
        {
            get
            {
                return this.generatedDateField;
            }
            set
            {
                this.generatedDateField = value;
            }
        }

        /// <remarks/>
        public string Issuer
        {
            get
            {
                return this.issuerField;
            }
            set
            {
                this.issuerField = value;
            }
        }

        /// <remarks/>
        public string OtherForm
        {
            get
            {
                return this.otherFormField;
            }
            set
            {
                this.otherFormField = value;
            }
        }

        /// <remarks/>
        public string OtherRequestMethod
        {
            get
            {
                return this.otherRequestMethodField;
            }
            set
            {
                this.otherRequestMethodField = value;
            }
        }

        /// <remarks/>
        public string OtherType
        {
            get
            {
                return this.otherTypeField;
            }
            set
            {
                this.otherTypeField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("RequestHelper")]
        public RequestHelper[] RequestHelper
        {
            get
            {
                return this.requestHelperField;
            }
            set
            {
                this.requestHelperField = value;
            }
        }

        /// <remarks/>
        public RequestMethod RequestMethod
        {
            get
            {
                return this.requestMethodField;
            }
            set
            {
                this.requestMethodField = value;
            }
        }

        /// <remarks/>
        public RequestProxy RequestProxy
        {
            get
            {
                return this.requestProxyField;
            }
            set
            {
                this.requestProxyField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "language")]
        public string SelectedLanguage
        {
            get
            {
                return this.selectedLanguageField;
            }
            set
            {
                this.selectedLanguageField = value;
            }
        }

        /// <remarks/>
        public Voter Subject
        {
            get
            {
                return this.subjectField;
            }
            set
            {
                this.subjectField = value;
            }
        }

        /// <remarks/>
        public string TransactionId
        {
            get
            {
                return this.transactionIdField;
            }
            set
            {
                this.transactionIdField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Type")]
        public VoterRequestType[] Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public string VendorApplicationId
        {
            get
            {
                return this.vendorApplicationIdField;
            }
            set
            {
                this.vendorApplicationIdField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class AdditionalInfo
    {

        private File fileValueField;

        private string nameField;

        private string stringValueField;

        /// <remarks/>
        public File FileValue
        {
            get
            {
                return this.fileValueField;
            }
            set
            {
                this.fileValueField = value;
            }
        }

        /// <remarks/>
        public string Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }

        /// <remarks/>
        public string StringValue
        {
            get
            {
                return this.stringValueField;
            }
            set
            {
                this.stringValueField = value;
            }
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(Image))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class File
    {

        private string fileNameField;

        private string mimeTypeField;

        private byte[] valueField;

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string fileName
        {
            get
            {
                return this.fileNameField;
            }
            set
            {
                this.fileNameField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string mimeType
        {
            get
            {
                return this.mimeTypeField;
            }
            set
            {
                this.mimeTypeField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlTextAttribute(DataType = "base64Binary")]
        public byte[] Value
        {
            get
            {
                return this.valueField;
            }
            set
            {
                this.valueField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class BallotStyle
    {

        private ExternalIdentifier[] externalIdentifierField;

        private string[] imageUriField;

        private Party[] partyField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("ExternalIdentifier")]
        public ExternalIdentifier[] ExternalIdentifier
        {
            get
            {
                return this.externalIdentifierField;
            }
            set
            {
                this.externalIdentifierField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("ImageUri", DataType = "anyURI")]
        public string[] ImageUri
        {
            get
            {
                return this.imageUriField;
            }
            set
            {
                this.imageUriField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Party")]
        public Party[] Party
        {
            get
            {
                return this.partyField;
            }
            set
            {
                this.partyField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class ExternalIdentifier
    {

        private string otherTypeField;

        private IdentifierType typeField;

        private string valueField;

        /// <remarks/>
        public string OtherType
        {
            get
            {
                return this.otherTypeField;
            }
            set
            {
                this.otherTypeField = value;
            }
        }

        /// <remarks/>
        public IdentifierType Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public string Value
        {
            get
            {
                return this.valueField;
            }
            set
            {
                this.valueField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum IdentifierType
    {

        /// <remarks/>
        fips,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("local-level")]
        locallevel,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("national-level")]
        nationallevel,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("ocd-id")]
        ocdid,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("state-level")]
        statelevel,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class Party
    {

        private string abbreviationField;

        private ExternalIdentifier[] externalIdentifierField;

        private string nameField;

        /// <remarks/>
        public string Abbreviation
        {
            get
            {
                return this.abbreviationField;
            }
            set
            {
                this.abbreviationField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("ExternalIdentifier")]
        public ExternalIdentifier[] ExternalIdentifier
        {
            get
            {
                return this.externalIdentifierField;
            }
            set
            {
                this.externalIdentifierField = value;
            }
        }

        /// <remarks/>
        public string Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class VoterParticipation
    {

        private BallotStyle ballotStyleField;

        private Election electionField;

        /// <remarks/>
        public BallotStyle BallotStyle
        {
            get
            {
                return this.ballotStyleField;
            }
            set
            {
                this.ballotStyleField = value;
            }
        }

        /// <remarks/>
        public Election Election
        {
            get
            {
                return this.electionField;
            }
            set
            {
                this.electionField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class Election
    {

        private System.DateTime endDateField;

        private bool endDateFieldSpecified;

        private ExternalIdentifier[] externalIdentifierField;

        private string nameField;

        private System.DateTime startDateField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime EndDate
        {
            get
            {
                return this.endDateField;
            }
            set
            {
                this.endDateField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool EndDateSpecified
        {
            get
            {
                return this.endDateFieldSpecified;
            }
            set
            {
                this.endDateFieldSpecified = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("ExternalIdentifier")]
        public ExternalIdentifier[] ExternalIdentifier
        {
            get
            {
                return this.externalIdentifierField;
            }
            set
            {
                this.externalIdentifierField = value;
            }
        }

        /// <remarks/>
        public string Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime StartDate
        {
            get
            {
                return this.startDateField;
            }
            set
            {
                this.startDateField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class ElectionAdministration
    {

        private ContactMethod[] contactMethodField;

        private Location locationField;

        private string nameField;

        private string[] uriField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("ContactMethod")]
        public ContactMethod[] ContactMethod
        {
            get
            {
                return this.contactMethodField;
            }
            set
            {
                this.contactMethodField = value;
            }
        }

        /// <remarks/>
        public Location Location
        {
            get
            {
                return this.locationField;
            }
            set
            {
                this.locationField = value;
            }
        }

        /// <remarks/>
        public string Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Uri", DataType = "anyURI")]
        public string[] Uri
        {
            get
            {
                return this.uriField;
            }
            set
            {
                this.uriField = value;
            }
        }
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(PhoneContactMethod))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class ContactMethod
    {

        private string otherTypeField;

        private ContactMethodType typeField;

        private string valueField;

        /// <remarks/>
        public string OtherType
        {
            get
            {
                return this.otherTypeField;
            }
            set
            {
                this.otherTypeField = value;
            }
        }

        /// <remarks/>
        public ContactMethodType Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        public string Value
        {
            get
            {
                return this.valueField;
            }
            set
            {
                this.valueField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum ContactMethodType
    {

        /// <remarks/>
        email,

        /// <remarks/>
        phone,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class PhoneContactMethod : ContactMethod
    {

        private PhoneCapability[] capabilityField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Capability")]
        public PhoneCapability[] Capability
        {
            get
            {
                return this.capabilityField;
            }
            set
            {
                this.capabilityField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum PhoneCapability
    {

        /// <remarks/>
        fax,

        /// <remarks/>
        mms,

        /// <remarks/>
        sms,

        /// <remarks/>
        voice,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class Location
    {

        private LocationAddress addressField;

        private string directionsField;

        private LatLng latLngField;

        /// <remarks/>
        public LocationAddress Address
        {
            get
            {
                return this.addressField;
            }
            set
            {
                this.addressField = value;
            }
        }

        /// <remarks/>
        public string Directions
        {
            get
            {
                return this.directionsField;
            }
            set
            {
                this.directionsField = value;
            }
        }

        /// <remarks/>
        public LatLng LatLng
        {
            get
            {
                return this.latLngField;
            }
            set
            {
                this.latLngField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class LocationAddress
    {

        private NumberedThoroughfareAddress_type numberedThoroughfareAddress_typeField;

        private USPSPostalDeliveryBox_type uSPSPostalDeliveryBox_typeField;

        /// <remarks/>
        public NumberedThoroughfareAddress_type NumberedThoroughfareAddress_type
        {
            get
            {
                return this.numberedThoroughfareAddress_typeField;
            }
            set
            {
                this.numberedThoroughfareAddress_typeField = value;
            }
        }

        /// <remarks/>
        public USPSPostalDeliveryBox_type USPSPostalDeliveryBox_type
        {
            get
            {
                return this.uSPSPostalDeliveryBox_typeField;
            }
            set
            {
                this.uSPSPostalDeliveryBox_typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class NumberedThoroughfareAddress_type
    {

        private string itemField;

        private ItemChoiceType itemElementNameField;

        private string completeAddressNumberField;

        private string completeStreetNameField;

        private string completeSubaddressField;

        private string actionField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("CompleteLandmarkName", typeof(string))]
        [System.Xml.Serialization.XmlElementAttribute("CompletePlaceName", typeof(string))]
        [System.Xml.Serialization.XmlChoiceIdentifierAttribute("ItemElementName")]
        public string Item
        {
            get
            {
                return this.itemField;
            }
            set
            {
                this.itemField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public ItemChoiceType ItemElementName
        {
            get
            {
                return this.itemElementNameField;
            }
            set
            {
                this.itemElementNameField = value;
            }
        }

        /// <remarks/>
        public string CompleteAddressNumber
        {
            get
            {
                return this.completeAddressNumberField;
            }
            set
            {
                this.completeAddressNumberField = value;
            }
        }

        /// <remarks/>
        public string CompleteStreetName
        {
            get
            {
                return this.completeStreetNameField;
            }
            set
            {
                this.completeStreetNameField = value;
            }
        }

        /// <remarks/>
        public string CompleteSubaddress
        {
            get
            {
                return this.completeSubaddressField;
            }
            set
            {
                this.completeSubaddressField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string action
        {
            get
            {
                return this.actionField;
            }
            set
            {
                this.actionField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd", IncludeInSchema = false)]
    public enum ItemChoiceType
    {

        /// <remarks/>
        CompleteLandmarkName,

        /// <remarks/>
        CompletePlaceName,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class USPSPostalDeliveryBox_type
    {

        private string uSPSBoxField;

        private string completeSubaddressField;

        private string actionField;

        /// <remarks/>
        public string USPSBox
        {
            get
            {
                return this.uSPSBoxField;
            }
            set
            {
                this.uSPSBoxField = value;
            }
        }

        /// <remarks/>
        public string CompleteSubaddress
        {
            get
            {
                return this.completeSubaddressField;
            }
            set
            {
                this.completeSubaddressField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string action
        {
            get
            {
                return this.actionField;
            }
            set
            {
                this.actionField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class LatLng
    {

        private float latitudeField;

        private float longitudeField;

        private string sourceField;

        /// <remarks/>
        public float Latitude
        {
            get
            {
                return this.latitudeField;
            }
            set
            {
                this.latitudeField = value;
            }
        }

        /// <remarks/>
        public float Longitude
        {
            get
            {
                return this.longitudeField;
            }
            set
            {
                this.longitudeField = value;
            }
        }

        /// <remarks/>
        public string Source
        {
            get
            {
                return this.sourceField;
            }
            set
            {
                this.sourceField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class ReportingUnit
    {

        private ExternalIdentifier[] externalIdentifierField;

        private bool isDistrictedField;

        private bool isDistrictedFieldSpecified;

        private Location locationField;

        private string nameField;

        private string otherTypeField;

        private ReportingUnitType typeField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("ExternalIdentifier")]
        public ExternalIdentifier[] ExternalIdentifier
        {
            get
            {
                return this.externalIdentifierField;
            }
            set
            {
                this.externalIdentifierField = value;
            }
        }

        /// <remarks/>
        public bool IsDistricted
        {
            get
            {
                return this.isDistrictedField;
            }
            set
            {
                this.isDistrictedField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool IsDistrictedSpecified
        {
            get
            {
                return this.isDistrictedFieldSpecified;
            }
            set
            {
                this.isDistrictedFieldSpecified = value;
            }
        }

        /// <remarks/>
        public Location Location
        {
            get
            {
                return this.locationField;
            }
            set
            {
                this.locationField = value;
            }
        }

        /// <remarks/>
        public string Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }

        /// <remarks/>
        public string OtherType
        {
            get
            {
                return this.otherTypeField;
            }
            set
            {
                this.otherTypeField = value;
            }
        }

        /// <remarks/>
        public ReportingUnitType Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum ReportingUnitType
    {

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("ballot-batch")]
        ballotbatch,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("ballot-style-area")]
        ballotstylearea,

        /// <remarks/>
        borough,

        /// <remarks/>
        city,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("city-council")]
        citycouncil,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("combined-precinct")]
        combinedprecinct,

        /// <remarks/>
        congressional,

        /// <remarks/>
        county,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("county-council")]
        countycouncil,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("drop-box")]
        dropbox,

        /// <remarks/>
        judicial,

        /// <remarks/>
        municipality,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("polling-place")]
        pollingplace,

        /// <remarks/>
        precinct,

        /// <remarks/>
        school,

        /// <remarks/>
        special,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("split-precinct")]
        splitprecinct,

        /// <remarks/>
        state,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("state-house")]
        statehouse,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("state-senate")]
        statesenate,

        /// <remarks/>
        town,

        /// <remarks/>
        township,

        /// <remarks/>
        utility,

        /// <remarks/>
        village,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("vote-center")]
        votecenter,

        /// <remarks/>
        ward,

        /// <remarks/>
        water,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class VoterId
    {

        private bool attestNoSuchIdField;

        private bool attestNoSuchIdFieldSpecified;

        private System.DateTime dateOfIssuanceField;

        private bool dateOfIssuanceFieldSpecified;

        private File fileValueField;

        private string otherTypeField;

        private string stringValueField;

        private VoterIdType typeField;

        /// <remarks/>
        public bool AttestNoSuchId
        {
            get
            {
                return this.attestNoSuchIdField;
            }
            set
            {
                this.attestNoSuchIdField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool AttestNoSuchIdSpecified
        {
            get
            {
                return this.attestNoSuchIdFieldSpecified;
            }
            set
            {
                this.attestNoSuchIdFieldSpecified = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime DateOfIssuance
        {
            get
            {
                return this.dateOfIssuanceField;
            }
            set
            {
                this.dateOfIssuanceField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool DateOfIssuanceSpecified
        {
            get
            {
                return this.dateOfIssuanceFieldSpecified;
            }
            set
            {
                this.dateOfIssuanceFieldSpecified = value;
            }
        }

        /// <remarks/>
        public File FileValue
        {
            get
            {
                return this.fileValueField;
            }
            set
            {
                this.fileValueField = value;
            }
        }

        /// <remarks/>
        public string OtherType
        {
            get
            {
                return this.otherTypeField;
            }
            set
            {
                this.otherTypeField = value;
            }
        }

        /// <remarks/>
        public string StringValue
        {
            get
            {
                return this.stringValueField;
            }
            set
            {
                this.stringValueField = value;
            }
        }

        /// <remarks/>
        public VoterIdType Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum VoterIdType
    {

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("drivers-license")]
        driverslicense,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("local-voter-registration-id")]
        localvoterregistrationid,

        /// <remarks/>
        ssn,

        /// <remarks/>
        ssn4,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("state-id")]
        stateid,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("state-voter-registration-id")]
        statevoterregistrationid,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("unspecified-document")]
        unspecifieddocument,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("unspecified-document-with-name-and-address")]
        unspecifieddocumentwithnameandaddress,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("unspecified-document-with-photo-identification")]
        unspecifieddocumentwithphotoidentification,

        /// <remarks/>
        unknown,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class VoterClassification
    {

        private AssertionValue assertionField;

        private string otherAssertionField;

        private string otherTypeField;

        private VoterClassificationType typeField;

        /// <remarks/>
        public AssertionValue Assertion
        {
            get
            {
                return this.assertionField;
            }
            set
            {
                this.assertionField = value;
            }
        }

        /// <remarks/>
        public string OtherAssertion
        {
            get
            {
                return this.otherAssertionField;
            }
            set
            {
                this.otherAssertionField = value;
            }
        }

        /// <remarks/>
        public string OtherType
        {
            get
            {
                return this.otherTypeField;
            }
            set
            {
                this.otherTypeField = value;
            }
        }

        /// <remarks/>
        public VoterClassificationType Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum AssertionValue
    {

        /// <remarks/>
        no,

        /// <remarks/>
        yes,

        /// <remarks/>
        unknown,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum VoterClassificationType
    {

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("activated-national-guard")]
        activatednationalguard,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("active-duty")]
        activeduty,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("active-duty-spouse-or-dependent")]
        activedutyspouseordependent,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("citizen-abroad-intent-to-return")]
        citizenabroadintenttoreturn,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("citizen-abroad-return-uncertain")]
        citizenabroadreturnuncertain,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("citizen-abroad-never-resided")]
        citizenabroadneverresided,

        /// <remarks/>
        deceased,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("declared-incompetent")]
        declaredincompetent,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("eighteen-on-election-day")]
        eighteenonelectionday,

        /// <remarks/>
        felon,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("permanently-denied")]
        permanentlydenied,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("protected-voter")]
        protectedvoter,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("restored-felon")]
        restoredfelon,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("united-states-citizen")]
        unitedstatescitizen,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(VoterRecord))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class Voter
    {

        private ContactMethod[] contactMethodField;

        private System.DateTime dateOfBirthField;

        private bool dateOfBirthFieldSpecified;

        private string ethnicityField;

        private string genderField;

        private VoterMailingAddress mailingAddressField;

        private Name nameField;

        private Party partyField;

        private Name previousNameField;

        private VoterPreviousResidenceAddress previousResidenceAddressField;

        private Signature previousSignatureField;

        private VoterResidenceAddress residenceAddressField;

        private bool residenceAddressIsMailingAddressField;

        private bool residenceAddressIsMailingAddressFieldSpecified;

        private Signature signatureField;

        private VoterClassification[] voterClassificationField;

        private VoterId[] voterIdField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("ContactMethod")]
        public ContactMethod[] ContactMethod
        {
            get
            {
                return this.contactMethodField;
            }
            set
            {
                this.contactMethodField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime DateOfBirth
        {
            get
            {
                return this.dateOfBirthField;
            }
            set
            {
                this.dateOfBirthField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool DateOfBirthSpecified
        {
            get
            {
                return this.dateOfBirthFieldSpecified;
            }
            set
            {
                this.dateOfBirthFieldSpecified = value;
            }
        }

        /// <remarks/>
        public string Ethnicity
        {
            get
            {
                return this.ethnicityField;
            }
            set
            {
                this.ethnicityField = value;
            }
        }

        /// <remarks/>
        public string Gender
        {
            get
            {
                return this.genderField;
            }
            set
            {
                this.genderField = value;
            }
        }

        /// <remarks/>
        public VoterMailingAddress MailingAddress
        {
            get
            {
                return this.mailingAddressField;
            }
            set
            {
                this.mailingAddressField = value;
            }
        }

        /// <remarks/>
        public Name Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }

        /// <remarks/>
        public Party Party
        {
            get
            {
                return this.partyField;
            }
            set
            {
                this.partyField = value;
            }
        }

        /// <remarks/>
        public Name PreviousName
        {
            get
            {
                return this.previousNameField;
            }
            set
            {
                this.previousNameField = value;
            }
        }

        /// <remarks/>
        public VoterPreviousResidenceAddress PreviousResidenceAddress
        {
            get
            {
                return this.previousResidenceAddressField;
            }
            set
            {
                this.previousResidenceAddressField = value;
            }
        }

        /// <remarks/>
        public Signature PreviousSignature
        {
            get
            {
                return this.previousSignatureField;
            }
            set
            {
                this.previousSignatureField = value;
            }
        }

        /// <remarks/>
        public VoterResidenceAddress ResidenceAddress
        {
            get
            {
                return this.residenceAddressField;
            }
            set
            {
                this.residenceAddressField = value;
            }
        }

        /// <remarks/>
        public bool ResidenceAddressIsMailingAddress
        {
            get
            {
                return this.residenceAddressIsMailingAddressField;
            }
            set
            {
                this.residenceAddressIsMailingAddressField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool ResidenceAddressIsMailingAddressSpecified
        {
            get
            {
                return this.residenceAddressIsMailingAddressFieldSpecified;
            }
            set
            {
                this.residenceAddressIsMailingAddressFieldSpecified = value;
            }
        }

        /// <remarks/>
        public Signature Signature
        {
            get
            {
                return this.signatureField;
            }
            set
            {
                this.signatureField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("VoterClassification")]
        public VoterClassification[] VoterClassification
        {
            get
            {
                return this.voterClassificationField;
            }
            set
            {
                this.voterClassificationField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("VoterId")]
        public VoterId[] VoterId
        {
            get
            {
                return this.voterIdField;
            }
            set
            {
                this.voterIdField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class VoterMailingAddress
    {

        private NumberedThoroughfareAddress_type numberedThoroughfareAddress_typeField;

        private USPSPostalDeliveryBox_type uSPSPostalDeliveryBox_typeField;

        /// <remarks/>
        public NumberedThoroughfareAddress_type NumberedThoroughfareAddress_type
        {
            get
            {
                return this.numberedThoroughfareAddress_typeField;
            }
            set
            {
                this.numberedThoroughfareAddress_typeField = value;
            }
        }

        /// <remarks/>
        public USPSPostalDeliveryBox_type USPSPostalDeliveryBox_type
        {
            get
            {
                return this.uSPSPostalDeliveryBox_typeField;
            }
            set
            {
                this.uSPSPostalDeliveryBox_typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class Name
    {

        private string firstNameField;

        private string fullNameField;

        private string lastNameField;

        private string[] middleNameField;

        private string prefixField;

        private string suffixField;

        /// <remarks/>
        public string FirstName
        {
            get
            {
                return this.firstNameField;
            }
            set
            {
                this.firstNameField = value;
            }
        }

        /// <remarks/>
        public string FullName
        {
            get
            {
                return this.fullNameField;
            }
            set
            {
                this.fullNameField = value;
            }
        }

        /// <remarks/>
        public string LastName
        {
            get
            {
                return this.lastNameField;
            }
            set
            {
                this.lastNameField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("MiddleName")]
        public string[] MiddleName
        {
            get
            {
                return this.middleNameField;
            }
            set
            {
                this.middleNameField = value;
            }
        }

        /// <remarks/>
        public string Prefix
        {
            get
            {
                return this.prefixField;
            }
            set
            {
                this.prefixField = value;
            }
        }

        /// <remarks/>
        public string Suffix
        {
            get
            {
                return this.suffixField;
            }
            set
            {
                this.suffixField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class VoterPreviousResidenceAddress
    {

        private NumberedThoroughfareAddress_type numberedThoroughfareAddress_typeField;

        private USPSPostalDeliveryBox_type uSPSPostalDeliveryBox_typeField;

        /// <remarks/>
        public NumberedThoroughfareAddress_type NumberedThoroughfareAddress_type
        {
            get
            {
                return this.numberedThoroughfareAddress_typeField;
            }
            set
            {
                this.numberedThoroughfareAddress_typeField = value;
            }
        }

        /// <remarks/>
        public USPSPostalDeliveryBox_type USPSPostalDeliveryBox_type
        {
            get
            {
                return this.uSPSPostalDeliveryBox_typeField;
            }
            set
            {
                this.uSPSPostalDeliveryBox_typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class Signature
    {

        private System.DateTime dateField;

        private bool dateFieldSpecified;

        private Image fileValueField;

        private string otherSourceField;

        private string otherTypeField;

        private SignatureSource sourceField;

        private bool sourceFieldSpecified;

        private SignatureType typeField;

        private bool typeFieldSpecified;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime Date
        {
            get
            {
                return this.dateField;
            }
            set
            {
                this.dateField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool DateSpecified
        {
            get
            {
                return this.dateFieldSpecified;
            }
            set
            {
                this.dateFieldSpecified = value;
            }
        }

        /// <remarks/>
        public Image FileValue
        {
            get
            {
                return this.fileValueField;
            }
            set
            {
                this.fileValueField = value;
            }
        }

        /// <remarks/>
        public string OtherSource
        {
            get
            {
                return this.otherSourceField;
            }
            set
            {
                this.otherSourceField = value;
            }
        }

        /// <remarks/>
        public string OtherType
        {
            get
            {
                return this.otherTypeField;
            }
            set
            {
                this.otherTypeField = value;
            }
        }

        /// <remarks/>
        public SignatureSource Source
        {
            get
            {
                return this.sourceField;
            }
            set
            {
                this.sourceField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool SourceSpecified
        {
            get
            {
                return this.sourceFieldSpecified;
            }
            set
            {
                this.sourceFieldSpecified = value;
            }
        }

        /// <remarks/>
        public SignatureType Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool TypeSpecified
        {
            get
            {
                return this.typeFieldSpecified;
            }
            set
            {
                this.typeFieldSpecified = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class Image : File
    {
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum SignatureSource
    {

        /// <remarks/>
        dmv,

        /// <remarks/>
        local,

        /// <remarks/>
        state,

        /// <remarks/>
        voter,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum SignatureType
    {

        /// <remarks/>
        dynamic,

        /// <remarks/>
        electronic,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class VoterResidenceAddress
    {

        private NumberedThoroughfareAddress_type numberedThoroughfareAddress_typeField;

        private USPSPostalDeliveryBox_type uSPSPostalDeliveryBox_typeField;

        /// <remarks/>
        public NumberedThoroughfareAddress_type NumberedThoroughfareAddress_type
        {
            get
            {
                return this.numberedThoroughfareAddress_typeField;
            }
            set
            {
                this.numberedThoroughfareAddress_typeField = value;
            }
        }

        /// <remarks/>
        public USPSPostalDeliveryBox_type USPSPostalDeliveryBox_type
        {
            get
            {
                return this.uSPSPostalDeliveryBox_typeField;
            }
            set
            {
                this.uSPSPostalDeliveryBox_typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class VoterRecord : Voter
    {

        private ReportingUnit[] districtField;

        private ElectionAdministration electionAdministrationField;

        private ReportingUnit[] localityField;

        private ReportingUnit pollingLocationField;

        private VoterParticipation[] voterParticipationField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("District")]
        public ReportingUnit[] District
        {
            get
            {
                return this.districtField;
            }
            set
            {
                this.districtField = value;
            }
        }

        /// <remarks/>
        public ElectionAdministration ElectionAdministration
        {
            get
            {
                return this.electionAdministrationField;
            }
            set
            {
                this.electionAdministrationField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Locality")]
        public ReportingUnit[] Locality
        {
            get
            {
                return this.localityField;
            }
            set
            {
                this.localityField = value;
            }
        }

        /// <remarks/>
        public ReportingUnit PollingLocation
        {
            get
            {
                return this.pollingLocationField;
            }
            set
            {
                this.pollingLocationField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("VoterParticipation")]
        public VoterParticipation[] VoterParticipation
        {
            get
            {
                return this.voterParticipationField;
            }
            set
            {
                this.voterParticipationField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class RequestProxy
    {

        private RequestProxyAddress addressField;

        private string nameField;

        private string originTransactionIdField;

        private string otherTypeField;

        private PhoneContactMethod phoneField;

        private System.DateTime timeStampField;

        private bool timeStampFieldSpecified;

        private RequestProxyType typeField;

        /// <remarks/>
        public RequestProxyAddress Address
        {
            get
            {
                return this.addressField;
            }
            set
            {
                this.addressField = value;
            }
        }

        /// <remarks/>
        public string Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }

        /// <remarks/>
        public string OriginTransactionId
        {
            get
            {
                return this.originTransactionIdField;
            }
            set
            {
                this.originTransactionIdField = value;
            }
        }

        /// <remarks/>
        public string OtherType
        {
            get
            {
                return this.otherTypeField;
            }
            set
            {
                this.otherTypeField = value;
            }
        }

        /// <remarks/>
        public PhoneContactMethod Phone
        {
            get
            {
                return this.phoneField;
            }
            set
            {
                this.phoneField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime TimeStamp
        {
            get
            {
                return this.timeStampField;
            }
            set
            {
                this.timeStampField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool TimeStampSpecified
        {
            get
            {
                return this.timeStampFieldSpecified;
            }
            set
            {
                this.timeStampFieldSpecified = value;
            }
        }

        /// <remarks/>
        public RequestProxyType Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class RequestProxyAddress
    {

        private NumberedThoroughfareAddress_type numberedThoroughfareAddress_typeField;

        private USPSPostalDeliveryBox_type uSPSPostalDeliveryBox_typeField;

        /// <remarks/>
        public NumberedThoroughfareAddress_type NumberedThoroughfareAddress_type
        {
            get
            {
                return this.numberedThoroughfareAddress_typeField;
            }
            set
            {
                this.numberedThoroughfareAddress_typeField = value;
            }
        }

        /// <remarks/>
        public USPSPostalDeliveryBox_type USPSPostalDeliveryBox_type
        {
            get
            {
                return this.uSPSPostalDeliveryBox_typeField;
            }
            set
            {
                this.uSPSPostalDeliveryBox_typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum RequestProxyType
    {

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("armed-forces-recruitment-office")]
        armedforcesrecruitmentoffice,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("motor-vehicle-office")]
        motorvehicleoffice,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("other-agency-designated-by-state")]
        otheragencydesignatedbystate,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("public-assistance-office")]
        publicassistanceoffice,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("registration-drive-from-advocacy-group-or-political-party")]
        registrationdrivefromadvocacygrouporpoliticalparty,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("state-funded-agency-serving-persons-with-disabilities")]
        statefundedagencyservingpersonswithdisabilities,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class RequestHelper
    {

        private RequestHelperAddress addressField;

        private Name nameField;

        private PhoneContactMethod phoneField;

        private Signature signatureField;

        private VoterHelperType typeField;

        /// <remarks/>
        public RequestHelperAddress Address
        {
            get
            {
                return this.addressField;
            }
            set
            {
                this.addressField = value;
            }
        }

        /// <remarks/>
        public Name Name
        {
            get
            {
                return this.nameField;
            }
            set
            {
                this.nameField = value;
            }
        }

        /// <remarks/>
        public PhoneContactMethod Phone
        {
            get
            {
                return this.phoneField;
            }
            set
            {
                this.phoneField = value;
            }
        }

        /// <remarks/>
        public Signature Signature
        {
            get
            {
                return this.signatureField;
            }
            set
            {
                this.signatureField = value;
            }
        }

        /// <remarks/>
        public VoterHelperType Type
        {
            get
            {
                return this.typeField;
            }
            set
            {
                this.typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class RequestHelperAddress
    {

        private NumberedThoroughfareAddress_type numberedThoroughfareAddress_typeField;

        private USPSPostalDeliveryBox_type uSPSPostalDeliveryBox_typeField;

        /// <remarks/>
        public NumberedThoroughfareAddress_type NumberedThoroughfareAddress_type
        {
            get
            {
                return this.numberedThoroughfareAddress_typeField;
            }
            set
            {
                this.numberedThoroughfareAddress_typeField = value;
            }
        }

        /// <remarks/>
        public USPSPostalDeliveryBox_type USPSPostalDeliveryBox_type
        {
            get
            {
                return this.uSPSPostalDeliveryBox_typeField;
            }
            set
            {
                this.uSPSPostalDeliveryBox_typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum VoterHelperType
    {

        /// <remarks/>
        assistant,

        /// <remarks/>
        witness,
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(TemporalBallotRequest))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(PermanentBallotRequest))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(ElectionBasedBallotRequest))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class BallotRequest
    {

        private BallotReceiptMethod[] ballotReceiptPreferenceField;

        private BallotRequestMailForwardingAddress mailForwardingAddressField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("BallotReceiptPreference")]
        public BallotReceiptMethod[] BallotReceiptPreference
        {
            get
            {
                return this.ballotReceiptPreferenceField;
            }
            set
            {
                this.ballotReceiptPreferenceField = value;
            }
        }

        /// <remarks/>
        public BallotRequestMailForwardingAddress MailForwardingAddress
        {
            get
            {
                return this.mailForwardingAddressField;
            }
            set
            {
                this.mailForwardingAddressField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum BallotReceiptMethod
    {

        /// <remarks/>
        email,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("email-or-online")]
        emailoronline,

        /// <remarks/>
        fax,

        /// <remarks/>
        mail,

        /// <remarks/>
        online,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(AnonymousType = true, Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class BallotRequestMailForwardingAddress
    {

        private NumberedThoroughfareAddress_type numberedThoroughfareAddress_typeField;

        private USPSPostalDeliveryBox_type uSPSPostalDeliveryBox_typeField;

        /// <remarks/>
        public NumberedThoroughfareAddress_type NumberedThoroughfareAddress_type
        {
            get
            {
                return this.numberedThoroughfareAddress_typeField;
            }
            set
            {
                this.numberedThoroughfareAddress_typeField = value;
            }
        }

        /// <remarks/>
        public USPSPostalDeliveryBox_type USPSPostalDeliveryBox_type
        {
            get
            {
                return this.uSPSPostalDeliveryBox_typeField;
            }
            set
            {
                this.uSPSPostalDeliveryBox_typeField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class TemporalBallotRequest : BallotRequest
    {

        private System.DateTime endDateField;

        private System.DateTime startDateField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime EndDate
        {
            get
            {
                return this.endDateField;
            }
            set
            {
                this.endDateField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime StartDate
        {
            get
            {
                return this.startDateField;
            }
            set
            {
                this.startDateField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class PermanentBallotRequest : BallotRequest
    {
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class ElectionBasedBallotRequest : BallotRequest
    {

        private Election electionField;

        /// <remarks/>
        public Election Election
        {
            get
            {
                return this.electionField;
            }
            set
            {
                this.electionField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum RequestForm
    {

        /// <remarks/>
        fpca,

        /// <remarks/>
        nvra,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum RequestMethod
    {

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("armed-forces-recruitment-office")]
        armedforcesrecruitmentoffice,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("motor-vehicle-office")]
        motorvehicleoffice,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("other-agency-designated-by-state")]
        otheragencydesignatedbystate,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("public-assistance-office")]
        publicassistanceoffice,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("registration-drive-from-advocacy-group-or-political-party")]
        registrationdrivefromadvocacygrouporpoliticalparty,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("state-funded-agency-serving-persons-with-disabilities")]
        statefundedagencyservingpersonswithdisabilities,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("voter-via-election-registrars-office")]
        voterviaelectionregistrarsoffice,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("voter-via-email")]
        voterviaemail,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("voter-via-fax")]
        voterviafax,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("voter-via-internet")]
        voterviainternet,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("voter-via-mail")]
        voterviamail,

        /// <remarks/>
        unknown,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum VoterRequestType
    {

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("ballot-request")]
        ballotrequest,

        /// <remarks/>
        lookup,

        /// <remarks/>
        registration,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(VoterRecords))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(RequestSuccess))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(RequestRejection))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(RequestAcknowledgement))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd", IsNullable = false)]
    public abstract partial class VoterRecordsResponse
    {

        private string transactionIdField;

        /// <remarks/>
        public string TransactionId
        {
            get
            {
                return this.transactionIdField;
            }
            set
            {
                this.transactionIdField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class VoterRecords : VoterRecordsResponse
    {

        private VoterRecord[] voterRecordField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("VoterRecord")]
        public VoterRecord[] VoterRecord
        {
            get
            {
                return this.voterRecordField;
            }
            set
            {
                this.voterRecordField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class RequestSuccess : VoterRecordsResponse
    {

        private SuccessAction[] actionField;

        private ReportingUnit[] districtField;

        private System.DateTime effectiveDateField;

        private bool effectiveDateFieldSpecified;

        private ElectionAdministration electionAdministrationField;

        private ReportingUnit[] localityField;

        private ReportingUnit pollingPlaceField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Action")]
        public SuccessAction[] Action
        {
            get
            {
                return this.actionField;
            }
            set
            {
                this.actionField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("District")]
        public ReportingUnit[] District
        {
            get
            {
                return this.districtField;
            }
            set
            {
                this.districtField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(DataType = "date")]
        public System.DateTime EffectiveDate
        {
            get
            {
                return this.effectiveDateField;
            }
            set
            {
                this.effectiveDateField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool EffectiveDateSpecified
        {
            get
            {
                return this.effectiveDateFieldSpecified;
            }
            set
            {
                this.effectiveDateFieldSpecified = value;
            }
        }

        /// <remarks/>
        public ElectionAdministration ElectionAdministration
        {
            get
            {
                return this.electionAdministrationField;
            }
            set
            {
                this.electionAdministrationField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Locality")]
        public ReportingUnit[] Locality
        {
            get
            {
                return this.localityField;
            }
            set
            {
                this.localityField = value;
            }
        }

        /// <remarks/>
        public ReportingUnit PollingPlace
        {
            get
            {
                return this.pollingPlaceField;
            }
            set
            {
                this.pollingPlaceField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum SuccessAction
    {

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("address-updated")]
        addressupdated,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("name-updated")]
        nameupdated,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("registration-cancelled")]
        registrationcancelled,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("registration-created")]
        registrationcreated,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("registration-updated")]
        registrationupdated,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("status-updated")]
        statusupdated,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class RequestRejection : VoterRecordsResponse
    {

        private string[] additionalDetailsField;

        private RequestError[] errorField;

        private string[] otherErrorField;

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("AdditionalDetails")]
        public string[] AdditionalDetails
        {
            get
            {
                return this.additionalDetailsField;
            }
            set
            {
                this.additionalDetailsField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("Error")]
        public RequestError[] Error
        {
            get
            {
                return this.errorField;
            }
            set
            {
                this.errorField = value;
            }
        }

        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute("OtherError")]
        public string[] OtherError
        {
            get
            {
                return this.otherErrorField;
            }
            set
            {
                this.otherErrorField = value;
            }
        }
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public enum RequestError
    {

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("identity-lookup-failed")]
        identitylookupfailed,

        /// <remarks/>
        incomplete,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("incomplete-address")]
        incompleteaddress,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("incomplete-birth-date")]
        incompletebirthdate,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("incomplete-name")]
        incompletename,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("incomplete-signature")]
        incompletesignature,

        /// <remarks/>
        ineligible,

        /// <remarks/>
        [System.Xml.Serialization.XmlEnumAttribute("invalid-form")]
        invalidform,

        /// <remarks/>
        other,
    }

    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.6.1055.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace = "NIST_V0_voter_records_interchange.xsd")]
    public partial class RequestAcknowledgement : VoterRecordsResponse
    {
    }

}