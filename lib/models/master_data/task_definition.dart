import 'model_base.dart';
import 'task_attribute.dart';

class TaskDefinition extends ModelBase {
  int id;
  String taskType;
  String? taskTypeDescription;
  String? taskSubType;
  String? taskSubTypeDescription;
  List<TaskAttribute> attributes;

  TaskDefinition({
    required this.id,
    required this.taskType,
    this.taskTypeDescription,
    this.taskSubType,
    this.taskSubTypeDescription,
    this.attributes = const [],
    super.createdOn,
    super.createdById,
    super.modifiedOn,
    super.modifiedById,
    super.deleted,
    super.deletedOn,
    super.deletedById,
  });

  factory TaskDefinition.fromJson(Map<String, dynamic> json) {
    return TaskDefinition(
      id: json['id'],
      taskType: json['taskType'],
      taskTypeDescription: json['taskTypeDescription'],
      taskSubType: json['taskSubType'],
      taskSubTypeDescription: json['taskSubTypeDescription'],
      attributes: (json['attributes'] as List<dynamic>?)?.map((e) => TaskAttribute.fromJson(e)).toList() ?? [],
      createdOn: json['createdOn'] != null ? DateTime.parse(json['createdOn']) : null,
      createdById: json['createdById'],
      modifiedOn: json['modifiedOn'] != null ? DateTime.parse(json['modifiedOn']) : null,
      modifiedById: json['modifiedById'],
      deleted: json['deleted'] ?? false,
      deletedOn: json['deletedOn'] != null ? DateTime.parse(json['deletedOn']) : null,
      deletedById: json['deletedById'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'taskType': taskType,
      'taskTypeDescription': taskTypeDescription,
      'taskSubType': taskSubType,
      'taskSubTypeDescription': taskSubTypeDescription,
      'attributes': attributes.map((a) => a.toJson()).toList(),
      ...super.toJson(),
    };
  }
}
