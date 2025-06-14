String? onValidator<T>(T? value) {
  if (value == null) {
    return 'Campo obrigátorio';
  }

  if (value is String && value.isEmpty) {
    return 'Campo obrigátorio';
  }
  return null;
}
