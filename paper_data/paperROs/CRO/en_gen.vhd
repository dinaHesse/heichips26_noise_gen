----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/22/2022 11:49:38 AM
-- Design Name: 
-- Module Name: en_gen - Behavioral
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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity en_gen is
    Port ( clk : in STD_LOGIC;
           gen_on : in STD_LOGIC;
           signal_out : out STD_LOGIC);
end en_gen;

architecture Behavioral of en_gen is
    component LFSR
            generic (
                    g_Num_Bits : integer
            );
            Port (  i_Clk    : in std_logic;
                    i_Enable : in std_logic;
     
        -- Optional Seed Value
                    i_Seed_DV   : in std_logic;
                    i_Seed_Data : in std_logic_vector(3 downto 0);
         
                    o_LFSR_Data : out std_logic_vector(3 downto 0);
                    o_LFSR_Done : out std_logic
            );
    end component;
    signal random_clock : std_logic_vector(3 downto 0);
    signal start_random_num : std_logic;
    signal lfsr_done : std_logic;
    signal counter : unsigned(3 downto 0) := "0000";
    signal counter_val : unsigned(3 downto 0);
    signal en_on : boolean := false;
begin
    random_num: LFSR 
        generic map (g_num_bits => 4)
        port map(
            i_Clk => clk,
            i_Enable => '1',--start_random_num,
            i_Seed_DV   => '0',
            i_Seed_Data => (others => '0'),
            o_LFSR_Data => random_clock,
            o_LFSR_Done => lfsr_done
        );
    process (clk) is
    begin
        if rising_edge(clk) then
            if counter = 1 then
            --    start_random_num <= '1';
            end if;
            if counter /= 0 then
                counter <= counter - 1;
            else                            -- counter = 0
                if en_on = false then
                    --start_random_num <= '1';
                    counter_val <= UNSIGNED(random_clock) + 1;
                    en_on <= true;
                    signal_out <= '0';
                else
                    en_on <= false;
                    signal_out <= '1';
                end if;
                counter <= counter_val;
                
            end if;
        end if;
    end process; 
    

end Behavioral;