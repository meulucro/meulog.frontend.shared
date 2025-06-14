import 'dart:convert';

import 'package:meulog_shared/enums.dart';
import 'package:meulog_shared/formatters.dart';

class CollaboratorModel {
  int? id;
  String? fullName;
  String? preferredName;
  String? email;
  int? phone;
  String? password;
  UserRole? role;
  bool? emailConfirmed;
  DateTime? createdDate;
  DateTime? updatedDate;
  DateTime? emailConfirmedDate;
  int? companyId;
  PeriodEnum? period;
  CostCenterEnum? costCenter;
  RecruitmentRegimeEnum? recruitmentRegime;
  double? salary;
  double? commissions;
  double? benefits;
  bool active;

  CollaboratorModel({
    this.id,
    this.fullName,
    this.preferredName,
    this.email,
    this.phone,
    this.password,
    this.role,
    this.emailConfirmed,
    this.createdDate,
    this.updatedDate,
    this.emailConfirmedDate,
    this.companyId,
    this.period,
    this.costCenter,
    this.recruitmentRegime,
    this.salary,
    this.commissions,
    this.benefits,
    this.active = true,
  });

  factory CollaboratorModel.fromMap(Map<String, dynamic> map) {
    return CollaboratorModel(
      id: map['id'],
      fullName: map['fullName'],
      preferredName: map['preferredName'],
      email: map['email'],
      phone: map['phone'],
      password: map['password'],
      role: map['role'] != null ? UserRole.values[map['role']] : null,
      emailConfirmed: map['emailConfirmed'],
      createdDate: DateTime.parse(map['createdDate']).convertBrazilTime(),
      updatedDate: map['updatedDate'] != null ? DateTime.parse(map['updatedDate']).convertBrazilTime() : null,
      emailConfirmedDate: map['emailConfirmedDate'] != null
          ? DateTime.parse(map['emailConfirmedDate']).convertBrazilTime()
          : null,
      companyId: map['companyId'],
      period: map['period'] != null ? PeriodEnum.values.firstWhere((item) => item.value == map['period']) : null,
      costCenter: map['costCenter'] != null
          ? CostCenterEnum.values.firstWhere((item) => item.value == map['costCenter'])
          : null,
      recruitmentRegime: map['recruitmentRegime'] != null
          ? RecruitmentRegimeEnum.values.firstWhere((item) => item.value == map['recruitmentRegime'])
          : null,
      salary: map['salary']?.toDouble(),
      commissions: map['commissions']?.toDouble(),
      benefits: map['benefits']?.toDouble(),
      active: map['active'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'preferredName': preferredName,
      'email': email,
      'phone': phone,
      'password': password,
      'role': role?.value,
      'emailConfirmed': emailConfirmed,
      'createdDate': createdDate?.toUtc().toIso8601String(),
      'updatedDate': updatedDate?.toUtc().toIso8601String(),
      'emailConfirmedDate': emailConfirmedDate?.toUtc().toIso8601String(),
      'companyId': companyId,
      'period': period?.value,
      'costCenter': costCenter?.value,
      'recruitmentRegime': recruitmentRegime?.value,
      'salary': salary,
      'commissions': commissions,
      'benefits': benefits,
      'active': active,
    };
  }

  String toJson() => json.encode(toMap());

  factory CollaboratorModel.fromJson(String source) => CollaboratorModel.fromMap(json.decode(source));
}
