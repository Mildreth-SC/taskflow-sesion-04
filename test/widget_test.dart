import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:taskflow/main.dart';

void main() {
  testWidgets('cada tarjeta abre su detalle y se puede volver', (tester) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const TaskFlowApp());

    await openTask(tester, 'Crear el proyecto TaskFlow');
    expect(find.text('Detalle de tarea'), findsOneWidget);
    expect(
      find.text('Generar la app y revisar la carpeta android'),
      findsOneWidget,
    );
    expect(find.text('Prioridad: Alta'), findsOneWidget);
    expect(find.text('Estado: completada'), findsOneWidget);
    expect(
      find.text('Acción contextual: esta tarea ya está completada.'),
      findsOneWidget,
    );
    expect(routeOf(tester), '/task/1');

    await tester.tap(find.text('Volver al listado'));
    await tester.pumpAndSettle();
    expect(find.text('Mis tareas'), findsOneWidget);
    expect(find.text('Crear el proyecto TaskFlow'), findsOneWidget);
    expect(routeOf(tester), '/');

    await openTask(tester, 'Probar el panel de tareas');
    expect(find.text('Estado: pendiente'), findsOneWidget);
    expect(
      find.text('Acción contextual: esta tarea sigue pendiente.'),
      findsOneWidget,
    );
    expect(routeOf(tester), '/task/3');
    expect(find.byType(BackButton), findsOneWidget);
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.text('Mis tareas'), findsOneWidget);

    await openTask(tester, 'Preparar el detalle');
    expect(find.text('Prioridad: Baja'), findsOneWidget);
    expect(
      find.text('Dejar lista la acción para abrir una tarea'),
      findsOneWidget,
    );
    expect(routeOf(tester), '/task/5');
  });
}

Future<void> openTask(WidgetTester tester, String title) async {
  await tester.scrollUntilVisible(find.text(title), 200);
  await tester.tap(find.text(title));
  await tester.pumpAndSettle();
}

String routeOf(WidgetTester tester) {
  final context = tester.element(find.byType(Scaffold).first);
  return GoRouterState.of(context).uri.toString();
}
