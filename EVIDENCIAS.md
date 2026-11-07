# Evidencias de la sesión 4

Estas capturas y estos videos corresponden a la app de este repositorio, [taskflow-sesion-04](https://github.com/Mildreth-SC/taskflow-sesion-04). Son pantallas reales de un emulador Android remoto, con Flutter 3.47.9. La captura se hizo en el emulador, no en un teléfono físico. Los videos se grabaron en ese emulador; no son videos generados.

Las sesiones 1, 2 y 3 quedan fuera de este repositorio.

## Código fuente

El código de la app sigue en `4271f5e4571d25529f0bb53eff680bed2c6cbeba` (`feat: agregar navegación de tareas`, 2026-11-07 00:12:24 -0500).

`main` al añadir `sesion-04-ejecucion.mp4` es `e8c28c5f7f5d65d1e0bff0a9ba3982ecde23467b` (`docs: integrar README y evidencias de la sesión 4`). Este cambio no modifica `lib/`, `test/`, `pubspec.yaml`, `pubspec.lock` ni `LEEME.md`.

La nota de las primeras capturas indica que el APK de depuración (`flutter build apk --debug`) salió de un clon de este repositorio, con el paquete `com.example.taskflow` y la actividad `.MainActivity`, y que el código de la app no se editó. En ese clon se bajó la memoria de Gradle de 8G a 2G en `android/gradle.properties` para que el emulador siguiera en marcha. Este repositorio conserva `-Xmx8G`.

`sesion-04-listado-detalle-regreso.mp4` trae `creation_time` `2026-11-07T05:33:31.000000Z` y el metadato `com.android.version=15`.

## Entorno de captura

Datos de la nota de captura, comprobados en los archivos cuando el medio lo permite:

- Flutter 3.47.9 y Dart 3.13.7. `pubspec.yaml` pide Dart `^3.13.7`. `pubspec.lock` anota Flutter `>=3.47.0`.
- Imagen `system-images;android-35;google_apis;x86_64`: Android 15, API 35.
- AVD `taskflow_api35`, pantalla 1080×2400.
- Emulador remoto, dispositivo `emulator-5554`, arranque headless. El video de 9 s incluye el metadato `com.android.version=15`.
- PNG obtenidos con `screencap`. `sesion-04-listado-detalle-regreso.mp4` se grabó dentro del emulador con `screenrecord`.
- `sesion-04-ejecucion.mp4` es otra grabación del mismo emulador remoto (Android 15, API 35, Flutter 3.47.9), no de un teléfono físico.

## Archivos

| Archivo | Contenido | Medición |
| --- | --- | --- |
| `docs/evidencias/sesion-04-listado.png` | Listado **Mis tareas** | PNG 1080×2400, 172978 bytes, SHA-256 `eba92d563ebbf81756e17ab5389707d00cff97bc8fedd1984a8b6a5ceb421218` |
| `docs/evidencias/sesion-04-detalle.png` | Detalle **Probar el panel de tareas**: prioridad Alta, estado pendiente, acción contextual | PNG 1080×2400, 88408 bytes, SHA-256 `ea8c59cef270da0a56b5106c57c1f61e6cd8fd6853c5918c5a7960a91e0128bf` |
| `docs/evidencias/sesion-04-regreso.png` | Listado otra vez tras **Volver al listado** | PNG 1080×2400, 172978 bytes, SHA-256 `eba92d563ebbf81756e17ab5389707d00cff97bc8fedd1984a8b6a5ceb421218` |
| `docs/evidencias/sesion-04-listado-detalle-regreso.mp4` | Video anterior, 9 s: listado, detalle y regreso | H.264, 1080×2400, 25 fotogramas, 9,125522 s, 336850 bytes, SHA-256 `eb0a40fd0e0c4adc60e097fc64a2e86cfa2383db7e75853caf5b35af2a07ad58` |
| `docs/evidencias/sesion-04-ejecucion.mp4` | Video de la ejecución, 15,2 s: listado, detalle de **Probar el panel de tareas** (prioridad Alta, pendiente) y **Volver al listado** | H.264, 1080×2400, 24 fps, 364 fotogramas, 15,166667 s, 709514 bytes, SHA-256 `fcdb08bcd6d20dd15d7ec49fa640f4c7fbe76ba8af8f76fa6e2bad4020525cf2` |

`sesion-04-listado.png` y `sesion-04-regreso.png` tienen los mismos bytes. Al volver del detalle, el listado a pantalla completa queda igual.

Los fotogramas del video de 9 s muestran, en este orden, **Mis tareas**, el detalle de **Probar el panel de tareas** y otra vez **Mis tareas**. La barra de estado marca las 5:33.

Los fotogramas de `sesion-04-ejecucion.mp4` muestran el mismo recorrido en el emulador: **Mis tareas**, el detalle **Probar el panel de tareas** con **Prioridad: Alta**, **Estado: pendiente** y la acción contextual de tarea pendiente, y el listado otra vez después de **Volver al listado**. La barra de estado pasa de las 7:02 a las 7:03. Este archivo es el enlace principal del README. El de 9 s se conserva como grabación anterior.

## Cómo se ven en GitHub

El README incrusta los tres PNG con rutas relativas dentro de `docs/evidencias/`. El enlace principal del video es `docs/evidencias/sesion-04-ejecucion.mp4`. El video de 9 s sigue enlazado como `docs/evidencias/sesion-04-listado-detalle-regreso.mp4`. GitHub no reproduce estos MP4 dentro del README; cada enlace abre el archivo para verlo o descargarlo.
