#!/bin/zsh

##
# Plugins
#

# -a establece el tipo de variable como un arreglo.
local -a plugins=(
  marlonrichert/zsh-autocomplete      # Completado en tiempo real
  softmoth/zsh-vim-mode               # Vim atajos de teclado
  # marlonrichert/zcolors               # Colores para completados y Git
  zsh-users/zsh-autosuggestions       # Sugerencias en línea
  zsh-users/zsh-syntax-highlighting   # Resaltado de sintaxis en la línea de comandos
)

# El plugin Zsh Autocomplete envía *muchos* caracteres a tu terminal.
# Esto no es un problema en máquinas modernas localmente, pero si estás trabajando a través de una conexión SSH lenta,
# es posible que desees agregar un pequeño retraso antes de que se active el autocompletado:
#   zstyle ':autocomplete:*' min-delay 0.5  # segundos
#
# Si tu conexión es MUY lenta, es posible que desees desactivar el autocompletado por completo y utilizar solo el completado mediante la tecla TAB:
#   zstyle ':autocomplete:*' async no

# Acelera el inicio clonando todos los plugins en paralelo.
# Esto no clonará los plugins que ya tengamos.
znap clone $plugins

# Carga cada plugin, uno a la vez.
local p=
for p in $plugins; do
  znap source $p
done

# `znap eval <nombre> '<comando>'` es similar a `eval "$( <comando> )"` pero con
# caché y compilación de la salida del <comando>, lo que lo hace ~10 veces más rápido.
znap eval zcolors zcolors   # Código de inicialización adicional necesario para zcolors.
