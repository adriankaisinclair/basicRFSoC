library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pulse_gen is
port(
  freq       : in std_logic_vector(15 downto 0);
  enable     : in std_logic;
  clk        : in std_logic;
  reset      : in std_logic; 
  pulse_out  : out std_logic_vector(0 downto 0)
  );
end entity;

architecture rtl of pulse_gen is
  signal count : unsigned(15 downto 0);
  signal pulse : unsigned(0 downto 0);

begin
  process (clk,reset) begin
  if (reset='1') then
    count <= (others => '0');
  elsif (rising_edge(clk)) then
    if (enable = '1') then
      count <= count + 1;
      if (count=unsigned(freq)) then
        pulse <= "1";
        count <= (others => '0');
      else
        pulse <= "0";
      end if;
     end if;
   end if;
  end process;
  -- convert data types
  addconv_types : process (clk) is
  begin
    if (rising_edge(clk)) then
      pulse_out <= std_logic_vector(pulse);
    end if;
  end process addconv_types;

end architecture; 
