class ModelBase {
  DateTime? createdOn;
  int? createdById;
  DateTime? modifiedOn;
  int? modifiedById;
  bool deleted;
  DateTime? deletedOn;
  int? deletedById;

  ModelBase({
    this.createdOn,
    this.createdById,
    this.modifiedOn,
    this.modifiedById,
    this.deleted = false,
    this.deletedOn,
    this.deletedById,
  });

  factory ModelBase.fromJson(Map<String, dynamic> json) {
    return ModelBase(
      createdOn: json['createdOn'] != null ? DateTime.parse(json['createdOn']) : null,
      createdById: json['createdById'],
      modifiedOn: json['modifiedOn'] != null ? DateTime.parse(json['modifiedOn']) : null,
      modifiedById: json['modifiedById'],
      deleted: json['deleted'] ?? false,
      deletedOn: json['deletedOn'] != null ? DateTime.parse(json['deletedOn']) : null,
      deletedById: json['deletedById'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'createdOn': createdOn?.toIso8601String(),
      'createdById': createdById,
      'modifiedOn': modifiedOn?.toIso8601String(),
      'modifiedById': modifiedById,
      'deleted': deleted,
      'deletedOn': deletedOn?.toIso8601String(),
      'deletedById': deletedById,
    };
  }
}
