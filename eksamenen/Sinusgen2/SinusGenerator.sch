VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Clk
        SIGNAL Sw0
        SIGNAL PPM
        SIGNAL XLXN_87(9:0)
        SIGNAL XLXN_88
        SIGNAL UPdown
        SIGNAL XLXN_89(4:0)
        SIGNAL XLXN_90(8:0)
        SIGNAL XLXN_91
        PORT Input Clk
        PORT Input Sw0
        PORT Output PPM
        PORT BiDirectional UPdown
        BEGIN BLOCKDEF PPM_output
            TIMESTAMP 2008 11 18 20 53 23
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF SinusCounter2
            TIMESTAMP 2008 11 18 20 57 34
            LINE N 64 32 0 32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -192 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF Amplitude_adjust
            TIMESTAMP 2008 11 18 20 55 49
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF sinus_rom2x
            TIMESTAMP 2008 11 18 21 9 4
            RECTANGLE N 32 32 256 136 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 288 80 256 80 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_7 SinusCounter2
            PIN Clk Clk
            PIN UPdown UPdown
            PIN Negate XLXN_88
            PIN Adr(4:0) XLXN_89(4:0)
            PIN Sw0 Sw0
        END BLOCK
        BEGIN BLOCK XLXI_3 PPM_output
            PIN Clk Clk
            PIN PCM(9:0) XLXN_87(9:0)
            PIN PPM PPM
        END BLOCK
        BEGIN BLOCK XLXI_13 sinus_rom2x
            PIN a(4:0) XLXN_89(4:0)
            PIN spo(8:0) XLXN_90(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 Amplitude_adjust
            PIN Negate XLXN_88
            PIN RomData(8:0) XLXN_90(8:0)
            PIN PCM(9:0) XLXN_87(9:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Clk
            WIRE 272 608 304 608
            WIRE 304 608 336 608
            WIRE 304 416 1568 416
            WIRE 1568 416 1568 480
            WIRE 304 416 304 608
        END BRANCH
        BEGIN INSTANCE XLXI_7 336 768 R0
        END INSTANCE
        BEGIN BRANCH Sw0
            WIRE 288 800 336 800
        END BRANCH
        BEGIN BRANCH PPM
            WIRE 1952 480 2000 480
        END BRANCH
        BEGIN INSTANCE XLXI_3 1568 576 R0
        END INSTANCE
        IOMARKER 2000 480 PPM R0 28
        BEGIN BRANCH XLXN_87(9:0)
            WIRE 1520 544 1568 544
        END BRANCH
        BEGIN BRANCH XLXN_88
            WIRE 720 736 1120 736
            WIRE 1120 544 1136 544
            WIRE 1120 544 1120 736
        END BRANCH
        BEGIN BRANCH UPdown
            WIRE 720 672 736 672
            WIRE 736 672 736 704
            WIRE 736 704 832 704
        END BRANCH
        BEGIN INSTANCE XLXI_13 816 528 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1136 640 R0
        END INSTANCE
        BEGIN BRANCH XLXN_89(4:0)
            WIRE 720 608 816 608
        END BRANCH
        BEGIN BRANCH XLXN_90(8:0)
            WIRE 1104 608 1136 608
        END BRANCH
        IOMARKER 272 608 Clk R180 28
        IOMARKER 288 800 Sw0 R180 28
        IOMARKER 832 704 UPdown R0 28
    END SHEET
END SCHEMATIC
