import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json2yaml/json2yaml.dart';
import 'package:yaml/yaml.dart';
// import 'package:flutter/foundation.dart';

import '../../../../stu3.dart';

part 'general.enums.dart';
part 'general.freezed.dart';
part 'general.g.dart';

@freezed
abstract class Account with Resource implements _$Account {
  Account._();
  factory Account({
    @Default('Account') String resourceType,
    Id id,
    Meta meta,
    FhirUri implicitRules,
    @JsonKey(name: '_implicitRules') Element implicitRulesElement,
    Code language,
    @JsonKey(name: '_language') Element languageElement,
    Narrative text,
    List<Resource> contained,
    @JsonKey(name: 'extension') List<FhirExtension> extension_,
    List<FhirExtension> modifierExtension,
    List<Identifier> identifier,
    AccountStatus status,
    @JsonKey(name: '_status') Element statusElement,
    CodeableConcept type,
    String name,
    @JsonKey(name: '_name') Element nameElement,
    Reference subject,
    Period period,
    Period active,
    Money balance,
    List<AccountCoverage> coverage,
    Reference owner,
    String description,
    @JsonKey(name: '_description') Element descriptionElement,
    List<AccountGuarantor> guarantor,
  }) = _Account;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory Account.fromYaml(dynamic yaml) => yaml is String
      ? Account.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? Account.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
abstract class AccountCoverage implements _$AccountCoverage {
  AccountCoverage._();
  factory AccountCoverage({
    @required Reference coverage,
    Decimal priority,
    @JsonKey(name: '_priority') Element priorityElement,
  }) = _AccountCoverage;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory AccountCoverage.fromYaml(dynamic yaml) => yaml is String
      ? AccountCoverage.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? AccountCoverage.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory AccountCoverage.fromJson(Map<String, dynamic> json) =>
      _$AccountCoverageFromJson(json);
}

@freezed
abstract class AccountGuarantor implements _$AccountGuarantor {
  AccountGuarantor._();
  factory AccountGuarantor({
    @required Reference party,
    Boolean onHold,
    @JsonKey(name: '_onHold') Element onHoldElement,
    Period period,
  }) = _AccountGuarantor;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory AccountGuarantor.fromYaml(dynamic yaml) => yaml is String
      ? AccountGuarantor.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? AccountGuarantor.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory AccountGuarantor.fromJson(Map<String, dynamic> json) =>
      _$AccountGuarantorFromJson(json);
}

@freezed
abstract class ChargeItem with Resource implements _$ChargeItem {
  ChargeItem._();
  factory ChargeItem({
    @Default('ChargeItem') String resourceType,
    Id id,
    Meta meta,
    FhirUri implicitRules,
    @JsonKey(name: '_implicitRules') Element implicitRulesElement,
    Code language,
    @JsonKey(name: '_language') Element languageElement,
    Narrative text,
    List<Resource> contained,
    @JsonKey(name: 'extension') List<FhirExtension> extension_,
    List<FhirExtension> modifierExtension,
    Identifier identifier,
    List<String> definition,
    @JsonKey(name: '_definition') List<Element> definitionElement,
    ChargeItemStatus status,
    @JsonKey(name: '_status') Element statusElement,
    List<Reference> partOf,
    @required CodeableConcept code,
    @required Reference subject,
    Reference context,
    FhirDateTime occurrenceDateTime,
    @JsonKey(name: '_occurrenceDateTime') Element occurrenceDateTimeElement,
    Period occurrencePeriod,
    Timing occurrenceTiming,
    List<ChargeItemParticipant> participant,
    Reference performingOrganization,
    Reference requestingOrganization,
    Quantity quantity,
    List<CodeableConcept> bodysite,
    Id factorOverride,
    @JsonKey(name: '_factorOverride') Element factorOverrideElement,
    Money priceOverride,
    String overrideReason,
    @JsonKey(name: '_overrideReason') Element overrideReasonElement,
    Reference enterer,
    Date enteredDate,
    @JsonKey(name: '_enteredDate') Element enteredDateElement,
    List<CodeableConcept> reason,
    List<Reference> service,
    List<Reference> account,
    List<Annotation> note,
    List<Reference> supportingInformation,
  }) = _ChargeItem;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ChargeItem.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItem.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ChargeItem.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ChargeItem.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemFromJson(json);
}

@freezed
abstract class ChargeItemParticipant implements _$ChargeItemParticipant {
  ChargeItemParticipant._();
  factory ChargeItemParticipant({
    CodeableConcept role,
    @required Reference actor,
  }) = _ChargeItemParticipant;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ChargeItemParticipant.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItemParticipant.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ChargeItemParticipant.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ChargeItemParticipant.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemParticipantFromJson(json);
}

@freezed
abstract class Contract with Resource implements _$Contract {
  Contract._();
  factory Contract({
    @Default('Contract') String resourceType,
    Id id,
    Meta meta,
    FhirUri implicitRules,
    @JsonKey(name: '_implicitRules') Element implicitRulesElement,
    Code language,
    @JsonKey(name: '_language') Element languageElement,
    Narrative text,
    List<Resource> contained,
    @JsonKey(name: 'extension') List<FhirExtension> extension_,
    List<FhirExtension> modifierExtension,
    Identifier identifier,
    String status,
    @JsonKey(name: '_status') Element statusElement,
    String issued,
    @JsonKey(name: '_issued') Element issuedElement,
    Period applies,
    List<Reference> subject,
    List<Reference> topic,
    List<Reference> authority,
    List<Reference> domain,
    CodeableConcept type,
    List<CodeableConcept> subType,
    List<CodeableConcept> action,
    List<CodeableConcept> actionReason,
    CodeableConcept decisionType,
    CodeableConcept contentDerivative,
    List<Coding> securityLabel,
    List<ContractAgent> agent,
    List<ContractSigner> signer,
    List<ContractValuedItem> valuedItem,
    List<ContractTerm> term,
    Attachment bindingAttachment,
    Reference bindingReference,
    List<ContractFriendly> friendly,
    List<ContractLegal> legal,
    List<ContractRule> rule,
  }) = _Contract;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory Contract.fromYaml(dynamic yaml) => yaml is String
      ? Contract.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? Contract.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);
}

