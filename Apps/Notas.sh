#!/bin/sh

# nombre: notas
# descripcion: editor simple de notas en CoffiDOS

mkdir -p user/notes

while true; do
  clear
  echo "---- NOTES ----"
  echo "1) Crear nota"
  echo "2) Ver notas"
  echo "3) Borrar nota"
  echo "0) Salir"
  echo ""

  echo -n ">>> "
  read op

  case $op in
    1)
      echo -n "Nombre de la nota: "
      read name
      echo "Escribe contenido (CTRL+D para terminar):"
      cat > "user/notes/$name.txt"
      echo "Nota guardada."
      read dummy
      ;;
    2)
      clear
      echo "---- LISTA DE NOTAS ----"
      ls user/notes 2>/dev/null
      echo ""
      echo -n "Nombre de nota a ver: "
      read name
      echo ""
      cat "user/notes/$name.txt" 2>/dev/null || echo "No existe"
      echo ""
      read dummy
      ;;
    3)
      echo -n "Nombre de nota a borrar: "
      read name
      rm -f "user/notes/$name.txt"
      echo "Borrada."
      read dummy
      ;;
    0)
      break
      ;;
    *)
      echo "Opción inválida"
      sleep 1
      ;;
  esac
done
