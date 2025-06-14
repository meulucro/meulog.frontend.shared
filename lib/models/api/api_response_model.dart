class ApiResponseModel<T> {
  final T? data;
  final int? totalRecords;
  final bool success;
  final int? page;
  final int? pageSize;
  final List<String>? errors;
  final List<String>? informations;
  final List<String>? warnings;

  ApiResponseModel({
    this.data,
    this.totalRecords,
    required this.success,
    this.page = 1,
    this.pageSize = 10,
    this.errors,
    this.informations,
    this.warnings,
  });

  factory ApiResponseModel.fromJson(Map<String, dynamic> json, {T Function(dynamic)? mapData}) {
    return ApiResponseModel<T>(
      data: mapData != null ? mapData(json['data']) : json['data'],
      totalRecords: json['totalRecords'],
      success: json['success'] ?? false,
      page: json['page'] ?? 1,
      pageSize: json['pageSize'] ?? 10,
      errors: (json['errors'] as List?)?.cast<String>(),
      informations: (json['informations'] as List?)?.cast<String>(),
      warnings: (json['warnings'] as List?)?.cast<String>(),
    );
  }
}
