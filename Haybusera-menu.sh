#!/bin/bash
clear
toilet -f big "Haybusera" | lolcat

show_menu() {
  echo ""
  echo "╔════════════════════════════════════╗"
  echo "║            ANA MENÜ               ║"
  echo "╠════════════════════════════════════╣"
  echo "║ 1) Özel Güçleri                   ║"
  echo "║ 2) Haybusera Kimdir?             ║"
  echo "║ 0) Çıkış                         ║"
  echo "╚════════════════════════════════════╝"
}

while true; do
  show_menu
  echo ""
  read -p "Bir seçim yap (1-2, 0): " secim
  clear
  toilet -f smblock "Haybusera" | lolcat
  echo ""

  case $secim in
    1)
      echo "⚡ Elektrik Hakimiyeti"
      echo "🔥 Alev Pençesi"
      ;;
    2)
      echo "Haybusera: Elementlerin savaşçısı."
      ;;
    0)
      echo "Çıkılıyor..." | lolcat
      break
      ;;
    *)
      echo "Geçersiz seçim" | lolcat
      ;;
  esac
done