import '../r5.dart';

class ResourceUtils {
  static const resourceTypeFromStringMap = {
    'Account': Account,
    'ActivityDefinition': ActivityDefinition,
    'AdverseEvent': AdverseEvent,
    'AllergyIntolerance': AllergyIntolerance,
    'Appointment': Appointment,
    'AppointmentResponse': AppointmentResponse,
    'AuditEvent': AuditEvent,
    'Basic': Basic,
    'Binary': Binary,
    'BiologicallyDerivedProduct': BiologicallyDerivedProduct,
    'BodyStructure': BodyStructure,
    'Bundle': Bundle,
    'CapabilityStatement': CapabilityStatement,
    'CapabilityStatement2': CapabilityStatement2,
    'CarePlan': CarePlan,
    'CareTeam': CareTeam,
    'CatalogEntry': CatalogEntry,
    'ChargeItem': ChargeItem,
    'ChargeItemDefinition': ChargeItemDefinition,
    'Claim': Claim,
    'ClaimResponse': ClaimResponse,
    'ClinicalImpression': ClinicalImpression,
    'ClinicalUseIssue': ClinicalUseIssue,
    'CodeSystem': CodeSystem,
    'Communication': Communication,
    'CommunicationRequest': CommunicationRequest,
    'CompartmentDefinition': CompartmentDefinition,
    'Composition': Composition,
    'ConceptMap': ConceptMap,
    'Condition': Condition,
    'ConditionDefinition': ConditionDefinition,
    'Consent': Consent,
    'Contract': Contract,
    'Coverage': Coverage,
    'CoverageEligibilityRequest': CoverageEligibilityRequest,
    'CoverageEligibilityResponse': CoverageEligibilityResponse,
    'DetectedIssue': DetectedIssue,
    'Device': Device,
    'DeviceDefinition': DeviceDefinition,
    'DeviceMetric': DeviceMetric,
    'DeviceRequest': DeviceRequest,
    'DeviceUseStatement': DeviceUseStatement,
    'DiagnosticReport': DiagnosticReport,
    'DocumentManifest': DocumentManifest,
    'DocumentReference': DocumentReference,
    'Encounter': Encounter,
    'Endpoint': Endpoint,
    'EnrollmentRequest': EnrollmentRequest,
    'EnrollmentResponse': EnrollmentResponse,
    'EpisodeOfCare': EpisodeOfCare,
    'EventDefinition': EventDefinition,
    'Evidence': Evidence,
    'EvidenceVariable': EvidenceVariable,
    'ExampleScenario': ExampleScenario,
    'ExplanationOfBenefit': ExplanationOfBenefit,
    'FamilyMemberHistory': FamilyMemberHistory,
    'Flag': Flag,
    'Goal': Goal,
    'GraphDefinition': GraphDefinition,
    'Group': Group,
    'GuidanceResponse': GuidanceResponse,
    'HealthcareService': HealthcareService,
    'ImagingStudy': ImagingStudy,
    'Immunization': Immunization,
    'ImmunizationEvaluation': ImmunizationEvaluation,
    'ImmunizationRecommendation': ImmunizationRecommendation,
    'ImplementationGuide': ImplementationGuide,
    'InsurancePlan': InsurancePlan,
    'Invoice': Invoice,
    'Library': Library,
    'Linkage': Linkage,
    'List': List_,
    'Location': Location,
    'Measure': Measure,
    'MeasureReport': MeasureReport,
    'Medication': Medication,
    'MedicationAdministration': MedicationAdministration,
    'MedicationDispense': MedicationDispense,
    'MedicationKnowledge': MedicationKnowledge,
    'MedicationRequest': MedicationRequest,
    'MedicationUsage': MedicationUsage,
    'MedicinalProductDefinition': MedicinalProductDefinition,
    'RegulatedAuthorization': RegulatedAuthorization,
    'Ingredient': Ingredient,
    'ManufacturedItemDefinition': ManufacturedItemDefinition,
    'PackagedProductDefinition': PackagedProductDefinition,
    'AdministrableProductDefinition': AdministrableProductDefinition,
    'MessageDefinition': MessageDefinition,
    'MessageHeader': MessageHeader,
    'MolecularSequence': MolecularSequence,
    'NamingSystem': NamingSystem,
    'NutritionIntake': NutritionIntake,
    'NutritionOrder': NutritionOrder,
    'Observation': Observation,
    'ObservationDefinition': ObservationDefinition,
    'OperationDefinition': OperationDefinition,
    'OperationOutcome': OperationOutcome,
    'Organization': Organization,
    'OrganizationAffiliation': OrganizationAffiliation,
    'Parameters': Parameters,
    'Patient': Patient,
    'PaymentNotice': PaymentNotice,
    'PaymentReconciliation': PaymentReconciliation,
    'Person': Person,
    'PlanDefinition': PlanDefinition,
    'Practitioner': Practitioner,
    'PractitionerRole': PractitionerRole,
    'Procedure': Procedure,
    'Provenance': Provenance,
    'Questionnaire': Questionnaire,
    'QuestionnaireResponse': QuestionnaireResponse,
    'RelatedPerson': RelatedPerson,
    'RequestGroup': RequestGroup,
    'ResearchStudy': ResearchStudy,
    'ResearchSubject': ResearchSubject,
    'RiskAssessment': RiskAssessment,
    'Schedule': Schedule,
    'SearchParameter': SearchParameter,
    'ServiceRequest': ServiceRequest,
    'Slot': Slot,
    'Specimen': Specimen,
    'SpecimenDefinition': SpecimenDefinition,
    'StructureDefinition': StructureDefinition,
    'StructureMap': StructureMap,
    'Subscription': Subscription,
    'Substance': Substance,
    'SubstanceDefinition': SubstanceDefinition,
    'SubstanceNucleicAcid': SubstanceNucleicAcid,
    'SubstancePolymer': SubstancePolymer,
    'SubstanceProtein': SubstanceProtein,
    'SubstanceReferenceInformation': SubstanceReferenceInformation,
    'SubstanceSourceMaterial': SubstanceSourceMaterial,
    'SupplyDelivery': SupplyDelivery,
    'SupplyRequest': SupplyRequest,
    'Task': Task,
    'TerminologyCapabilities': TerminologyCapabilities,
    'TestReport': TestReport,
    'TestScript': TestScript,
    'ValueSet': ValueSet,
    'VerificationResult': VerificationResult,
    'VisionPrescription': VisionPrescription,
  };

