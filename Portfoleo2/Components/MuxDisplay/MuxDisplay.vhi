
-- VHDL Instantiation Created from source file MuxDisplay.vhd -- 09:50:11 03/31/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MuxDisplay
	PORT(
		CLK_1K : IN std_logic;
		DOTS : IN std_logic_vector(3 downto 0);
		SEC : IN std_logic_vector(7 downto 0);
		MIN : IN std_logic_vector(7 downto 0);          
		AN : OUT std_logic_vector(3 downto 0);
		SEG : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_MuxDisplay: MuxDisplay PORT MAP(
		CLK_1K => ,
		DOTS => ,
		SEC => ,
		MIN => ,
		AN => ,
		SEG => 
	);


