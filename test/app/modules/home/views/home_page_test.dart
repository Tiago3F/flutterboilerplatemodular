import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterboilerplatemodular/app/modules/home/views/home_page.dart';

void main() {
  testWidgets('Atualizar a interface do usuário ao incrementar o estado',
      (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyHomePage()));

    // O valor padrão é "0", conforme declarado em nosso provedor
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Incrementar o estado e renderizar novamente
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // O estado incrementou adequadamente
    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });

  testWidgets('O estado do contador não é compartilhado entre os testes', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyHomePage()));

    // O estado é "0" novamente, sem necessidade de desmontagem/configuração
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