  static const resourceTypeToStringMap = {
    Account: 'Account',
    ActivityDefinition: 'ActivityDefinition',
    AdverseEvent: 'AdverseEvent',
    AllergyIntolerance: 'AllergyIntolerance',
    Appointment: 'Appointment',
    AppointmentResponse: 'AppointmentResponse',
    AuditEvent: 'AuditEvent',
    Basic: 'Basic',
    Binary: 'Binary',
    BiologicallyDerivedProduct: 'BiologicallyDerivedProduct',
    BodyStructure: 'BodyStructure',
    Bundle: 'Bundle',
    CapabilityStatement: 'CapabilityStatement',
    CapabilityStatement2: 'CapabilityStatement2',
    CarePlan: 'CarePlan',
    CareTeam: 'CareTeam',
    CatalogEntry: 'CatalogEntry',
    ChargeItem: 'ChargeItem',
    ChargeItemDefinition: 'ChargeItemDefinition',
    Claim: 'Claim',
    ClaimResponse: 'ClaimResponse',
    ClinicalImpression: 'ClinicalImpression',
    ClinicalUseIssue: 'ClinicalUseIssue',
    CodeSystem: 'CodeSystem',
    Communication: 'Communication',
    CommunicationRequest: 'CommunicationRequest',
    CompartmentDefinition: 'CompartmentDefinition',
    Composition: 'Composition',
    ConceptMap: 'ConceptMap',
    Condition: 'Condition',
    ConditionDefinition: 'ConditionDefinition',
    Consent: 'Consent',
    Contract: 'Contract',
    Coverage: 'Coverage',
    CoverageEligibilityRequest: 'CoverageEligibilityRequest',
    CoverageEligibilityResponse: 'CoverageEligibilityResponse',
    DetectedIssue: 'DetectedIssue',
    Device: 'Device',
    DeviceDefinition: 'DeviceDefinition',
    DeviceMetric: 'DeviceMetric',
    DeviceRequest: 'DeviceRequest',
    DeviceUseStatement: 'DeviceUseStatement',
    DiagnosticReport: 'DiagnosticReport',
    DocumentManifest: 'DocumentManifest',
    DocumentReference: 'DocumentReference',
    Encounter: 'Encounter',
    Endpoint: 'Endpoint',
    EnrollmentRequest: 'EnrollmentRequest',
    EnrollmentResponse: 'EnrollmentResponse',
    EpisodeOfCare: 'EpisodeOfCare',
    EventDefinition: 'EventDefinition',
    Evidence: 'Evidence',
    EvidenceVariable: 'EvidenceVariable',
    ExampleScenario: 'ExampleScenario',
    ExplanationOfBenefit: 'ExplanationOfBenefit',
    FamilyMemberHistory: 'FamilyMemberHistory',
    Flag: 'Flag',
    Goal: 'Goal',
    GraphDefinition: 'GraphDefinition',
    Group: 'Group',
    GuidanceResponse: 'GuidanceResponse',
    HealthcareService: 'HealthcareService',
    ImagingStudy: 'ImagingStudy',
    Immunization: 'Immunization',
    ImmunizationEvaluation: 'ImmunizationEvaluation',
    ImmunizationRecommendation: 'ImmunizationRecommendation',
    ImplementationGuide: 'ImplementationGuide',
    InsurancePlan: 'InsurancePlan',
    Invoice: 'Invoice',
    Library: 'Library',
    Linkage: 'Linkage',
    List_: 'List',
    Location: 'Location',
    Measure: 'Measure',
    MeasureReport: 'MeasureReport',
    Medication: 'Medication',
    MedicationAdministration: 'MedicationAdministration',
    MedicationDispense: 'MedicationDispense',
    MedicationKnowledge: 'MedicationKnowledge',
    MedicationRequest: 'MedicationRequest',
    MedicationUsage: 'MedicationUsage',
    MedicinalProductDefinition: 'MedicinalProductDefinition',
    RegulatedAuthorization: 'RegulatedAuthorization',
    Ingredient: 'Ingredient',
    ManufacturedItemDefinition: 'ManufacturedItemDefinition',
    PackagedProductDefinition: 'PackagedProductDefinition',
    AdministrableProductDefinition: 'AdministrableProductDefinition',
    MessageDefinition: 'MessageDefinition',
    MessageHeader: 'MessageHeader',
    MolecularSequence: 'MolecularSequence',
    NamingSystem: 'NamingSystem',
    NutritionIntake: 'NutritionIntake',
    NutritionOrder: 'NutritionOrder',
    Observation: 'Observation',
    ObservationDefinition: 'ObservationDefinition',
    OperationDefinition: 'OperationDefinition',
    OperationOutcome: 'OperationOutcome',
    Organization: 'Organization',
    OrganizationAffiliation: 'OrganizationAffiliation',
    Parameters: 'Parameters',
    Patient: 'Patient',
    PaymentNotice: 'PaymentNotice',
    PaymentReconciliation: 'PaymentReconciliation',
    Person: 'Person',
    PlanDefinition: 'PlanDefinition',
    Practitioner: 'Practitioner',
    PractitionerRole: 'PractitionerRole',
    Procedure: 'Procedure',
    Provenance: 'Provenance',
    Questionnaire: 'Questionnaire',
    QuestionnaireResponse: 'QuestionnaireResponse',
    RelatedPerson: 'RelatedPerson',
    RequestGroup: 'RequestGroup',
    ResearchStudy: 'ResearchStudy',
    ResearchSubject: 'ResearchSubject',
    RiskAssessment: 'RiskAssessment',
    Schedule: 'Schedule',
    SearchParameter: 'SearchParameter',
    ServiceRequest: 'ServiceRequest',
    Slot: 'Slot',
    Specimen: 'Specimen',
    SpecimenDefinition: 'SpecimenDefinition',
    StructureDefinition: 'StructureDefinition',
    StructureMap: 'StructureMap',
    Subscription: 'Subscription',
    Substance: 'Substance',
    SubstanceDefinition: 'SubstanceDefinition',
    SubstanceNucleicAcid: 'SubstanceNucleicAcid',
    SubstancePolymer: 'SubstancePolymer',
    SubstanceProtein: 'SubstanceProtein',
    SubstanceReferenceInformation: 'SubstanceReferenceInformation',
    SubstanceSourceMaterial: 'SubstanceSourceMaterial',
    SupplyDelivery: 'SupplyDelivery',
    SupplyRequest: 'SupplyRequest',
    Task: 'Task',
    TerminologyCapabilities: 'TerminologyCapabilities',
    TestReport: 'TestReport',
    TestScript: 'TestScript',
    ValueSet: 'ValueSet',
    VerificationResult: 'VerificationResult',
    VisionPrescription: 'VisionPrescription',
  };
}