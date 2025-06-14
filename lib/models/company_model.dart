import 'dart:convert';

import '../enums/activity_segment_enum.dart';
import '../enums/legal_classification_enum.dart';
import '../enums/tax_regime_enum.dart';
import 'collaborator_model.dart';

class CompanyModel {
  int? id;
  int? userId;
  CollaboratorModel? user;
  String cnpj;
  String corporateName;
  String postalCode;
  String address;
  String number;
  String complement;
  String neighborhood;
  String city;
  String state;
  String companyEmail;
  String brand;
  String phone;
  LegalClassificationEnum? legalClassification;
  TaxRegimeEnum? taxRegime;
  ActivitySegmentEnum? activitySegment;
  int? quantityVehicle;

  CompanyModel(
    this.id,
    this.userId,
    this.user,
    this.cnpj,
    this.corporateName,
    this.postalCode,
    this.address,
    this.number,
    this.complement,
    this.neighborhood,
    this.city,
    this.state,
    this.companyEmail,
    this.brand,
    this.phone,
    this.legalClassification,
    this.taxRegime,
    this.activitySegment,
    this.quantityVehicle,
  );

  CompanyModel copyWith({
    int? id,
    int? userId,
    CollaboratorModel? user,
    String? cnpj,
    String? corporateName,
    String? postalCode,
    String? address,
    String? number,
    String? complement,
    String? neighborhood,
    String? city,
    String? state,
    String? companyEmail,
    String? brand,
    String? phone,
    LegalClassificationEnum? legalClassification,
    TaxRegimeEnum? taxRegime,
    ActivitySegmentEnum? activitySegment,
    int? quantityVehicle,
  }) {
    return CompanyModel(
      id ?? this.id,
      userId ?? this.userId,
      user ?? this.user,
      cnpj ?? this.cnpj,
      corporateName ?? this.corporateName,
      postalCode ?? this.postalCode,
      address ?? this.address,
      number ?? this.number,
      complement ?? this.complement,
      neighborhood ?? this.neighborhood,
      city ?? this.city,
      state ?? this.state,
      companyEmail ?? this.companyEmail,
      brand ?? this.brand,
      phone ?? this.phone,
      legalClassification ?? this.legalClassification,
      taxRegime ?? this.taxRegime,
      activitySegment ?? this.activitySegment,
      quantityVehicle ?? this.quantityVehicle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'user': user?.toJson(),
      'cnpj': cnpj,
      'corporateName': corporateName,
      'postalCode': postalCode,
      'address': address,
      'number': number,
      'complement': complement,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'companyEmail': companyEmail,
      'brand': brand,
      'phone': phone,
      'legalClassification': legalClassification?.value,
      'taxRegime': taxRegime?.value,
      'activitySegment': activitySegment?.value,
      'quantityVehicle': quantityVehicle,
    };
  }

  factory CompanyModel.fromMap(Map<String, dynamic> map) {
    return CompanyModel(
      map['id'],
      map['userId'],
      map['user'] != null
          ? map['user'] is String
                ? CollaboratorModel.fromJson(map['user'])
                : CollaboratorModel.fromMap(map['user'])
          : null,
      map['cnpj'] ?? '',
      map['corporateName'] ?? '',
      map['postalCode'] ?? '',
      map['address'] ?? '',
      map['number'] ?? '',
      map['complement'] ?? '',
      map['neighborhood'] ?? '',
      map['city'] ?? '',
      map['state'] ?? '',
      map['companyEmail'] ?? '',
      map['brand'] ?? '',
      map['phone'] ?? '',
      map['legalClassification'] != null
          ? LegalClassificationEnum.values.firstWhere((item) => item.value == map['legalClassification'])
          : null,
      map['taxRegime'] != null ? TaxRegimeEnum.values.firstWhere((item) => item.value == map['taxRegime']) : null,
      map['activitySegment'] != null
          ? ActivitySegmentEnum.values.firstWhere((item) => item.value == map['activitySegment'])
          : null,
      map['quantityVehicle'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyModel.fromJson(String source) => CompanyModel.fromMap(json.decode(source));
}
