# FPGA-Tabanli-Trafik-Isigi-Kontrol-Sistemi-Tasarimi

FPGA tabanlı **trafik ışığı kontrol sistemi** tasarımı. İçerikte RTL (`TRI.vhd`), testbench (`tb_TRI.vhd`),
opsiyonel ModelSim/Questa betiği ve örnek dalga görüntüsü yer alır.

## Hızlı Başlangıç
```tcl
vsim -do scripts/run_vcd.do
```
Bu komut `waves/traffic.vcd` üretecek şekilde simülasyonu başlatır (dosya adlarını/testbench ismini betikte düzenleyebilirsiniz).

## Yapı
- `rtl/TRI.vhd` — Trafik ışığı kontrolcüsü (durum makinesi)
- `tb/tb_TRI.vhd` — Testbench (üst seviye: `tb_TRI`)
- `scripts/run_vcd.do` — Simülasyon & VCD betiği
- `waves/TRI_sim.png` — Ekran görüntüsü
- `docs/` — İlgili döküman ve arşiv

## Notlar
- VCD dosyaları büyük olabileceği için `waves/` gitignore kapsamındadır. Paylaşmak için istisnaen ekleyebilirsiniz.
