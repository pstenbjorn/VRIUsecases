# VRIUsecases

### Democracy Fund VRI Use Cases and Reference Code Samples

The National Institute of Standards and Technology (NIST), in collaboration with election officials and technologists, has created the Voter Records Interchange common data format (VRICDF) for data exchanges of voter records. State adoption of the VRICDF will allow for simplified automated processes in online voter record management and better voter list maintenance and accuracy. The ultimate goal of this engagement is to enhance the utility, timeliness, and sustainability of the VRICDF. [See this repository](https://github.com/usnistgov/VoterRecordsInterchange) for more information.

The core of this engagement is the articulation of a series of use cases that are critical to the further adoption of the CDF.  These use cases are described in narrative form, in use case models, and reference code implementations below.  

The use cases are intended to augment existing models created by NIST and its partner entities for the receipt and validation of voter records.  

This repository stores reference files and other information for Democracy Fund's review

[A schema browser](https://rawgit.com/pstenbjorn/VRIUsecases/master/vri.xsd.html) has been added to simplify references to objects.

### Project Narrative

An executive summary of the project that describes the use cases may be found [here](https://docs.google.com/document/d/1PNgzhddQpsRgWFy03Kp80-qUHyApJB4dL6zjqUZAgzc/edit?usp=sharing)

A complete review of the use cases may be found [here](https://docs.google.com/document/d/1KL_1i7h4rFC14CcFHFmV4IKVQEdFUccxJFWNzb1r8gw/edit?usp=sharing)

In short the project three fundemental use cases for the VRI:

1. Third Party Online Voter Registration Authentication
2. NVRA Agency Automation
3. Electronic Pollbook Data Exchange

### Code Examples

The code examples in this repository demonstrate potential implementations of the VRI using several contemporary technologies.  See additional documentation within each of the code sample directories.

#### C-Sharp/.NET

The C-Sharp/.NET code examples include a complete library of class objects generated from the VRI and several implementation examples of the class libraries.  
These examples demonstrate lookup of existing voter records, response objects returned from successful and unsuccessful record lookups and a worked example of generating VRI records from de-normalized (CSV) data.

#### Python

The Python examples include complete class libraries for the VRI.  In the future it will contain a worked example of data interchange in the class library.

### T-SQL

The T-SQL examples include the scripts needed to generate a SQL Schema Collection from a modified version of the VRI.  The limitations of SQL's interpretation of XSDs may be found [here](https://docs.microsoft.com/en-us/sql/relational-databases/xml/requirements-and-limitations-for-xml-schema-collections-on-the-server?view=sql-server-2017)

