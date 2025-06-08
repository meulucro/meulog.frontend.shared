# 📦 meulog_frontend_components

Pacote de componentes Flutter reutilizáveis para o ecossistema Meulog. Este projeto foi criado para padronizar elementos visuais e interativos entre os apps Web e Mobile.

Criado por [Fernando-Braulio](https://github.com/Fernando-Braulio)

---

## 🚀 Objetivo

Este pacote centraliza componentes visuais como botões, campos de texto, scaffolds e dialogs, para manter consistência e facilitar manutenção e evolução visual.

---

## 🚀 Como visualizar os componentes

Este pacote inclui um projeto `example/` que pode ser executado via Flutter Web para pré-visualização dos componentes.

```bash
flutter run -d chrome --target=example/main.dart
```

## 📁 Estrutura Atual

- `MButton` → botão padrão estilizado
- `MTextField` → campo de texto com borda arredondada e padding

---

## 📦 Como Usar

### 🔗 Via Git (recomendado)

No seu `pubspec.yaml` de outro projeto:

```yaml
dependencies:
  meulog_frontend_components:
    git:
      url: git@github.com:meulucro/meulog.frontend.components.git
```

> ⚠️ Repositório precisa ser privado e o acesso deve estar configurado com SSH ou token.

---

### 💻 Localmente (durante desenvolvimento)

```yaml
dependencies:
  meulog_frontend_components:
    path: ../meulog.frontend.components
```

---

## ✅ Como Importar

```dart
import 'package:meulog_frontend_components/m_components.dart';

...

MButton(label: 'Salvar', onPressed: () => print('Clique'));
MTextField(label: 'Nome', controller: TextEditingController());
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