@freezed
abstract class ContractAgent implements _$ContractAgent {
  ContractAgent._();
  factory ContractAgent({
    @required Reference actor,
    List<CodeableConcept> role,
  }) = _ContractAgent;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractAgent.fromYaml(dynamic yaml) => yaml is String
      ? ContractAgent.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractAgent.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractAgent.fromJson(Map<String, dynamic> json) =>
      _$ContractAgentFromJson(json);
}

@freezed
abstract class ContractSigner implements _$ContractSigner {
  ContractSigner._();
  factory ContractSigner({
    @required Coding type,
    @required Reference party,
    @required List<Signature> signature,
  }) = _ContractSigner;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractSigner.fromYaml(dynamic yaml) => yaml is String
      ? ContractSigner.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractSigner.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractSigner.fromJson(Map<String, dynamic> json) =>
      _$ContractSignerFromJson(json);
}

@freezed
abstract class ContractValuedItem implements _$ContractValuedItem {
  ContractValuedItem._();
  factory ContractValuedItem({
    CodeableConcept entityCodeableConcept,
    Reference entityReference,
    Identifier identifier,
    Time effectiveTime,
    @JsonKey(name: '_effectiveTime') Element effectiveTimeElement,
    Quantity quantity,
    Money unitPrice,
    Decimal factor,
    @JsonKey(name: '_factor') Element factorElement,
    Decimal points,
    @JsonKey(name: '_points') Element pointsElement,
    Money net,
  }) = _ContractValuedItem;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractValuedItem.fromYaml(dynamic yaml) => yaml is String
      ? ContractValuedItem.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractValuedItem.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractValuedItem.fromJson(Map<String, dynamic> json) =>
      _$ContractValuedItemFromJson(json);
}

