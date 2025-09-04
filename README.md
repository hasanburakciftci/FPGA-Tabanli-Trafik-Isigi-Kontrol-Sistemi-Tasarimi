## Languages
[TR](#-türkçe) | [EN](#-english)

## 🇹🇷 Türkçe
# FPGA Tabanlı Trafik Işığı Kontrol Sistemi Tasarımı

FPGA tabanlı **trafik ışığı kontrol sistemi** tasarımı. İçerikte RTL (`TRI.vhd`), testbench (`tb_TRI.vhd`),
opsiyonel ModelSim/Questa betiği ve simülasyon çıktıları bulunmaktadır.

## Projenin Amacı
Bu proje, trafik ışıklarının durumlarını (Kırmızı, Sarı, Yeşil) FPGA üzerinde çalışan bir
**durum makinesi (FSM)** ile kontrol etmeyi amaçlar. Clock üzerinden trafik ışıklarının 
doğru sırayla yanması sağlanır. 

**Not:** Işıkların hangi sırayla yandığı ve süreleri `docs/FST_Vize_20247020.docx` dosyasında ayrıntılı olarak anlatılmaktadır.
 
## Yapı
- `rtl/TRI.vhd` — Trafik ışığı kontrolcüsü (FSM tasarımı)
- `tb/tb_TRI.vhd` — Testbench (üst entity: `tb_TRI`)
- `scripts/run_vcd.do` — Simülasyon & VCD betiği
- `waves/traffic_full.zip` — İçinde `traffic_full.vcd` simülasyon dalga çıktısı bulunur
- `waves/TRI_sim.png` — Dalga formu ekran görüntüsü
- `docs/` — İlgili dokümanlar

## Simülasyon
Dalga şekli ve VCD çıktısı Waves klasöründedir:

![TRI dalga şekli](Waves/TRI_sim.png)

> **Not:** VCD dosyası `waves/traffic_full.zip` içinde yer almaktadır. Çıkartarak ModelSim/GTKWave gibi araçlarla açabilirsiniz.

## Çalıştırma
ModelSim/Questa’da simülasyonu başlatmak için:
```tcl
vsim -do scripts/run_vcd.do
