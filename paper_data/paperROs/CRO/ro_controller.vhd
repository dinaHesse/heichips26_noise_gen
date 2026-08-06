----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2022 13:10:10
-- Design Name: 
-- Module Name: ro_controller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ro_controller is
    generic(
        NUM_OF_ROS : integer := 17;
        CHAIN_SIZE : integer := 4);
    Port (
        en : in std_logic;
        chain_selected : in std_logic_vector(0 to (NUM_OF_ROS / CHAIN_SIZE)-1);
        single_ro : in std_logic;
        outp : out std_logic
    ); 
end ro_controller;

architecture Behavioral of ro_controller is
    constant NUM_OF_CHAINS : integer := (NUM_OF_ROS / CHAIN_SIZE);
    component CRO
         Port ( sel : in STD_LOGIC;
           chain_sel : in std_logic;
           en : in STD_LOGIC;
           in_ro : in STD_LOGIC;
           out_ro : out STD_LOGIC;
           in_chain : in STD_LOGIC);
    end component;
    component SRO
        Port ( sel : in STD_LOGIC;
           en : in STD_LOGIC;
           in_ro : in STD_LOGIC;
           out_ro : out STD_LOGIC);
    end component;
    
    signal outputs_ro : STD_LOGIC_VECTOR(0 to NUM_OF_ROS-1);
    signal chain_out : STD_LOGIC_VECTOR(0 to NUM_OF_ROS-1);
    signal s : STD_LOGIC_VECTOR(0 to 1);
    
    attribute KEEP_HIERARCHY : string;
    attribute KEEP_HIERARCHY of CRO : component is "TRUE";
    attribute KEEP_HIERARCHY of SRO : component is "TRUE";
begin
    outp <= outputs_ro(NUM_OF_ROS-1);
    GEN_CHAIN: for i in 0 to NUM_OF_ROS-1 generate
        GEN_CRO0: if (i = 0) generate
            CRO0: CRO port map
            (sel => single_ro,
            chain_sel =>  chain_selected(i),
            en => en, 
            in_ro => outputs_ro(NUM_OF_ROS-1), 
            out_ro => outputs_ro(i),
            in_chain => outputs_ro(i) --outputs_ro(NUM_OF_ROS-1)
            );
        end generate GEN_CRO0;
        
        GEN_CRO: if (i mod (CHAIN_SIZE + 1) = 0) and (i /= 0) generate
            CROX: CRO port map
            (sel => single_ro,
            chain_sel =>  chain_selected((i/CHAIN_SIZE)-1),
            en => en, 
            in_ro => outputs_ro(i-1), 
            out_ro => outputs_ro(i),
            in_chain => outputs_ro(i-CHAIN_SIZE-1)
            );
        end generate GEN_CRO;
        
        GEN_SRO: if (i mod (CHAIN_SIZE + 1) /= 0) generate
            SROX: SRO port map
            (sel => single_ro, 
            en => en, 
            in_ro => outputs_ro(i-1), 
            out_ro => outputs_ro(i));
        end generate GEN_SRO;
    end generate GEN_CHAIN;
end Behavioral;