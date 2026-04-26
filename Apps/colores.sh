#!/bin/sh

mkdir -p user

while true; do
  clear
  echo "---- CoffiDOS TEMAS ----"
  echo ""
  echo "1) Verde"
  echo "2) Azul"
  echo "3) Rojo"
  echo "4) Amarillo"
  echo "5) Reset"
  echo "0) Salir"
  echo ""

  echo -n ">>> "
  read op

  case $op in
    1)
      echo 'COLOR="\033[0;32m"' > user/config.sh
      echo "Tema verde aplicado"
      ;;
    2)
      echo 'COLOR="\033[0;34m"' > user/config.sh
      echo "Tema azul aplicado"
      ;;
    3)
      echo 'COLOR="\033[0;31m"' > user/config.sh
      echo "Tema rojo aplicado"
      ;;
    4)
      echo 'COLOR="\033[0;33m"' > user/config.sh
      echo "Tema amarillo aplicado"
      ;;
    5)
      echo 'COLOR="\033[0m"' > user/config.sh
      echo "Tema reseteado"
      ;;
    0)
      break
      ;;
    *)
      echo "Opción inválida"
      ;;
  esac

  echo ""
  echo "Enter para continuar..."
  read dummy
done