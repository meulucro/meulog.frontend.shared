import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Componente genérico para validar regras de listas (ou qualquer regra de tela)
/// dentro de um Form. Usa um ChangeNotifier do tipo [C] para obter o estado
/// e executa [validator] para retornar a mensagem de erro (ou null).
class RuleFormField<C extends ChangeNotifier> extends StatelessWidget {
  const RuleFormField({
    super.key,
    required this.validator,
    this.autovalidateMode = AutovalidateMode.always,
    this.padding = const EdgeInsets.only(top: 4),
    this.textStyle,
    this.okBuilder,
  });

  /// Função que recebe o controller/ChangeNotifier e retorna:
  /// - String com a mensagem de erro -> inválido
  /// - null -> válido
  final String? Function(C controller) validator;

  /// Quando o campo deve se auto-validar.
  final AutovalidateMode autovalidateMode;

  /// Padding aplicado quando houver erro visível.
  final EdgeInsetsGeometry padding;

  /// Estilo do texto de erro (padrão: vermelho do tema atual).
  final TextStyle? textStyle;

  /// (Opcional) builder renderizado quando NÃO há erro.
  /// Por padrão, o widget não ocupa espaço (SizedBox.shrink()).
  final WidgetBuilder? okBuilder;

  @override
  Widget build(BuildContext context) {
    return Consumer<C>(
      builder: (_, controller, __) {
        return FormField<bool>(
          autovalidateMode: autovalidateMode,
          validator: (_) => validator(controller),
          builder: (state) {
            if (state.hasError) {
              return Padding(
                padding: padding,
                child: Text(
                  state.errorText!,
                  style: textStyle ?? TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              );
            }
            // Quando válido, desenha algo opcional (ex.: espaço, check, etc.)
            if (okBuilder != null) return okBuilder!(context);
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
