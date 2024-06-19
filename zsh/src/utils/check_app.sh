check_application() {
  # Función que verifica si una aplicación está instalada
  local app_name=$1

  if command -v "$app_name" > /dev/null 2>&1; then
    return 0
  else
    echo "ERROR: La aplicación '$app_name' no está instalada."
    return 1
  fi
}
