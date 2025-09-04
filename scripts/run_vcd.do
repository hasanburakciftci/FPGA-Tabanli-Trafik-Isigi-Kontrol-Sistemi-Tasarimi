# run_vcd.do — Trafik Işığı Kontrol Sistemi (opsiyonel VCD üretimi)
vlib work
vcom -2008 rtl/TRI.vhd
vcom -2008 tb/tb_TRI.vhd

# Testbench'i çalıştır
vsim -voptargs=+acc work.tb_TRI -t ns

# VCD
vcd file waves/traffic.vcd
# İstersen daralt: vcd add /tb_TRI/KI /tb_TRI/DI /tb_TRI/GI /tb_TRI/BI /tb_TRI/Clk
vcd add -r /tb_TRI/*

# Çalıştırma süresi: örnek 60 sn simülasyon (duruma göre değiştir)
run 60 s
vcd flush
quit -f