@freezed
abstract class ContractTerm implements _$ContractTerm {
  ContractTerm._();
  factory ContractTerm({
    Identifier identifier,
    String issued,
    @JsonKey(name: '_issued') Element issuedElement,
    Period applies,
    CodeableConcept type,
    CodeableConcept subType,
    List<Reference> topic,
    List<CodeableConcept> action,
    List<CodeableConcept> actionReason,
    List<Coding> securityLabel,
    List<ContractAgent1> agent,
    String text,
    @JsonKey(name: '_text') Element textElement,
    List<ContractValuedItem1> valuedItem,
    List<ContractTerm> group,
  }) = _ContractTerm;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractTerm.fromYaml(dynamic yaml) => yaml is String
      ? ContractTerm.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractTerm.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractTerm.fromJson(Map<String, dynamic> json) =>
      _$ContractTermFromJson(json);
}

@freezed
abstract class ContractAgent1 implements _$ContractAgent1 {
  ContractAgent1._();
  factory ContractAgent1({
    @required Reference actor,
    List<CodeableConcept> role,
  }) = _ContractAgent1;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractAgent1.fromYaml(dynamic yaml) => yaml is String
      ? ContractAgent1.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractAgent1.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractAgent1.fromJson(Map<String, dynamic> json) =>
      _$ContractAgent1FromJson(json);
}

@freezed
abstract class ContractValuedItem1 implements _$ContractValuedItem1 {
  ContractValuedItem1._();
  factory ContractValuedItem1({
    CodeableConcept entityCodeableConcept,
    Reference entityReference,
    Identifier identifier,
    Time effectiveTime,
    @JsonKey(name: '_effectiveTime') Element effectiveTimeElement,
    Quantity quantity,
    Money unitPrice,
    Decimal factor,
    @JsonKey(name: '_factor') Element factorElement,
    Decimal points,
    @JsonKey(name: '_points') Element pointsElement,
    Money net,
  }) = _ContractValuedItem1;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractValuedItem1.fromYaml(dynamic yaml) => yaml is String
      ? ContractValuedItem1.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractValuedItem1.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractValuedItem1.fromJson(Map<String, dynamic> json) =>
      _$ContractValuedItem1FromJson(json);
}

@freezed
abstract class ContractFriendly implements _$ContractFriendly {
  ContractFriendly._();
  factory ContractFriendly({
    Attachment contentAttachment,
    Reference contentReference,
  }) = _ContractFriendly;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractFriendly.fromYaml(dynamic yaml) => yaml is String
      ? ContractFriendly.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractFriendly.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractFriendly.fromJson(Map<String, dynamic> json) =>
      _$ContractFriendlyFromJson(json);
}

@freezed
abstract class ContractLegal implements _$ContractLegal {
  ContractLegal._();
  factory ContractLegal({
    Attachment contentAttachment,
    Reference contentReference,
  }) = _ContractLegal;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractLegal.fromYaml(dynamic yaml) => yaml is String
      ? ContractLegal.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractLegal.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractLegal.fromJson(Map<String, dynamic> json) =>
      _$ContractLegalFromJson(json);
}

@freezed
abstract class ContractRule implements _$ContractRule {
  ContractRule._();
  factory ContractRule({
    Attachment contentAttachment,
    Reference contentReference,
  }) = _ContractRule;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ContractRule.fromYaml(dynamic yaml) => yaml is String
      ? ContractRule.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ContractRule.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ContractRule.fromJson(Map<String, dynamic> json) =>
      _$ContractRuleFromJson(json);
}

