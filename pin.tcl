# -- /********************************版权声明**************************************
# -- **                              大西瓜团队
# -- **                            
# -- **----------------------------文件信息--------------------------
# -- ** 文件名称： 引脚配置，需结合原理图一起查看
# -- ** 创建日期：
# -- ** 功能描述：开发板引脚说明，该tcl脚本文件可以直接对引脚进行配置，而无需手动配置引脚
# -- **             详见开发实战文档《FPGA开发实战手册》中的脚本配置引脚。 
# -- ** 硬件平台：大西瓜第5代开发板 http://daxiguafpga.taobao.com
# -- ** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
# -- **---------------------------修改文件的相关信息----------------
# -- ** 修改人： 
# -- ** 修改日期：		
# -- ** 修改内容：
# -- *******************************************************************************/
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
set_global_assignment -name ENABLE_INIT_DONE_OUTPUT ON
#set_global_assignment -name CYCLONEIV_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
#set_global_assignment -name CYCLONEIV_RESERVE_INIT_DONE_AFTER_CONFIGURATION "USE AS REGULAR IO"
# -- *******************************************#
# ------------------时钟clk---------------------#
# -- *******************************************#
set_location_assignment PIN_E1 -to clk
# -- *******************************************#
# ------------------复位reset_n（软复位）-------#
# -- *******************************************#
#key1
set_location_assignment PIN_E15 -to reset_n
# -- *******************************************#
# ------------------led---------------------#
# -- *******************************************#
set_location_assignment PIN_D4 -to led[0]
set_location_assignment PIN_E5 -to led[1]
set_location_assignment PIN_F5 -to led[2]
set_location_assignment PIN_B1 -to led[3]
set_location_assignment PIN_C2 -to led[4]
set_location_assignment PIN_F3 -to led[5]
set_location_assignment PIN_D1 -to led[6]
set_location_assignment PIN_G5 -to led[7]
# -- *******************************************#
# ------------------数码管SEG---------------------#
# -- *******************************************#
set_location_assignment PIN_F2 -to duan[0]
set_location_assignment PIN_F1 -to duan[1]
set_location_assignment PIN_G2 -to duan[2]
set_location_assignment PIN_G1 -to duan[3]
set_location_assignment PIN_J2 -to duan[4]
set_location_assignment PIN_J1 -to duan[5]
set_location_assignment PIN_J6 -to duan[6]
set_location_assignment PIN_K6 -to duan[7]
		                           
set_location_assignment PIN_A3 -to wei[3]
set_location_assignment PIN_B3 -to wei[2]
set_location_assignment PIN_C3 -to wei[1]
set_location_assignment PIN_D3 -to wei[0]
# -- *******************************************#
# ------------------蜂鸣器FM---------------------#
# -- *******************************************#
set_location_assignment PIN_R16 -to beep
# -- *******************************************#
# ------------------独立按键key------------------#
# -- *******************************************#
#key2--#key5
set_location_assignment PIN_E16 -to key[0]
set_location_assignment PIN_M1  -to key[1]
set_location_assignment PIN_M2  -to key[2]
set_location_assignment PIN_M15 -to key[3]
# -- *******************************************#
# ------------------串口UART---------------------#
# -- *******************************************#
set_location_assignment PIN_C14 -to rxd
set_location_assignment PIN_D14 -to txd
# -- *******************************************#
# ------------------IIC接口IIC-------------------#
# -- *******************************************#
set_location_assignment PIN_L7 -to iic_scl
set_location_assignment PIN_T6 -to iic_sda
# -- *******************************************#
# -----------------lcd1602/lcd12864接口-lcd------#
# -- *******************************************#
set_location_assignment PIN_E7 -to lcd1602_Data[0]
set_location_assignment PIN_E6 -to lcd1602_Data[1]
set_location_assignment PIN_A5 -to lcd1602_Data[2]
set_location_assignment PIN_A2 -to lcd1602_Data[3]
set_location_assignment PIN_B5 -to lcd1602_Data[4]
set_location_assignment PIN_A4 -to lcd1602_Data[5]
set_location_assignment PIN_B4 -to lcd1602_Data[6]
set_location_assignment PIN_D5 -to lcd1602_Data[7]
                                   
