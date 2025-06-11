#!/bin/bash

# Menü başlığı
show_banner() {
  toilet -f big "Haybusera" | lolcat
}

# Ana menü
show_menu() {
  echo ""
  echo "╔════════════════════════════════════╗"
  echo "║            ANA MENÜ               ║"
  echo "╠════════════════════════════════════╣"
  echo "║ 1) Özel Güçleri                   ║"
  echo "║ 2) Haybusera Kimdir?             ║"
  echo "║ 3) Takımı                        ║"
  echo "║ 4) Silahları                     ║"
  echo "║ 5) İcat Ettiği Büyüler           ║"
  echo "║ 6) Düşmanları                    ║"
  echo "║ 7) Efsanevi Dövüşleri            ║"
  echo "║ 8) Mirası ve Öğrencileri         ║"
  echo "║ 9) Güç Seviyesi / Evrimi         ║"
  echo "║ 10) Kaderi ve Geleceği           ║"
  echo "║ 0) Çıkış                         ║"
  echo "╚════════════════════════════════════╝"
}

# Sayfa içeriği
show_page() {
  clear
  toilet -f smblock "Haybusera" | lolcat
  echo ""

  case $1 in
    1)
      echo "╔═══ ÖZEL GÜÇLER ═══╗"
      echo "⚡ Elektrik Hakimiyeti  - Yıldırım çağırma, şok saldırılar"
      echo "🔥 Alev Pençesi        - Yakın dövüşte ateş hasarı"
      echo "🌪️ Rüzgar Adımları     - Yüksek hız, görünmez hareket"
      ;;
    2)
      echo "╔═══ HAYBUSERA KİMDİR? ═══╗"
      echo "Haybusera, elementlerle doğmuş kutsal bir savaşçıdır."
      echo "Yıldırım Tapınağı'nın son öğrencisidir."
      ;;
    3)
      echo "╔═══ TAKIMI ═══╗"
      echo "🌀 Kurozora - Sessiz su ninja"
      echo "🔥 Ignara - Alev büyücüsü"
      echo "💨 Velith - Rüzgar stratejisti"
      ;;
    4)
      echo "╔═══ SİLAHLARI ═══╗"
      echo "⚔️ Yıldırım Kılıcı - Her darbede elektrik yükü"
      echo "🔮 Yansıma Küresi - Büyüleri geri yansıtır"
      ;;
    5)
      echo "╔═══ BÜYÜLER ═══╗"
      echo "🧠 Gölge Kopyası - 3 yansıma oluşturur"
      echo "🕰️ Zaman Hapsi - Düşmanı 5 saniye durdurur"
      ;;
    6)
      echo "╔═══ DÜŞMANLARI ═══╗"
      echo "🦂 Scarnox - Zehir lordu"
      echo "🌑 Nihra - Karanlık büyücü"
      echo "🩸 Kragor - Haybusera'nın eski ustası"
      ;;
    7)
      echo "╔═══ EFSANEVİ DÖVÜŞLER ═══╗"
      echo "⚔️ Haybusera vs. Scarnox - Zehir Ormanı Savaşı"
      echo "🔥 Haybusera vs. Ignara - Alev Çölü'nde test savaşı"
      ;;
    8)
      echo "╔═══ MİRASI VE ÖĞRENCİLERİ ═══╗"
      echo "🧑‍🎓 Renka - Buz büyüsü öğrencisi"
      echo "🧑‍🎓 Flaren - Ateş kontrolcüsü"
      echo "🧑‍🎓 Yume - Rüya görme büyüsü"
      ;;
    9)
      echo "╔═══ GÜÇ SEVİYESİ / EVRİMİ ═══╗"
      echo "Lv.1: Yıldırımla Tanışma"
      echo "Lv.2: Element Uyanışı"
      echo "Lv.3: Kozmik Form - 'Raijin Haybusera'"
      ;;
    10)
      echo "╔═══ KADERİ VE GELECEĞİ ═══╗"
      echo "Haybusera, zamanı bükerek sonsuzluğa açılacak."
      echo "Kendini feda mı edecek? Yoksa yeni bir çağ mı başlatacak?"
      ;;
  esac

  echo ""
  echo "Menüye dönmek için 'm' yaz: "
  while true; do
    read -p "> " input
    if [[ $input == "m" || $input == "M" ]]; then
      clear
      show_banner
      show_menu
      break
    else
      echo "❗ Menüye dönmek için sadece 'm' yazmalısın."
    fi
  done
}

# Ekranı temizle ve sadece menü + başlık göster
clear
show_banner
show_menu

# Ana döngü
while true; do
  echo ""
  read -p "Seçim yap (1-10 | 0): " secim
  if [[ $secim =~ ^[0-9]+$ && $secim -ge 1 && $secim -le 10 ]]; then
    show_page $secim
  elif [[ $secim == "0" ]]; then
    echo "Çıkılıyor... Anime ruhu seninle olsun!" | lolcat
    break
  else
    echo "⚠️ Geçersiz giriş. 1-10 veya 0 gir."
  fi
done