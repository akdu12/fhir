# FHIR

A Dart/Flutter package for working with FHIR resources.

It contains packages for the 3 released FHIR versions:

- [R4 v4.0.1](https://hl7.org/fhir/R4/)
- [Stu3 v3.0.2](https://www.hl7.org/fhir/stu3/)
- [Dstu2 v1.0.2](https://www.hl7.org/fhir/DSTU2/)

As well as the R5 Preview #1:

- [v4.2.0: R5 Draft](https://hl7.org/fhir/2020Feb/)

## Say Hello!

- As all parts of this are new (FHIR, Flutter, using the two together), I'd love to hear from you if you're working in this space.
You can email me at <jgfaulkenberry@gmail.com>.

## How To Use

In order to use this package in your app, you must include the following in your pubspec.yaml file under dependencies:
```
dependencies:
  fhir: ^0.0.7
```
Or if you want to include the most recent unreleased version from Github
```
fhir:
  git:
    url: git://github.com/Dokotela/fhir.git
```
Then, in any file where you're going to be using it, simply import it like this:
```
import 'package:fhir/r4.dart';
```
Or, you may need to rename the package, for instance, there are some variables FHIR uses that overlap with dart:core, or if you're going to be using more than oen version of FHIR in the same file:
```
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/stu3.dart' as stu3;
```
And then just remember to append r4 or stu3 to any variables you use from the library.

Currently this package is really just for serializing/deserializing FHIR data, and being able to create FHIR resources.

To do something like create a patient, you can do the following::
```
var newPatient = Patient(
  resourceType: 'Patient',
  name: [
    HumanName(family: 'LastName', given: ['FirstName'])
  ],
  birthDate: Date('2020-01-01'),
  gender: PatientGender.female,
);
```
If you're instead trying to get data from a server (currently I haven't implemented SMART on FHIR so it would need to be an open server, [HAPI](https://hapi.fhir.org/) for instance - make sure you choose the right version you're interested in), a very simple example of querying and then printing the result:
```
import 'dart:convert';

import 'package:fhir/r4.dart';
import 'package:http/http.dart';

Future main() async {
  var server = 'http://hapi.fhir.org/baseR4';
  var headers = {'Content-type': 'application/json'};
  var desiredResource = 'Patient';
  var response = await get('$server/$desiredResource', headers: headers);
  var searchSetBundle = Bundle.fromJson(json.decode(response.body));
  print(searchSetBundle.toJson());
}
```
All of the FHIR resources are immutable classes using the [freezed package](https://pub.dev/packages/freezed), which means you can take advantage of it's functionality for things like copying/updating:
```
  var changePatientName = newPatient.copyWith(name: [
    HumanName(family: 'NewLastName', given: ['SameFirstName'])
  ]);
```
And that's essentially all there is at this point. This is still very much a developing package, so there are likely to be breaking changes as I try and figure out how it should all work. I welcome any and all feedback, suggestions or pull requests.

## Upcoming
There are two big items I would really like to get to work to add functionality:
1. Database - I'm working on a locally embedded, encrypted database using [Sembast](https://pub.dev/packages/sembast) and [SQFlite](https://pub.dev/packages/sqflite). Feel free to take a look, it's in the basic branch of my [vigor repository](https://github.com/Dokotela/vigor).
2. SMART - this one I could really use some help with. I think I understand the pieces, but I'm not sure the best way to try and implement it. But I do realize it's necessary to truly making this a useful package.


## Validation
- For validation testing, I run all of the sample files from hl7 through a tester. There is an errors.txt file in the test folder where all of the errors are reported (the file name and then the specific field). Currently the only errors involve Codes and IDs. The Codes have to due with the fact that [code is not supposed to have leading or trailing white space](https://www.hl7.org/fhir/datatypes.html#code). The issues with the IDs are that [IDs are not supposed to be more than 64 characters](https://www.hl7.org/fhir/datatypes.html#id), and these are 65. However, if it turns out that no one wants to enforce these as strictly as I do, I may relax them.

## First Package

This is the first time I've ever created a package, feedback and pull requests are welcome. I've also been started to implement type checking using [Freezed](https://pub.dev/packages/freezed). But if you run into any issues with this, either incorrect validation, or frustrating to work with returned failures, please let me know.

## Code Generation

I think it's the new compiling. It's actually great though, [json_serializable](https://pub.dev/packages/json_serializable) and [freezed](https://pub.dev/packages/freezed) are used extensively throughout. In order to allow a field to contain any resource, it is passed to the resource class and is passed to a switch case statement (which feels a little clunky, but I haven't managed a better way yet). I've removed the resource.g.dart files for all versions. It didn't appear to ever be used, but did lose me points on pub.dev. But if it changes your functionality, please let me know. It will state that there's an error when you run code generation however.
```
[WARNING] json_serializable:json_serializable on lib/dstu2/basic_types/resource.dart:
Missing "part 'resource.g.dart';".
```

## Formatting Notes

- Class names: upper camel case.
- Variables: lower camel case.
- File names: snake case.
- FHIR nested classes (including enums) listed under the primary class
- There are a number of FHIR fields that are reserved words in Dart. For these, I have added a '_' to the end of the field. (note that this does not change the json format, as when that happens the @JsonKey has been added to the field like so:
```
@JsonKey(name: 'extension') List<FhirExtension> extension_,
```

### A couple special notes about DSTU2
- Because Dstu2 is not formatted as well as the newer versions, a number of the names end up being extremely long. What I have decided to do is the following:
  - If the field/class id in the schema is a single word("id": "integer" or "id": "ValueSet"), that word is used as the field or class name.
  - If the id is more than a single word AND it is a primitive type ("id": "ValueSet.expansion.contains.display" which is a string), the last word is used as the type, in this case the field would be:  ```String display```
  - If the id is 2 words and is NOT a primitive type ("id": "ValueSet.expansion"), the type is the two words combined with upper camel case, and the field is the last word: ```ValueSetExpansion expansion```
  - if the id is more than 2 words and NOT a primitive type ("id": "TestScript.setup.action.operation.requestHeader"), the type is the first, next to last and last word combined with upper camel case, and the field is the last word: ```TestScriptOperationRequestHeader requestHeader```
- Many of the element fields I have included because they are included as part of the test resources. I could not find a full list online, so there may still be some element fields that I have missed.

### FHIR datatypes (these are R4 (which is what everyone should be using, but since EHR vendors are doing everything they can to not share data, I am also working on stu3 and dstu2 as well)

| PrimitiveTypes | GeneralTypes    | MetadataTypes       | SpecialTypes      | DraftTypes         |
| -------------- | --------------- | ------------------- | ----------------- | ------------------ |
| base64binary   | address         | contactDetail       | dosage            | population         |
| boolean        | age             | contributor         | elementDefinition | productedShelfLife |
| canonical      | annotation      | dataRequirement     | extension         | prodCharacteristic |
| code           | attachment      | parameterDefinition | meta              | marketingStatus    |
| date           | codeableConcept | relatedArtifact     | narrative         | substanceAmount    |
| dateTime       | coding          | triggerDefinition   | reference         |                    |
| decimal        | contactPoint    | usageContext        |                   |                    |
| id             | count           | relatedArtifact     |                   |                    |
| instant        | distance        | triggerDefinition   |                   |                    |
| integer        | duration        | usageContext        |                   |                    |
| markdown       | humanName       | expression          |                   |                    |
| oid            | identifier      |                     |                   |                    |
| positiveInt    | money           |                     |                   |                    |
| string         | moneyQuantity   |                     |                   |                    |
| time           | period          |                     |                   |                    |
| unsignedInt    | quantity        |                     |                   |                    |
| uri            | range           |                     |                   |                    |
| url            | ratio           |                     |                   |                    |
|                | sampledData     |                     |                   |                    |
|                | signature       |                     |                   |                    |
|                | simpleQuantity  |                     |                   |                    |
|                | timing          |                     |                   |                    |

| [ResourceTypes](https://www.hl7.org/fhir/resourcelist.html) | by Category              |                            |                                 |                                   |     |     |
| :---------------------------------------------------------- | :----------------------- | -------------------------- | ------------------------------- | --------------------------------- | --- | --- |
| **Base**                                                    |
| _Individuals_                                               | _Entities1_              | _Entities2_                | _Workflow_                      | Management                        |
| Group                                                       | Endpoing                 | BiologicallyDerivedProduct | Appointment                     | Encounter                         |
| Patient                                                     | HealthcareService        | Device                     | AppointmentResponse             | EpisodeOfCare                     |
| Person                                                      | Location                 | DeviceMetric               | Schedule                        | Flag                              |
| Practitioner                                                | Organization             | Substance                  | Slot                            | Library                           |
| PractitionerRole                                            | OrganizationAffiliation  |                            | VerificationResult              | List                              |
| RelatedPerson                                               |
| **Clinical**                                                |
| _Summary_                                                   | _Diagnostics_            | _Medications_              | _CareProvision_                 | _RequestAndResponse_              |
| AdverseEvent                                                | BodyStructure            | Immunization               | CarePlan                        | Communication                     |
| AllergyIntolerance                                          | DiagnosticReport         | ImmunizationEvaluation     | CareTeam                        | CommunicationRequest              |
| ClinicalImpression                                          | ImagingStudy             | ImmunizationRecommendation | Goal                            | DeviceRequest                     |
| DetectedIssue                                               | Media                    | Medication                 | NutritionOrder                  | DeviceUseStatement                |
| FamilyMemberHistory                                         | MolecularSequence        | MedicationAdministration   | RequestGroup                    | GuidanceResponse                  |
| Procedure                                                   | Observation              | MedicationDispense         | RiskAssessment                  | SupplyDelivery                    |
|                                                             | QuestionnaireResponse    | MedicationKnowledge        | VisionPrescription              | SupplyRequest                     |
|                                                             | Specimen                 | MedicationRequest          |
|                                                             |                          | MedicationStatement        |
| **Financial**                                               |
| _Support_                                                   | _Billing_                | _Payment_                  | _General_                       |
| Coverage                                                    | Claim                    | PaymentNotice              | Account                         |
| CoverageEligibilityRequest                                  | ClaimResponse            | PaymentReconciliation      | ChargeItem                      |
| CoverageEligibilityResponse                                 | Invoice                  |                            | ChargeItemDefinition            |
| EnrollmentRequest                                           |                          |                            | Contract                        |
| EnrollmentResponse                                          |                          |                            | ExplanationOfBenefits           |
|                                                             |                          |                            | InsurancePlan                   |
| **Foundation**                                              |
| _Conformance_                                               | _Terminology_            | _Security_                 | _Documents_                     | _Other_                           |
| CapabilityStatement                                         | CodeSystem               | AuditEvent                 | CatalogEntry                    | Basic                             |
| CompartmentDefinition                                       | ConceptMap               | Consent                    | Composition                     | Binary                            |
| ExampleScenario                                             | NamingSystem             | Provenance                 | DocumentManifest                | Bundle                            |
| GraphDefinition                                             | TerminologyCapabilities  | DocumentReference          |                                 | Linkage                           |
| ImplementationGuide                                         | ValueSet                 |                            |                                 | MessageHeader                     |
| MessageDefinition                                           |                          |                            |                                 | OperationOutcome                  |
| OperationDefinition                                         |                          |                            |                                 | Parameters                        |
| SearchParameter                                             |                          |                            |                                 | Subscription                      |
| StructureDefinition                                         |
| StructureMap                                                |
| **Specialized**                                             |
| _Public Health And Research_                                | _Definitional Artifacts_ | _Evidence Based Medicine_  | _Quality Reporting And Testing_ | _Medication Definition_           |
| ResearchStudy                                               | ActivityDefinition       | EffectEvidenceSynthesis    | Measure                         | MedicinalProduct                  |
| ResearchSubject                                             | DeviceDefinition         | Evidence                   | MeasureReport                   | MedicinalProductAuthorization     |
|                                                             | EventDefinition          | EvidenceVariable           | TestScript                      | MedicinalProductContraindication  |
|                                                             | ObservationDefinition    | ResearchDefinition         | TestReport                      | MedicinalProductIndication        |
|                                                             | PlanDefinition           | ResearchElementDefinition  |                                 | MedicinalProductIngredient        |
|                                                             | Quesionnaire             | RiskEvidenceSynthesis      |                                 | MedicinalProductInteraction       |
|                                                             | SpecimenDefinition       |                            |                                 | MedicinalProductManufactured      |
|                                                             |                          |                            |                                 | MedicinalProductPackaged          |
|                                                             |                          |                            |                                 | MedicinalProductPharmaceutical    |
|                                                             |                          |                            |                                 | MedicinalProductUndesirableEffect |
|                                                             |                          |                            |                                 | SubstanceNucleicAcid              |
|                                                             |                          |                            |                                 | SubstancePolymer                  |
|                                                             |                          |                            |                                 | SubstanceProtein                  |
|                                                             |                          |                            |                                 | SubstanceReferenceInformation     |
|                                                             |                          |                            |                                 | SubstanceSpecification            |
|                                                             |                          |                            |                                 | SubstanceSourceMaterial           |