set_location_assignment PIN_D6 -to lcd1602_back_light
set_location_assignment PIN_B6 -to lcd1602_E
set_location_assignment PIN_A6 -to lcd1602_RW
set_location_assignment PIN_C6 -to lcd1602_RS
# -- *******************************************#
# ----------------TLC549接口 --ADC---------------#
# -- *******************************************#
set_location_assignment PIN_N8 -to tlc549_data
set_location_assignment PIN_M8 -to tlc549_ioclk
set_location_assignment PIN_P8 -to tlc549_cs
# -- *******************************************#
# ----------------TLC5615接口--DAC---------------#
# -- *******************************************#
set_location_assignment PIN_R7 -to tlc5615_din
set_location_assignment PIN_T7 -to tlc5615_sclk
set_location_assignment PIN_L8 -to tlc5615_cs
# -- *******************************************#
# ----------------VGA接口--VGA-------------------#
# -- *******************************************#
set_location_assignment PIN_C16 -to vga_vs
set_location_assignment PIN_C15 -to vga_hs
set_location_assignment PIN_G11 -to vga_red[3]
set_location_assignment PIN_D15 -to vga_red[4]
set_location_assignment PIN_D16 -to vga_red[5]
set_location_assignment PIN_F14 -to vga_red[6]
set_location_assignment PIN_B16 -to vga_red[7]
set_location_assignment PIN_F15 -to vga_green[1]
set_location_assignment PIN_F13 -to vga_green[2]
set_location_assignment PIN_G15 -to vga_green[3]
set_location_assignment PIN_J13 -to vga_green[4]
set_location_assignment PIN_J12 -to vga_green[5]
set_location_assignment PIN_J14 -to vga_green[6]
set_location_assignment PIN_J15 -to vga_blue[2]
set_location_assignment PIN_J16 -to vga_blue[3]
set_location_assignment PIN_K15 -to vga_blue[4]
set_location_assignment PIN_K16 -to vga_blue[5]
set_location_assignment PIN_J11 -to vga_blue[6]
# -- *******************************************#
# ------------------sdram接口---------------------#
# -- *******************************************#
# output          sdram_clk;        //sdram时钟信号
# inout   [15:0]  sdram_data;       //sdram读写数据
# output  [4:0]   sdram_command;    //cke、cs_n、ras、cas_n、we_n，SDRAM指令信号
# output  [13:0]  sdram_address;    //[13:12]BA , [11:0]Addr，SDRAM地址信号
# output  [1:0]   sdram_dqm;        //SDRAM数据掩码
set_location_assignment PIN_R4   -to sdram_clk
set_location_assignment PIN_R8   -to sdram_data[0]
set_location_assignment PIN_T8   -to sdram_data[1]
set_location_assignment PIN_R9   -to sdram_data[2]
set_location_assignment PIN_T9   -to sdram_data[3]
set_location_assignment PIN_K9   -to sdram_data[4]
set_location_assignment PIN_L9   -to sdram_data[5]
set_location_assignment PIN_M9   -to sdram_data[6]
set_location_assignment PIN_N9   -to sdram_data[7]
set_location_assignment PIN_R10  -to sdram_data[8]
set_location_assignment PIN_T10  -to sdram_data[9]
set_location_assignment PIN_R11  -to sdram_data[10]
set_location_assignment PIN_T11  -to sdram_data[11]
set_location_assignment PIN_R12  -to sdram_data[12]
set_location_assignment PIN_T12  -to sdram_data[13]
set_location_assignment PIN_K10  -to sdram_data[14]
set_location_assignment PIN_L10  -to sdram_data[15]
# --//we_n、cas_n、ras、cs_n、cke、，SDRAM指令信号
set_location_assignment PIN_M12  -to sdram_we_n
set_location_assignment PIN_L12  -to sdram_cas_n
set_location_assignment PIN_K12  -to sdram_ras_n
set_location_assignment PIN_N14  -to sdram_cs_n
set_location_assignment PIN_P15  -to sdram_cke
set_location_assignment PIN_P9   -to sdram_addr[0]
set_location_assignment PIN_P11  -to sdram_addr[1]
set_location_assignment PIN_R13  -to sdram_addr[2]
set_location_assignment PIN_T13  -to sdram_addr[3]
set_location_assignment PIN_M10  -to sdram_addr[4]
set_location_assignment PIN_N11  -to sdram_addr[5]
set_location_assignment PIN_T14  -to sdram_addr[6]
set_location_assignment PIN_T15  -to sdram_addr[7]
set_location_assignment PIN_R14  -to sdram_addr[8]
set_location_assignment PIN_P14  -to sdram_addr[9]
set_location_assignment PIN_L11  -to sdram_addr[10]
set_location_assignment PIN_M11  -to sdram_addr[11]
set_location_assignment PIN_N12  -to sdram_ba[0]
set_location_assignment PIN_N13  -to sdram_ba[1]
set_location_assignment PIN_P16  -to sdram_ldqm
set_location_assignment PIN_K11  -to sdram_udqm
# -- *******************************************#
# --//TFT液晶显示屏
# -- *******************************************#
set_location_assignment PIN_L6   -to   tft_csx	
set_location_assignment PIN_K2   -to   tft_dcx	
set_location_assignment PIN_K1   -to   tft_wrx	
set_location_assignment PIN_L2   -to   tft_rdx	
set_location_assignment PIN_L1   -to   tft_reset_n
set_location_assignment PIN_L3   -to   tft_d[0]	
set_location_assignment PIN_N2   -to   tft_d[1]	
set_location_assignment PIN_N1   -to   tft_d[2]	
set_location_assignment PIN_K5   -to   tft_d[3]	
set_location_assignment PIN_L4   -to   tft_d[4]	
set_location_assignment PIN_R1   -to   tft_d[5]	
set_location_assignment PIN_P2   -to   tft_d[6]	
set_location_assignment PIN_P1   -to   tft_d[7]	
set_location_assignment PIN_N3   -to   tft_d[8]	
set_location_assignment PIN_P3   -to   tft_d[9]	
set_location_assignment PIN_R3   -to   tft_d[10]
set_location_assignment PIN_T3   -to   tft_d[11]
set_location_assignment PIN_T2   -to   tft_d[12]
set_location_assignment PIN_T4   -to   tft_d[13]
set_location_assignment PIN_N5   -to   tft_d[14]
set_location_assignment PIN_N6   -to   tft_d[15]
# -- *******************************************#
# --//摄像头1
# -- *******************************************#
set_location_assignment PIN_C9  -to cmos1_sclk
set_location_assignment PIN_B10 -to cmos1_vsync
set_location_assignment PIN_A10 -to cmos1_pclk
set_location_assignment PIN_A15 -to cmos1_data[7]
set_location_assignment	PIN_F11 -to cmos1_data[5]
set_location_assignment PIN_F9  -to cmos1_data[3]
set_location_assignment	PIN_F10 -to cmos1_data[1]
set_location_assignment PIN_C11 -to cmos1_sdat
set_location_assignment PIN_B11 -to cmos1_href	
set_location_assignment PIN_A11 -to cmos1_xclk
set_location_assignment PIN_B12 -to cmos1_data[6]
set_location_assignment PIN_B14 -to cmos1_data[4]
set_location_assignment PIN_A12 -to cmos1_data[2]
set_location_assignment PIN_E11 -to cmos1_data[0]

