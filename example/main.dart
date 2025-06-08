import 'package:flutter/material.dart';
import 'package:meulog_frontend_components/m_components.dart';

void main() => runApp(const ComponentPreviewApp());

class ComponentPreviewApp extends StatelessWidget {
  const ComponentPreviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meulog Component Preview',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: const TextTheme(bodyMedium: AppTextStyles.body),
      ),
      home: const ComponentPreviewPage(),
    );
  }
}

class ComponentPreviewPage extends StatelessWidget {
  const ComponentPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Preview dos Componentes')),
      body: Padding(
        padding: AppPadding.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Exemplo de TextStyle:", style: AppTextStyles.heading),
            const SizedBox(height: 10),
            const Text("Subtítulo", style: AppTextStyles.subheading),
            const SizedBox(height: 20),
            // MTextField(label: 'Nome', controller: controller),
            const SizedBox(height: 20),
            MButton(
              'Salvar',
              onTap: () {
                debugPrint('Salvo com: ${controller.text}');
              },
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: AppDecoration.boxDecInk(),
              child: const Text("Caixa com decoração padrão"),
            ),
          ],
        ),
      ),
    );
  }
}
