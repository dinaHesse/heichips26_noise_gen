----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2022 01:02:04 PM
-- Design Name: 
-- Module Name: control_module - Behavioral
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

entity control_module is
    generic(
        NUM_OF_ROS : integer := 65;
        CHAIN_SIZE : integer := 4);
    Port ( mode_select : in STD_LOGIC_VECTOR(0 to 1);
           reset_n : in STD_LOGIC;
           clk : in std_logic;
           en_array : in std_logic_vector(0 to 31);
           button_off : in std_logic;
           led1 : out std_logic;
           led2 : out std_logic;
           led3 : out std_logic;
           io_pin : out std_logic
    );
end control_module;

architecture Behavioral of control_module is
    constant NUM_OF_CHAINS : integer := (NUM_OF_ROS / CHAIN_SIZE); --number of configurations per chain
    constant ML1_SIZE : integer := 32; --number of chains, ML1 <= ML2
    constant ML2_ADDITIONAL : integer := 0;--22624; -- number of additional chains to ML1_SIZE for ML2
    constant ML2_SIZE : integer := ML1_SIZE + ML2_ADDITIONAL; --number of chains
    
    component LFSR
        generic (
                g_Num_Bits : integer
        );
        Port (  i_Clk    : in std_logic;
                i_Enable : in std_logic;
 
    -- Optional Seed Value
                i_Seed_DV   : in std_logic;
                i_Seed_Data : in std_logic_vector(31 downto 0);--((NUM_OF_CHAINS)*(ML2_SIZE)-1 downto 0);
     
                o_LFSR_Data : out std_logic_vector(31 downto 0);--((NUM_OF_CHAINS)*(ML2_SIZE)-1 downto 0);
                o_LFSR_Done : out std_logic
        );
    end component;
    component ro_controller
        generic (
            NUM_OF_ROS : integer;
            CHAIN_SIZE : integer
        );
        Port (
            en : in std_logic;
            chain_selected : in std_logic_vector(0 to (NUM_OF_ROS / CHAIN_SIZE)-1);
            single_ro : in std_logic;
            outp : out std_logic
        );  
    end component;
    component en_gen
        Port ( clk : in STD_LOGIC;
           gen_on : in STD_LOGIC;
           signal_out : out STD_LOGIC);
    end component;
    
    signal cm_substate : STD_LOGIC_VECTOR(31 downto 0);--(0 to (NUM_OF_CHAINS)*(ML2_SIZE)-1);
    signal cm_substate2 : STD_LOGIC_VECTOR(31 downto 0);
    signal lfsr_en : std_logic;
    signal lfsr_done :std_logic;
    signal ml_sel : STD_LOGIC;
    signal sel_chain : STD_LOGIC_VECTOR(0 to (NUM_OF_CHAINS)*(ML2_SIZE)-1);
    signal chain_sel : STD_LOGIC_VECTOR(0 to (NUM_OF_CHAINS)*(ML2_SIZE)-1);
    signal ro_en : STD_LOGIC;
    signal ml1_en : std_logic;
    signal ml2_en : std_logic;
    signal en1 : std_logic_vector(0 to 3); -- only a vector bc of en try out
    signal en2 : std_logic_vector(0 to 27); -- only a vector bc of en try out
    signal en_gen_out : std_logic;
    signal generated_en : std_logic;
    signal gen_on : std_logic;
    signal reset : std_logic;
    signal ro_out : std_logic_vector(0 to ML2_SIZE - 1);


begin
    reset <= not reset_n;
    io_pin <= ro_out(0);
    process(mode_select, generated_en, button_off) 
    begin
        if button_off = '1' then
                ml_sel <= '0'; 
                lfsr_en <= '0';
                ro_en <= '0';
                ml1_en <= '0';
                ml2_en <= '0';
                gen_on <= '0';
                led1 <= '0';
                led2 <= '0';
        else
            case mode_select is
                when "00" =>            --Off
                    ml_sel <= '0'; 
                    lfsr_en <= '0';
                    ro_en <= '0';
                    ml1_en <= '0';
                    ml2_en <= '0';
                    gen_on <= '0';
                    led1 <= '0';
                    led2 <= '0';
                when "01" =>            --Measurement Load 1
                    ml_sel <= '1';
                    lfsr_en <= '0';
                    ro_en <= '1'; 
                    ml1_en <= '1';
                    ml2_en <= '0';
                    gen_on <= '0';
                    led1 <= '0';
                    led2 <= '1';
                when "10" =>            --Measurement Load 2
                    ml_sel <= '1';
                    lfsr_en <= '0'; 
                    ro_en <= '1';
                    ml1_en <= '1';
                    ml2_en <= '1';
                    gen_on <= '0';
                    led1 <= '1';
                    led2 <= '0';
                when others =>          --Countermeasure
                    ml_sel <= '1';
                    lfsr_en <= '1';
                    ml1_en <= '1';
                    ml2_en <= '0';
                    ro_en <= generated_en;
                    gen_on <= '1';
                    led1 <= '1';
                    led2 <= '1';
             end case;
         end if;
    end process;
    
    process (clk) is
    begin
        if rising_edge(clk) then
            chain_sel <= sel_chain;
            generated_en <= en_gen_out;
            led3 <= chain_sel(0);
        end if;
    end process; 
    
    chain_selector1: LFSR 
    generic map (g_num_bits => 32)--(NUM_OF_CHAINS)*(ML2_SIZE))
    port map(
        i_Clk => clk,
        i_Enable => lfsr_en,
        i_Seed_DV   => '0',
        i_Seed_Data => (others => '0'),
        o_LFSR_Data => cm_substate,
        o_LFSR_Done => lfsr_done
    );
    chain_selector2: LFSR 
    generic map (g_num_bits => 32)--(NUM_OF_CHAINS)*(ML2_SIZE))
    port map(
        i_Clk => clk,
        i_Enable => lfsr_en,
        i_Seed_DV   => '0',
        i_Seed_Data => (others => '0'),
        o_LFSR_Data => cm_substate2,
        o_LFSR_Done => lfsr_done
    );
    chain_multiplier : for i in 0 to ((NUM_OF_CHAINS)*(ML2_SIZE) / 64) - 1 generate
        sel_chain(i*64 to ((i+1)*64)-1) <= cm_substate & cm_substate2;
    end generate chain_multiplier;
    
    enable_gen: en_gen
    port map(
        clk => clk,
        gen_on => gen_on,
        signal_out => en_gen_out
    );
    GEN_Measurement_Load_1: for i in 0 to ML1_SIZE-1 generate
        en1(i/8) <= ro_en and ml1_en and en_array(i / 8);
        measurement_load_1: ro_controller
        generic map (
            NUM_OF_ROS => NUM_OF_ROS,
            CHAIN_SIZE => CHAIN_SIZE
         )
         port map (
            en => en1(i/8),
            chain_selected => chain_sel(i*NUM_OF_CHAINS to (i*NUM_OF_CHAINS)+NUM_OF_CHAINS -1),
            single_ro => ml_sel,
            outp => ro_out(i)
        );
    end generate GEN_Measurement_Load_1;
    

end Behavioral;