----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2022 09:51:13
-- Design Name: 
-- Module Name: SRO - Behavioral
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

entity SRO is
    Port ( sel : in STD_LOGIC;
           en : in STD_LOGIC;
           in_ro : in STD_LOGIC;
           out_ro : out STD_LOGIC);
end SRO;

architecture Behavioral of SRO is
    signal selected_in : STD_LOGIC;
    signal input : STD_LOGIC;
    signal ouput_not : STD_LOGIC;
    
    attribute DONT_TOUCH : string;
    
    attribute DONT_TOUCH of selected_in : signal is "TRUE";
    attribute DONT_TOUCH of input : signal is "TRUE";
    attribute DONT_TOUCH of ouput_not : signal is "TRUE";
    
begin
    selected_in <= ouput_not when (sel='0') else in_ro;
    input <= selected_in AND en;
    ouput_not <= NOT input;
    out_ro <= ouput_not;

end Behavioral;