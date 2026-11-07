# TaskFlow — Sesión 4

Al tocar una tarjeta se abre el detalle de esa tarea y se puede volver al listado. El listado no se pierde. El código sigue en `lib/main.dart`. El paquete nuevo es `go_router`, agregado con `flutter pub add go_router` (la versión la elige Flutter).

## Rutas

- `/` muestra el listado.
- `/task/1`, `/task/2`, etc. muestran el detalle. El número es el id de la tarea.

La tarjeta solo pide abrir esa ruta. No decide los datos: el detalle busca la tarea con ese id en `demoTasks`.

## Qué muestra el detalle

- título
- descripción completa
- prioridad, en un chip
- estado: `completada` o `pendiente`
- una acción visual contextual: el ícono y la frase cambian si la tarea está completada o pendiente
- el botón **Volver al listado**

También puedes volver con la flecha de la barra o con el botón atrás del teléfono.

## Qué probar

1. Abre tres tarjetas distintas. Cada detalle debe mostrar sus propios datos.
2. Vuelve con **Volver al listado**.
3. Entra a otra y vuelve con el atrás del sistema.
4. Fíjate que la ruta cambia de id (`/task/1`, `/task/3`, `/task/5`).

Toma tú dos capturas o un video corto: listado, detalle y regreso.

Las cadenas del codelab usan `+`. Aquí se escriben con interpolación para que `flutter analyze` no marque avisos. El texto de la pantalla es el mismo.

## Comprobar

```bash
dart format lib
flutter analyze
flutter test
```

## Commit de esta sesión

Las sesiones 2, 3 y 4 cierran el domingo 8 de noviembre de 2026 a las 23:59 (UTC-5). Si se pasa esa hora, la entrega puede no ser aceptada.

```bash
git status
git add lib/main.dart pubspec.yaml pubspec.lock
git commit -m "feat: agregar navegación de tareas"
git push origin main
```

El mensaje del commit debe ir exactamente así.

En la página del proyecto integrador aparece otro mensaje, `feat: agregar detalle de tarea`. El codelab de la sesión 4 pide `feat: agregar navegación de tareas`. Usa este último: es el de la evidencia del laboratorio.
