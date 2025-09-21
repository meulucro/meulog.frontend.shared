typedef KeySelector<T> = Object? Function(T item);

class DuplicateResult<T> {
  /// label -> (key -> índices onde aparece)
  final Map<String, Map<Object, List<int>>> by;

  DuplicateResult(this.by);

  bool get hasAny => by.values.any((m) => m.values.any((idx) => idx.length > 1));

  /// Todos os índices que estão duplicados, somando todos os seletores
  Set<int> get allIndexes {
    final s = <int>{};
    for (final m in by.values) {
      for (final idx in m.values) {
        if (idx.length > 1) s.addAll(idx);
      }
    }
    return s;
  }

  String humanize({String entity = 'item'}) {
    if (!hasAny) return '';
    final parts = <String>[];
    by.forEach((label, map) {
      final dups = map.entries.where((e) => e.value.length > 1).toList();
      if (dups.isEmpty) return;
      final segs = dups
          .map((e) {
            final keyStr = e.key.toString();
            final pos = e.value.map((i) => '#${i + 1}').join(', ');
            return '$keyStr → $pos';
          })
          .join(' | ');
      parts.add('Duplicados por $label: $segs');
    });
    return parts.join('\n');
  }
}

mixin DuplicateValidationMixin {
  /// Normaliza String (trim + upper). Mantém outros tipos como estão.
  Object? normalizeKey(Object? v) {
    if (v == null) return null;
    if (v is String) {
      final t = v.trim();
      return t.isEmpty ? null : t.toUpperCase();
    }
    return v;
  }

  /// Encontra duplicados para 1..N seletores (ex.: Id, Key, etc.)
  DuplicateResult<T> findDuplicates<T>({required List<T> items, required Map<String, KeySelector<T>> selectors}) {
    final result = <String, Map<Object, List<int>>>{};

    selectors.forEach((label, selector) {
      final map = <Object, List<int>>{};
      for (var i = 0; i < items.length; i++) {
        final rawKey = selector(items[i]);
        final key = normalizeKey(rawKey);
        if (key == null) continue; // ignora vazios
        map.putIfAbsent(key, () => []).add(i);
      }
      result[label] = map;
    });

    return DuplicateResult<T>(result);
  }
}
