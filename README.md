# Setup macOS - Script Post-Formato de Franco

Este repositorio contiene un script para configurar rápidamente un Mac con Apple Silicon después de una instalación limpia o formateo.  
El objetivo es instalar herramientas esenciales, apps útiles y dejar el sistema optimizado para desarrollo y uso diario.

---

## Contenido

- `setup-macos.sh`: Script principal para instalar paquetes y hacer configuraciones.
- `README.md`: Documentación y guía rápida de uso.

---

## ¿Qué hace el script?

Este script es interactivo: al ejecutarlo, verás un menú donde puedes elegir qué secciones instalar o configurar. Incluye opciones para:

- Instalar Homebrew (si no está instalado).
- Instalar herramientas CLI esenciales:
  - git, htop, neofetch, bat, wget, tree
- Instalar apps gráficas:
  - Visual Studio Code, Brave Browser, iTerm2, Discord, Rectangle
- Instalar lenguajes de programación:
  - Python, Node.js, Dart
- Instalar Xcode Command Line Tools.
- Aplicar configuraciones del sistema para mejor rendimiento:
  - Reduce animaciones y transparencias
- Ejecutar todas las opciones anteriores de una sola vez.

---

## Uso

1. Clona este repositorio:

```bash
git clone https://github.com/tuusuario/franco-setup.git
cd franco-setup
```

2. Da permisos de ejecución al script:

```bash
chmod +x setup-macos.sh
```

3. Ejecuta el script y sigue las instrucciones del menú:

```bash
./setup-macos.sh
```

4. Sigue las instrucciones en pantalla y espera a que termine.

---

## Requisitos

- Mac con chip Apple Silicon (M1, M2, etc.).
- Conexión a internet para descargar paquetes.
- Tener Xcode Command Line Tools instalados (el script puede instalarlos si es necesario).

---

## Personalización

Puedes modificar `setup-macos.sh` para agregar o quitar paquetes, cambiar configuraciones o incluir nuevos scripts.

---

## Contacto

Si tienes dudas o sugerencias, contáctame en [tu-email@ejemplo.com] o abre un issue en este repositorio.

---

¡Listo para dejar tu Mac afilado como una navaja!
