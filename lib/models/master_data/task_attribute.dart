import 'task_definition.dart';

class TaskAttribute {
  int id;
  String attribute;
  String value;
  int taskDefinitionId;
  TaskDefinition? taskDefinition;

  TaskAttribute({
    required this.id,
    required this.attribute,
    required this.value,
    required this.taskDefinitionId,
    this.taskDefinition,
  });

  factory TaskAttribute.fromJson(Map<String, dynamic> json) {
    return TaskAttribute(
      id: json['id'],
      attribute: json['attribute'],
      value: json['value'],
      taskDefinitionId: json['taskDefinitionId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'attribute': attribute, 'value': value, 'taskDefinitionId': taskDefinitionId};
  }
}
