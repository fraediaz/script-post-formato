#!/bin/bash

echo "🚀 Setup interactivo para macOS Apple Silicon"

# Función para instalar Homebrew si no está instalado
install_brew() {
  if ! command -v brew &> /dev/null; then
    echo "🍺 Instalando Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    echo "🍺 Homebrew ya está instalado."
  fi
  brew update
}

# Función para instalar CLI tools
install_cli_tools() {
  echo "📦 Instalando herramientas CLI esenciales..."
  brew install git htop neofetch bat wget tree
}

# Función para instalar apps gráficas
install_apps() {
  echo "📦 Instalando aplicaciones gráficas..."
  brew install --cask visual-studio-code
  brew install --cask brave-browser
  brew install --cask iterm2
  brew install --cask discord
  brew install --cask rectangle
}

# Función para instalar lenguajes
install_langs() {
  echo "🐍 Instalando lenguajes de programación..."
  brew install python
  brew install node
  brew install dart
}

# Función para instalar Xcode CLI tools
install_xcode_cli() {
  echo "🔧 Instalando Xcode Command Line Tools (si no están)..."
  xcode-select --install 2>/dev/null || echo "Xcode Command Line Tools ya instalados o en proceso."
}

# Función para aplicar configuraciones
apply_configs() {
  echo "⚙️ Aplicando configuraciones para mejor rendimiento..."
  defaults write com.apple.universalaccess reduceMotion -bool true
  defaults write com.apple.universalaccess reduceTransparency -bool true
  killall Dock
}

# Menú principal
PS3="Selecciona la opción que quieres ejecutar (o 0 para salir): "
options=(
  "Instalar Homebrew"
  "Instalar herramientas CLI esenciales"
  "Instalar aplicaciones gráficas"
  "Instalar lenguajes de programación"
  "Instalar Xcode Command Line Tools"
  "Aplicar configuraciones del sistema"
  "Ejecutar todo"
  "Salir"
)

select opt in "${options[@]}"; do
  case $opt in
    "Instalar Homebrew")
      install_brew
      ;;
    "Instalar herramientas CLI esenciales")
      install_cli_tools
      ;;
    "Instalar aplicaciones gráficas")
      install_apps
      ;;
    "Instalar lenguajes de programación")
      install_langs
      ;;
    "Instalar Xcode Command Line Tools")
      install_xcode_cli
      ;;
    "Aplicar configuraciones del sistema")
      apply_configs
      ;;
    "Ejecutar todo")
      install_brew
      install_cli_tools
      install_apps
      install_langs
      install_xcode_cli
      apply_configs
      ;;
    "Salir")
      echo "Saliendo..."
      break
      ;;
    *)
      echo "Opción inválida $REPLY"
      ;;
  esac
done

echo "✅ Setup terminado. Recomiendo reiniciar para aplicar cambios."