----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2022 10:58:58
-- Design Name: 
-- Module Name: CRO - Behavioral
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

entity CRO is
    Port ( sel : in STD_LOGIC;
           chain_sel : in std_logic;
           en : in STD_LOGIC;
           in_ro : in STD_LOGIC;
           out_ro : out STD_LOGIC;
           in_chain : in STD_LOGIC);
end CRO;

architecture Behavioral of CRO is
    signal selected_in : STD_LOGIC;
    signal input : STD_LOGIC;
    signal output_not : STD_LOGIC;
    
     attribute DONT_TOUCH : string;
    
    attribute DONT_TOUCH of selected_in : signal is "TRUE";
    attribute DONT_TOUCH of input : signal is "TRUE";
    attribute DONT_TOUCH of output_not : signal is "TRUE";
begin
    input <= selected_in AND en;
    output_not <= NOT input;
    out_ro <= output_not;
    process(sel, chain_sel) 
    begin
        --case sel is
          --  when '0' => selected_in <= in_ro;
            --when '1' => selected_in <= in_chain;
            --when others => selected_in <= output_not;
         --end case;
         if sel = '0' then
            selected_in <= output_not;
        else
             if chain_sel = '0' then
                selected_in <= in_ro;
             else 
                selected_in <= in_chain;
            end if;
        end if;
    end process;

end Behavioral;