@freezed
abstract class ExplanationOfBenefit
    with Resource
    implements _$ExplanationOfBenefit {
  ExplanationOfBenefit._();
  factory ExplanationOfBenefit({
    @JsonKey(defaultValue: 'ExplanationOfBenefit')
    @required
        String resourceType,
    Id id,
    Meta meta,
    FhirUri implicitRules,
    @JsonKey(name: '_implicitRules') Element implicitRulesElement,
    Code language,
    @JsonKey(name: '_language') Element languageElement,
    Narrative text,
    List<Resource> contained,
    @JsonKey(name: 'extension') List<FhirExtension> extension_,
    List<FhirExtension> modifierExtension,
    List<Identifier> identifier,
    ExplanationOfBenefitStatus status,
    @JsonKey(name: '_status') Element statusElement,
    CodeableConcept type,
    List<CodeableConcept> subType,
    Reference patient,
    Period billablePeriod,
    String created,
    @JsonKey(name: '_created') Element createdElement,
    Reference enterer,
    Reference insurer,
    Reference provider,
    Reference organization,
    Reference referral,
    Reference facility,
    Reference claim,
    Reference claimResponse,
    CodeableConcept outcome,
    String disposition,
    @JsonKey(name: '_disposition') Element dispositionElement,
    List<ExplanationOfBenefitRelated> related,
    Reference prescription,
    Reference originalPrescription,
    ExplanationOfBenefitPayee payee,
    List<ExplanationOfBenefitInformation> information,
    List<ExplanationOfBenefitCareTeam> careTeam,
    List<ExplanationOfBenefitDiagnosis> diagnosis,
    List<ExplanationOfBenefitProcedure> procedure,
    Decimal precedence,
    @JsonKey(name: '_precedence') Element precedenceElement,
    ExplanationOfBenefitInsurance insurance,
    ExplanationOfBenefitAccident accident,
    Period employmentImpacted,
    Period hospitalization,
    List<ExplanationOfBenefitItem> item,
    List<ExplanationOfBenefitAddItem> addItem,
    Money totalCost,
    Money unallocDeductable,
    Money totalBenefit,
    ExplanationOfBenefitPayment payment,
    CodeableConcept form,
    List<ExplanationOfBenefitProcessNote> processNote,
    List<ExplanationOfBenefitBenefitBalance> benefitBalance,
  }) = _ExplanationOfBenefit;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefit.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefit.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitRelated
    implements _$ExplanationOfBenefitRelated {
  ExplanationOfBenefitRelated._();
  factory ExplanationOfBenefitRelated({
    Reference claim,
    CodeableConcept relationship,
    Identifier reference,
  }) = _ExplanationOfBenefitRelated;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitRelated.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitRelated.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitRelated.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitRelatedFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitPayee
    implements _$ExplanationOfBenefitPayee {
  ExplanationOfBenefitPayee._();
  factory ExplanationOfBenefitPayee({
    CodeableConcept type,
    Reference party,
  }) = _ExplanationOfBenefitPayee;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitPayee.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitPayee.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitPayee.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitPayee.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitPayeeFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitInformation
    implements _$ExplanationOfBenefitInformation {
  ExplanationOfBenefitInformation._();
  factory ExplanationOfBenefitInformation({
    Decimal sequence,
    @JsonKey(name: '_sequence') Element sequenceElement,
    @required CodeableConcept category,
    CodeableConcept code,
    Date timingDate,
    @JsonKey(name: '_timingDate') Element timingDateElement,
    Period timingPeriod,
    String valueString,
    @JsonKey(name: '_valueString') Element valueStringElement,
    Quantity valueQuantity,
    Attachment valueAttachment,
    Reference valueReference,
    Coding reason,
  }) = _ExplanationOfBenefitInformation;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitInformation.fromYaml(dynamic yaml) =>
      yaml is String
          ? ExplanationOfBenefitInformation.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))))
          : yaml is YamlMap
              ? ExplanationOfBenefitInformation.fromJson(
                  jsonDecode(jsonEncode(yaml)))
              : null;

  factory ExplanationOfBenefitInformation.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitInformationFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitCareTeam
    implements _$ExplanationOfBenefitCareTeam {
  ExplanationOfBenefitCareTeam._();
  factory ExplanationOfBenefitCareTeam({
    Decimal sequence,
    @JsonKey(name: '_sequence') Element sequenceElement,
    @required Reference provider,
    Boolean responsible,
    @JsonKey(name: '_responsible') Element responsibleElement,
    CodeableConcept role,
    CodeableConcept qualification,
  }) = _ExplanationOfBenefitCareTeam;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitCareTeam.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitCareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitCareTeam.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitCareTeam.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitCareTeamFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitDiagnosis
    implements _$ExplanationOfBenefitDiagnosis {
  ExplanationOfBenefitDiagnosis._();
  factory ExplanationOfBenefitDiagnosis({
    Decimal sequence,
    @JsonKey(name: '_sequence') Element sequenceElement,
    CodeableConcept diagnosisCodeableConcept,
    Reference diagnosisReference,
    List<CodeableConcept> type,
    CodeableConcept packageCode,
  }) = _ExplanationOfBenefitDiagnosis;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitDiagnosis.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitDiagnosis.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitDiagnosisFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitProcedure
    implements _$ExplanationOfBenefitProcedure {
  ExplanationOfBenefitProcedure._();
  factory ExplanationOfBenefitProcedure({
    Decimal sequence,
    @JsonKey(name: '_sequence') Element sequenceElement,
    Date date,
    @JsonKey(name: '_date') Element dateElement,
    CodeableConcept procedureCodeableConcept,
    Reference procedureReference,
  }) = _ExplanationOfBenefitProcedure;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitProcedure.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitProcedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitProcedure.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitProcedure.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitProcedureFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitInsurance
    implements _$ExplanationOfBenefitInsurance {
  ExplanationOfBenefitInsurance._();
  factory ExplanationOfBenefitInsurance({
    Reference coverage,
    List<String> preAuthRef,
    @JsonKey(name: '_preAuthRef') List<Element> preAuthRefElement,
  }) = _ExplanationOfBenefitInsurance;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitInsurance.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitInsurance.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitInsuranceFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitAccident
    implements _$ExplanationOfBenefitAccident {
  ExplanationOfBenefitAccident._();
  factory ExplanationOfBenefitAccident({
    Date date,
    @JsonKey(name: '_date') Element dateElement,
    CodeableConcept type,
    Address locationAddress,
    Reference locationReference,
  }) = _ExplanationOfBenefitAccident;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitAccident.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitAccident.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitAccident.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitAccident.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitAccidentFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitItem implements _$ExplanationOfBenefitItem {
  ExplanationOfBenefitItem._();
  factory ExplanationOfBenefitItem({
    Decimal sequence,
    @JsonKey(name: '_sequence') Element sequenceElement,
    List<Id> careTeamLinkId,
    @JsonKey(name: '_careTeamLinkId') List<Element> careTeamLinkIdElement,
    List<Id> diagnosisLinkId,
    @JsonKey(name: '_diagnosisLinkId') List<Element> diagnosisLinkIdElement,
    List<Id> procedureLinkId,
    @JsonKey(name: '_procedureLinkId') List<Element> procedureLinkIdElement,
    List<Id> informationLinkId,
    @JsonKey(name: '_informationLinkId') List<Element> informationLinkIdElement,
    CodeableConcept revenue,
    CodeableConcept category,
    CodeableConcept service,
    List<CodeableConcept> modifier,
    List<CodeableConcept> programCode,
    Date servicedDate,
    @JsonKey(name: '_servicedDate') Element servicedDateElement,
    Period servicedPeriod,
    CodeableConcept locationCodeableConcept,
    Address locationAddress,
    Reference locationReference,
    Quantity quantity,
    Money unitPrice,
    Decimal factor,
    @JsonKey(name: '_factor') Element factorElement,
    Money net,
    List<Reference> udi,
    CodeableConcept bodySite,
    List<CodeableConcept> subSite,
    List<Reference> encounter,
    List<Decimal> noteNumber,
    @JsonKey(name: '_noteNumber') List<Element> noteNumberElement,
    List<ExplanationOfBenefitAdjudication> adjudication,
    List<ExplanationOfBenefitDetail> detail,
  }) = _ExplanationOfBenefitItem;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitItem.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitItem.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitItem.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitItemFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitAdjudication
    implements _$ExplanationOfBenefitAdjudication {
  ExplanationOfBenefitAdjudication._();
  factory ExplanationOfBenefitAdjudication({
    @required CodeableConcept category,
    CodeableConcept reason,
    Money amount,
    Decimal value,
    @JsonKey(name: '_value') Element valueElement,
  }) = _ExplanationOfBenefitAdjudication;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitAdjudication.fromYaml(dynamic yaml) =>
      yaml is String
          ? ExplanationOfBenefitAdjudication.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))))
          : yaml is YamlMap
              ? ExplanationOfBenefitAdjudication.fromJson(
                  jsonDecode(jsonEncode(yaml)))
              : null;

  factory ExplanationOfBenefitAdjudication.fromJson(
          Map<String, dynamic> json) =>
      _$ExplanationOfBenefitAdjudicationFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitDetail
    implements _$ExplanationOfBenefitDetail {
  ExplanationOfBenefitDetail._();
  factory ExplanationOfBenefitDetail({
    Decimal sequence,
    @JsonKey(name: '_sequence') Element sequenceElement,
    @required CodeableConcept type,
    CodeableConcept revenue,
    CodeableConcept category,
    CodeableConcept service,
    List<CodeableConcept> modifier,
    List<CodeableConcept> programCode,
    Quantity quantity,
    Money unitPrice,
    Decimal factor,
    @JsonKey(name: '_factor') Element factorElement,
    Money net,
    List<Reference> udi,
    List<Decimal> noteNumber,
    @JsonKey(name: '_noteNumber') List<Element> noteNumberElement,
    List<ExplanationOfBenefitAdjudication> adjudication,
    List<ExplanationOfBenefitSubDetail> subDetail,
  }) = _ExplanationOfBenefitDetail;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitDetail.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitDetail.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitDetail.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitDetailFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitSubDetail
    implements _$ExplanationOfBenefitSubDetail {
  ExplanationOfBenefitSubDetail._();
  factory ExplanationOfBenefitSubDetail({
    Decimal sequence,
    @JsonKey(name: '_sequence') Element sequenceElement,
    @required CodeableConcept type,
    CodeableConcept revenue,
    CodeableConcept category,
    CodeableConcept service,
    List<CodeableConcept> modifier,
    List<CodeableConcept> programCode,
    Quantity quantity,
    Money unitPrice,
    Decimal factor,
    @JsonKey(name: '_factor') Element factorElement,
    Money net,
    List<Reference> udi,
    List<Decimal> noteNumber,
    @JsonKey(name: '_noteNumber') List<Element> noteNumberElement,
    List<ExplanationOfBenefitAdjudication> adjudication,
  }) = _ExplanationOfBenefitSubDetail;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitSubDetail.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitSubDetail.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitSubDetailFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitAddItem
    implements _$ExplanationOfBenefitAddItem {
  ExplanationOfBenefitAddItem._();
  factory ExplanationOfBenefitAddItem({
    List<Id> sequenceLinkId,
    @JsonKey(name: '_sequenceLinkId') List<Element> sequenceLinkIdElement,
    CodeableConcept revenue,
    CodeableConcept category,
    CodeableConcept service,
    List<CodeableConcept> modifier,
    Money fee,
    List<Decimal> noteNumber,
    @JsonKey(name: '_noteNumber') List<Element> noteNumberElement,
    List<ExplanationOfBenefitAdjudication> adjudication,
    List<ExplanationOfBenefitDetail1> detail,
  }) = _ExplanationOfBenefitAddItem;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitAddItem.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitAddItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitAddItem.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitAddItem.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitAddItemFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitDetail1
    implements _$ExplanationOfBenefitDetail1 {
  ExplanationOfBenefitDetail1._();
  factory ExplanationOfBenefitDetail1({
    CodeableConcept revenue,
    CodeableConcept category,
    CodeableConcept service,
    List<CodeableConcept> modifier,
    Money fee,
    List<Decimal> noteNumber,
    @JsonKey(name: '_noteNumber') List<Element> noteNumberElement,
    List<ExplanationOfBenefitAdjudication> adjudication,
  }) = _ExplanationOfBenefitDetail1;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitDetail1.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitDetail1.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitDetail1FromJson(json);
}

@freezed
abstract class ExplanationOfBenefitPayment
    implements _$ExplanationOfBenefitPayment {
  ExplanationOfBenefitPayment._();
  factory ExplanationOfBenefitPayment({
    CodeableConcept type,
    Money adjustment,
    CodeableConcept adjustmentReason,
    Date date,
    @JsonKey(name: '_date') Element dateElement,
    Money amount,
    Identifier identifier,
  }) = _ExplanationOfBenefitPayment;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitPayment.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitPayment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitPayment.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitPayment.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitPaymentFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitProcessNote
    implements _$ExplanationOfBenefitProcessNote {
  ExplanationOfBenefitProcessNote._();
  factory ExplanationOfBenefitProcessNote({
    Decimal number,
    @JsonKey(name: '_number') Element numberElement,
    CodeableConcept type,
    String text,
    @JsonKey(name: '_text') Element textElement,
    CodeableConcept language,
  }) = _ExplanationOfBenefitProcessNote;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitProcessNote.fromYaml(dynamic yaml) =>
      yaml is String
          ? ExplanationOfBenefitProcessNote.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))))
          : yaml is YamlMap
              ? ExplanationOfBenefitProcessNote.fromJson(
                  jsonDecode(jsonEncode(yaml)))
              : null;

  factory ExplanationOfBenefitProcessNote.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitProcessNoteFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitBenefitBalance
    implements _$ExplanationOfBenefitBenefitBalance {
  ExplanationOfBenefitBenefitBalance._();
  factory ExplanationOfBenefitBenefitBalance({
    @required CodeableConcept category,
    CodeableConcept subCategory,
    Boolean excluded,
    @JsonKey(name: '_excluded') Element excludedElement,
    String name,
    @JsonKey(name: '_name') Element nameElement,
    String description,
    @JsonKey(name: '_description') Element descriptionElement,
    CodeableConcept network,
    CodeableConcept unit,
    CodeableConcept term,
    List<ExplanationOfBenefitFinancial> financial,
  }) = _ExplanationOfBenefitBenefitBalance;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitBenefitBalance.fromYaml(dynamic yaml) =>
      yaml is String
          ? ExplanationOfBenefitBenefitBalance.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))))
          : yaml is YamlMap
              ? ExplanationOfBenefitBenefitBalance.fromJson(
                  jsonDecode(jsonEncode(yaml)))
              : null;

  factory ExplanationOfBenefitBenefitBalance.fromJson(
          Map<String, dynamic> json) =>
      _$ExplanationOfBenefitBenefitBalanceFromJson(json);
}

@freezed
abstract class ExplanationOfBenefitFinancial
    implements _$ExplanationOfBenefitFinancial {
  ExplanationOfBenefitFinancial._();
  factory ExplanationOfBenefitFinancial({
    @required CodeableConcept type,
    Decimal allowedUnsignedInt,
    @JsonKey(name: '_allowedUnsignedInt') Element allowedUnsignedIntElement,
    String allowedString,
    @JsonKey(name: '_allowedString') Element allowedStringElement,
    Money allowedMoney,
    Decimal usedUnsignedInt,
    @JsonKey(name: '_usedUnsignedInt') Element usedUnsignedIntElement,
    Money usedMoney,
  }) = _ExplanationOfBenefitFinancial;

  String toYamlString() => json2yaml(toJson());

  YamlMap toYamlMap() => loadYaml(jsonEncode(toJson()));

  factory ExplanationOfBenefitFinancial.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitFinancial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? ExplanationOfBenefitFinancial.fromJson(jsonDecode(jsonEncode(yaml)))
          : null;

  factory ExplanationOfBenefitFinancial.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitFinancialFromJson(json);
}
