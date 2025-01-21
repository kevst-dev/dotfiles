# Mis Dotfiles

Este repositorio contiene mis configuraciones personales para **Linux** y **Windows** usando [dotter](https://github.com/SuperCuber/dotter).

## Instalación

### Windows

Para configurar Dotter en Windows, crea un archivo `.dotter/local.toml` en el directorio raíz del repositorio con una estructura como:

```toml
includes = [".dotter/includes/windows.toml"]
packages = ["powershell", "nvim"]
```
### Linux

Para configurar Dotter en Linux, crea un archivo `.dotter/local.toml` en el directorio raíz del repositorio con una estructura como:

```toml
includes = [".dotter/includes/debian_cli.toml"]
packages = ["zsh", "nvim"]
```

includes = [".dotter/includes/debian_cli.toml"]
packages = ["zsh", "nvim"]

## Uso

Para aplicar las configuraciones, ejecuta Dotter en el directorio del repositorio:

```sh
dotter deploy
```

Esto aplicará las configuraciones definidas en el `local.toml` correspondiente al sistema operativo que estés utilizando.