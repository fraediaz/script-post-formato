# Setup macOS - Script Post-Formato de Franco

Este repositorio contiene un script para configurar rápidamente un Mac con Apple Silicon después de una instalación limpia o formateo.  
El objetivo es instalar herramientas esenciales, apps útiles y dejar el sistema optimizado para desarrollo y uso diario.

---

## Contenido

- `setup-macos.sh`: Script principal para instalar paquetes y hacer configuraciones.
- `README.md`: Documentación y guía rápida de uso.

---

## ¿Qué hace el script?

1. Instala Homebrew (si no está instalado).
2. Instala herramientas CLI esenciales:
   - git, htop, neofetch, bat, wget, tree
3. Instala apps gráficas básicas (puedes agregar más):
   - Visual Studio Code, Brave Browser, iTerm2, Discord, Rectangle
4. Instala lenguajes de programación:
   - Python, Node.js, Dart
5. Configura ajustes del sistema para mejorar rendimiento:
   - Reduce animaciones y transparencias
6. Opcionalmente instala herramientas adicionales y personaliza según tus necesidades.

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

3. Ejecuta el script:

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
