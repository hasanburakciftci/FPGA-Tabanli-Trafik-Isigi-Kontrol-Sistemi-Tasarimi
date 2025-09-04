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
```
--------------------------------------------------------------------------------------------------------

## 🇬🇧 English

# FPGA-based Traffic Light Control System

FPGA-based **traffic light control system** design. Includes RTL (`TRI.vhd`), testbench (`tb_TRI.vhd`),
optional ModelSim/Questa script, and simulation outputs.

## Project Purpose
This project aims to control the states of traffic lights (Red, Yellow, Green) using a 
**finite state machine (FSM)** implemented on FPGA. The lights are activated in the correct sequence 
according to the clock signal.

> **Note:** The detailed sequence and timing of the lights are explained in the document 
`docs/FST_Vize_20247020.docx`.

## Structure
- `rtl/TRI.vhd` — Traffic light controller (FSM design)
- `tb/tb_TRI.vhd` — Testbench (top entity: `tb_TRI`)
- `scripts/run_vcd.do` — Simulation & VCD script
- `waves/traffic_full.zip` — Contains `traffic_full.vcd` waveform output
- `waves/TRI_sim.png` — Simulation waveform screenshot
- `docs/FST_Vize_20247020.docx` — Documentation describing the system and light sequence

## Simulation
Waveforms and VCD output are located in the Waves folder:

![TRI waveform](Waves/TRI_sim.png)

> **Note:** The VCD file is stored inside `waves/traffic_full.zip`. Extract it to view with 
tools such as ModelSim or GTKWave.

## Run
To run the simulation in ModelSim/Questa:
```tcl
vsim -do scripts/run_vcd.do