# -- *******************************************#
# --//摄像头2
# -- *******************************************#
set_location_assignment	PIN_F7 -to cmos2_sclk
set_location_assignment	PIN_F6 -to cmos2_vsync
set_location_assignment	PIN_B7 -to cmos2_pclk
set_location_assignment	PIN_A7 -to cmos2_data[7]
set_location_assignment PIN_E9 -to cmos2_data[5]
set_location_assignment PIN_E8 -to cmos2_data[3]
set_location_assignment PIN_D8 -to cmos2_data[1]	

set_location_assignment PIN_C8 -to cmos2_sdat
set_location_assignment PIN_B8 -to cmos2_href
set_location_assignment PIN_A8 -to cmos2_xclk
set_location_assignment PIN_B9 -to cmos2_data[6]
set_location_assignment	PIN_F8 -to cmos2_data[4]
set_location_assignment	PIN_A9 -to cmos2_data[2]
set_location_assignment	PIN_D9 -to cmos2_data[0]

# -- *******************************************#
# --//RF24L01模块接口
# -- *******************************************#
set_location_assignment PIN_D11  -to  RF_CE	 
set_location_assignment PIN_D12  -to  RF_SCK	 
set_location_assignment PIN_A13  -to  RF_MISO	 
set_location_assignment PIN_B13  -to  RF_CSN	 
set_location_assignment PIN_A14  -to  RF_MOSI	 
set_location_assignment PIN_E10  -to  RF_IRQ	
# -- *******************************************#
# --//温湿度传感器接口
# -- *******************************************#
set_location_assignment PIN_R6 -to DHT11_DATA
# -- *******************************************#		
# --//步进电机接口
# -- *******************************************#
set_location_assignment PIN_M6 -to  MOTO_IN[0]
set_location_assignment PIN_P6 -to  MOTO_IN[1]	
set_location_assignment PIN_M7 -to  MOTO_IN[2]	
set_location_assignment PIN_K8 -to  MOTO_IN[3]	
set_location_assignment PIN_R5 -to  MOTO_IN[4]	
set_location_assignment PIN_T5 -to  MOTO_IN[5]
#set_location_assignment PIN_R6 -to  MOTO_IN[6]	






