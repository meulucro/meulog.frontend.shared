# 📦 meulog_shared

Pacote compartilhado Flutter para o ecossistema Meulog. Contém componentes visuais, estilos, utilitários, enums e modelos reutilizáveis entre os apps Web e Mobile.

Criado por [Fernando-Braulio](https://github.com/Fernando-Braulio)

---

## 🚀 Objetivo

Centralizar código reutilizável (UI e lógica leve) para manter consistência visual e técnica entre projetos Flutter.

---

## 🚀 Como visualizar os componentes

Este pacote inclui um projeto `example/` que pode ser executado via Flutter Web para pré-visualização dos componentes.

```bash
flutter run -d chrome --target=example/main.dart
```

## 📁 Estrutura Modular

- `components/` → botões, inputs, widgets reutilizáveis
- `theme/` → cores, estilos de texto, padding, decorações
- `utils/` → helpers como espaçamentos
- `models/` → modelos de dados globais
- `enums/` → enumerações compartilhadas

---

## 📦 Como Usar

### 🔗 Via Git (recomendado)

No seu `pubspec.yaml` de outro projeto:

```yaml
dependencies:
  meulog_shared:
    git:
      url: git@github.com:meulucro/meulog.frontend.shared.git
```

> ⚠️ Repositório precisa ser privado e o acesso deve estar configurado com SSH ou token.

---

### 💻 Localmente (durante desenvolvimento)

```yaml
dependencies:
  meulog_shared:
    path: ../meulog.frontend.shared
```

---

## ✅ Como Importar

```dart
import 'package:meulog_shared/components.dart';
import 'package:meulog_shared/theme.dart';
import 'package:meulog_shared/utils.dart';
```

---

## 📌 Boas Práticas

- Use este pacote em todos os projetos Flutter relacionados ao Meulog
- Adicione novos componentes de forma genérica e reutilizável
- Evite regras de negócio neste pacote

---

## 🛠 Contribuição

Este repositório não possui CI/CD. Atualizações são feitas via Git commit e consumo direto. Crie PRs com novos componentes conforme necessário.

---

© 2025 Meulog