
-------------------------------------------------------------------
-- System Generator version 14.5 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

-------------------------------------------------------------------
-- System Generator version 14.5 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

-------------------------------------------------------------------
-- System Generator version 14.5 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_6675584cd5 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    mode : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_6675584cd5;


architecture behavior of addsub_6675584cd5 is
  signal a_17_32: signed((16 - 1) downto 0);
  signal b_17_35: signed((16 - 1) downto 0);
  signal mode_17_48: boolean;
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000");
  signal op_mem_91_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_91_20_back: signed((16 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal not_68_25: boolean;
  signal bool_68_25: boolean;
  signal bool_68_7: boolean;
  signal cast_internal_s_69_5_addsub_a: signed((17 - 1) downto 0);
  signal cast_internal_s_69_5_addsub_b: signed((17 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((17 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((16 - 1) downto 0);
  signal prev_mode_93_22_next_x_000000: unsigned((3 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  mode_17_48 <= ((mode) = "1");
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  not_68_25 <=  not mode_17_48;
  bool_68_25 <= not_68_25 and true;
  bool_68_7 <= false or bool_68_25;
  cast_internal_s_69_5_addsub_a <= s2s_cast(a_17_32, 13, 17, 13);
  cast_internal_s_69_5_addsub_b <= s2s_cast(b_17_35, 13, 17, 13);
  proc_internal_s_69_5_addsub: process (bool_68_7, cast_internal_s_69_5_addsub_a, cast_internal_s_69_5_addsub_b)
  is
  begin
    if bool_68_7 then
      internal_s_69_5_addsub <= (cast_internal_s_69_5_addsub_a + cast_internal_s_69_5_addsub_b);
    else 
      internal_s_69_5_addsub <= (cast_internal_s_69_5_addsub_a - cast_internal_s_69_5_addsub_b);
    end if;
  end process proc_internal_s_69_5_addsub;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 13, 16, 13);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next_x_000000 <= u2u_cast(std_logic_vector_to_unsigned(boolean_to_vector(mode_17_48)), 0, 3, 0);
  prev_mode_93_22_next <= prev_mode_93_22_next_x_000000;
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_43d0615fb5 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_43d0615fb5;


architecture behavior of constant_43d0615fb5 is
begin
  op <= "0001100100100010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_bc361c9519 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_bc361c9519;


architecture behavior of shift_bc361c9519 is
  signal ip_1_23: signed((16 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000");
  signal op_mem_46_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_46_20_back: signed((16 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(ip_1_23);
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.5 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_2eaa5d3e7b is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_2eaa5d3e7b;


architecture behavior of constant_2eaa5d3e7b is
begin
  op <= "0000111011010110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_fc030d3108 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_fc030d3108;


architecture behavior of shift_fc030d3108 is
  signal ip_1_23: signed((16 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000");
  signal op_mem_46_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_46_20_back: signed((16 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_33_3_convert: signed((16 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_33_3_convert <= s2s_cast(ip_1_23, 14, 16, 13);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_5117385d5d is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_5117385d5d;


architecture behavior of constant_5117385d5d is
begin
  op <= "0000011111010111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_445489dd65 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_445489dd65;


architecture behavior of shift_445489dd65 is
  signal ip_1_23: signed((16 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000");
  signal op_mem_46_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_46_20_back: signed((16 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_33_3_convert: signed((16 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_33_3_convert <= s2s_cast(ip_1_23, 15, 16, 13);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9a15cbb345 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9a15cbb345;


architecture behavior of constant_9a15cbb345 is
begin
  op <= "0000001111111011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_a4f53e8b0c is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_a4f53e8b0c;


architecture behavior of shift_a4f53e8b0c is
  signal ip_1_23: signed((16 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000");
  signal op_mem_46_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_46_20_back: signed((16 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_33_3_convert: signed((16 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_33_3_convert <= s2s_cast(ip_1_23, 16, 16, 13);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c1cd568ae3 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c1cd568ae3;


architecture behavior of constant_c1cd568ae3 is
begin
  op <= "0000000111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_9e7145cd1d is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_9e7145cd1d;


architecture behavior of shift_9e7145cd1d is
  signal ip_1_23: signed((16 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000");
  signal op_mem_46_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_46_20_back: signed((16 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_27_3_rsh: signed((17 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: signed((16 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_27_3_rsh <= s2s_cast(ip_1_23, 13, 17, 13);
  cast_internal_ip_33_3_convert <= s2s_cast(cast_internal_ip_27_3_rsh, 17, 16, 13);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_2108d11930 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_2108d11930;


architecture behavior of constant_2108d11930 is
begin
  op <= "0000000100000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_bd9945aca0 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_bd9945aca0;


architecture behavior of shift_bd9945aca0 is
  signal ip_1_23: signed((16 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000");
  signal op_mem_46_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_46_20_back: signed((16 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_27_3_rsh: signed((18 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: signed((16 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_27_3_rsh <= s2s_cast(ip_1_23, 13, 18, 13);
  cast_internal_ip_33_3_convert <= s2s_cast(cast_internal_ip_27_3_rsh, 18, 16, 13);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9f096287b8 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9f096287b8;


architecture behavior of constant_9f096287b8 is
begin
  op <= "0000000010000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_e768e64052 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_e768e64052;


architecture behavior of shift_e768e64052 is
  signal ip_1_23: signed((16 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000");
  signal op_mem_46_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_46_20_back: signed((16 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_27_3_rsh: signed((19 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: signed((16 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_27_3_rsh <= s2s_cast(ip_1_23, 13, 19, 13);
  cast_internal_ip_33_3_convert <= s2s_cast(cast_internal_ip_27_3_rsh, 19, 16, 13);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_078d320cf5 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_078d320cf5;


architecture behavior of shift_078d320cf5 is
  signal ip_1_23: signed((16 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000");
  signal op_mem_46_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_46_20_back: signed((16 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_27_3_rsh: signed((20 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: signed((16 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_27_3_rsh <= s2s_cast(ip_1_23, 13, 20, 13);
  cast_internal_ip_33_3_convert <= s2s_cast(cast_internal_ip_27_3_rsh, 20, 16, 13);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_bfe1d4f686 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_bfe1d4f686;


architecture behavior of mux_bfe1d4f686 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "0000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_a54904b290 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_a54904b290;


architecture behavior of mux_a54904b290 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity negate_86a50eee28 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_86a50eee28;


architecture behavior of negate_86a50eee28 is
  signal ip_18_25: signed((16 - 1) downto 0);
  type array_type_op_mem_48_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_48_20: array_type_op_mem_48_20 := (
    0 => "0000000000000000");
  signal op_mem_48_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_48_20_back: signed((16 - 1) downto 0);
  signal op_mem_48_20_push_front_pop_back_en: std_logic;
  signal cast_35_24: signed((17 - 1) downto 0);
  signal internal_ip_35_9_neg: signed((17 - 1) downto 0);
  signal internal_ip_join_30_1: signed((17 - 1) downto 0);
  signal cast_internal_ip_40_3_convert: signed((16 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_48_20_back <= op_mem_48_20(0);
  proc_op_mem_48_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_48_20_push_front_pop_back_en = '1')) then
        op_mem_48_20(0) <= op_mem_48_20_front_din;
      end if;
    end if;
  end process proc_op_mem_48_20;
  cast_35_24 <= s2s_cast(ip_18_25, 13, 17, 13);
  internal_ip_35_9_neg <=  -cast_35_24;
  proc_if_30_1: process (internal_ip_35_9_neg)
  is
  begin
    if false then
      internal_ip_join_30_1 <= std_logic_vector_to_signed("00000000000000000");
    else 
      internal_ip_join_30_1 <= internal_ip_35_9_neg;
    end if;
  end process proc_if_30_1;
  cast_internal_ip_40_3_convert <= s2s_cast(internal_ip_join_30_1, 13, 16, 13);
  op_mem_48_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_40_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9adefb39b5 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9adefb39b5;


architecture behavior of constant_9adefb39b5 is
begin
  op <= "0011001001000100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_1f9bab9d47 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_1f9bab9d47;


architecture behavior of constant_1f9bab9d47 is
begin
  op <= "1100110110111100";
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.5 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_aacf6e1b0e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_aacf6e1b0e;


architecture behavior of logical_aacf6e1b0e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_851d75d8a3 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_851d75d8a3;


architecture behavior of relational_851d75d8a3 is
  signal a_1_31: signed((16 - 1) downto 0);
  signal b_1_34: signed((16 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_2705f2d4ec is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_2705f2d4ec;


architecture behavior of relational_2705f2d4ec is
  signal a_1_31: signed((16 - 1) downto 0);
  signal b_1_34: signed((16 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_16_3_rel <= a_1_31 < b_1_34;
  op_mem_32_22_front_din <= result_16_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_86d7d35657 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_86d7d35657;


architecture behavior of constant_86d7d35657 is
begin
  op <= "0001001101101111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9f5572ba51 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9f5572ba51;


architecture behavior of constant_9f5572ba51 is
begin
  op <= "0000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_84a1bc8a8d is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    s : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_84a1bc8a8d;


architecture behavior of addsub_84a1bc8a8d is
  signal a_17_32: signed((32 - 1) downto 0);
  signal b_17_35: signed((32 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000");
  signal op_mem_91_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_91_20_back: signed((16 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((34 - 1) downto 0);
  signal cast_71_22: signed((34 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((34 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((16 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= s2s_cast(a_17_32, 28, 34, 29);
  cast_71_22 <= s2s_cast(b_17_35, 29, 34, 29);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_71_5_addsub, 29, 16, 13);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity cmult_3a89d03d91 is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    p : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end cmult_3a89d03d91;


architecture behavior of cmult_3a89d03d91 is
  signal a_1_22: unsigned((10 - 1) downto 0);
  type array_type_op_mem_71_20 is array (0 to (1 - 1)) of signed((32 - 1) downto 0);
  signal op_mem_71_20: array_type_op_mem_71_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_71_20_front_din: signed((32 - 1) downto 0);
  signal op_mem_71_20_back: signed((32 - 1) downto 0);
  signal op_mem_71_20_push_front_pop_back_en: std_logic;
  signal mult_50_60: unsigned((42 - 1) downto 0);
  signal cast_product_61_3_convert: signed((32 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_unsigned(a);
  op_mem_71_20_back <= op_mem_71_20(0);
  proc_op_mem_71_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_71_20_push_front_pop_back_en = '1')) then
        op_mem_71_20(0) <= op_mem_71_20_front_din;
      end if;
    end if;
  end process proc_op_mem_71_20;
  mult_50_60 <= (a_1_22 * std_logic_vector_to_unsigned("00000000000110010010000111111011"));
  cast_product_61_3_convert <= u2s_cast(mult_50_60, 28, 32, 28);
  op_mem_71_20_push_front_pop_back_en <= '0';
  p <= signed_to_std_logic_vector(cast_product_61_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f0077ae951 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f0077ae951;


architecture behavior of constant_f0077ae951 is
begin
  op <= "01100100100001111110110101010001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_f25709acff is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_f25709acff;


architecture behavior of reinterpret_f25709acff is
  signal input_port_1_40: signed((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port <= signed_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_65915968db is
  port (
    b : in std_logic_vector((10 - 1) downto 0);
    q : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_65915968db;


architecture behavior of accum_65915968db is
  signal b_17_24: unsigned((10 - 1) downto 0);
  signal accum_reg_41_23: unsigned((10 - 1) downto 0) := "0000000000";
begin
  b_17_24 <= std_logic_vector_to_unsigned(b);
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        accum_reg_41_23 <= accum_reg_41_23 + b_17_24;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  q <= unsigned_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_cf4f99539f is
  port (
    d : in std_logic_vector((10 - 1) downto 0);
    q : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_cf4f99539f;


architecture behavior of delay_cf4f99539f is
  signal d_1_22: std_logic_vector((10 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000");
  signal op_mem_20_24_front_din: std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_a2a36fc6f7 is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    s : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_a2a36fc6f7;


architecture behavior of addsub_a2a36fc6f7 is
  signal a_17_32: unsigned((10 - 1) downto 0);
  signal b_17_35: unsigned((10 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((10 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000");
  signal op_mem_91_20_front_din: unsigned((10 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((10 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: unsigned((11 - 1) downto 0);
  signal cast_69_22: unsigned((11 - 1) downto 0);
  signal internal_s_69_5_addsub: unsigned((11 - 1) downto 0);
  signal cast_internal_s_83_3_convert: unsigned((10 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= u2u_cast(a_17_32, 0, 11, 0);
  cast_69_22 <= u2u_cast(b_17_35, 0, 11, 0);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= u2u_cast(internal_s_69_5_addsub, 0, 10, 0);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_9a35e3d90e is
  port (
    ip : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_9a35e3d90e;


architecture behavior of shift_9a35e3d90e is
  signal ip_1_23: unsigned((10 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((10 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000");
  signal op_mem_46_20_front_din: unsigned((10 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((10 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((11 - 1) downto 0);
  signal cast_internal_ip_36_3_convert: unsigned((10 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 11, 1);
  cast_internal_ip_36_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 10, 0);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_36_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE/CORDIC PE1"

entity cordic_pe1_entity_16e3c8751e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0); 
    z_x0: out std_logic_vector(15 downto 0)
  );
end cordic_pe1_entity_16e3c8751e;

architecture structural of cordic_pe1_entity_16e3c8751e is
  signal addsub1_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant1_op_net_x0: std_logic_vector(15 downto 0);
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal constant_op_net_x1: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  constant_op_net_x1 <= x;
  constant1_op_net_x0 <= y;
  mux_y_net_x0 <= z;
  x_x0 <= addsub_s_net_x0;
  y_x0 <= addsub1_s_net_x0;
  z_x0 <= addsub2_s_net_x0;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => constant_op_net_x1,
      b => shift1_op_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x0
    );

  addsub1: entity work.addsub_6675584cd5
    port map (
      a => constant1_op_net_x0,
      b => shift_op_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      mode(0) => slice_y_net,
      s => addsub1_s_net_x0
    );

  addsub2: entity work.addsub_6675584cd5
    port map (
      a => mux_y_net_x0,
      b => constant_op_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub2_s_net_x0
    );

  constant_x0: entity work.constant_43d0615fb5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  shift: entity work.shift_bc361c9519
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      ip => constant_op_net_x1,
      op => shift_op_net
    );

  shift1: entity work.shift_bc361c9519
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      ip => constant1_op_net_x0,
      op => shift1_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => mux_y_net_x0,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE/CORDIC PE2"

entity cordic_pe2_entity_bf4c30c7f2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0); 
    z_x0: out std_logic_vector(15 downto 0)
  );
end cordic_pe2_entity_bf4c30c7f2;

architecture structural of cordic_pe2_entity_bf4c30c7f2 is
  signal addsub1_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub_s_net_x2: std_logic_vector(15 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  addsub_s_net_x1 <= x;
  addsub1_s_net_x1 <= y;
  addsub2_s_net_x1 <= z;
  x_x0 <= addsub_s_net_x2;
  y_x0 <= addsub1_s_net_x2;
  z_x0 <= addsub2_s_net_x2;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => addsub_s_net_x1,
      b => shift1_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x2
    );

  addsub1: entity work.addsub_6675584cd5
    port map (
      a => addsub1_s_net_x1,
      b => shift_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      mode(0) => slice_y_net,
      s => addsub1_s_net_x2
    );

  addsub2: entity work.addsub_6675584cd5
    port map (
      a => addsub2_s_net_x1,
      b => constant_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub2_s_net_x2
    );

  constant_x0: entity work.constant_2eaa5d3e7b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  shift: entity work.shift_fc030d3108
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip => addsub_s_net_x1,
      op => shift_op_net
    );

  shift1: entity work.shift_fc030d3108
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip => addsub1_s_net_x1,
      op => shift1_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => addsub2_s_net_x1,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE/CORDIC PE3"

entity cordic_pe3_entity_0fadb0cf5e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0); 
    z_x0: out std_logic_vector(15 downto 0)
  );
end cordic_pe3_entity_0fadb0cf5e;

architecture structural of cordic_pe3_entity_0fadb0cf5e is
  signal addsub1_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub_s_net_x3: std_logic_vector(15 downto 0);
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  addsub_s_net_x3 <= x;
  addsub1_s_net_x3 <= y;
  addsub2_s_net_x3 <= z;
  x_x0 <= addsub_s_net_x0;
  y_x0 <= addsub1_s_net_x0;
  z_x0 <= addsub2_s_net_x0;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => addsub_s_net_x3,
      b => shift1_op_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x0
    );

  addsub1: entity work.addsub_6675584cd5
    port map (
      a => addsub1_s_net_x3,
      b => shift_op_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      mode(0) => slice_y_net,
      s => addsub1_s_net_x0
    );

  addsub2: entity work.addsub_6675584cd5
    port map (
      a => addsub2_s_net_x3,
      b => constant_op_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub2_s_net_x0
    );

  constant_x0: entity work.constant_5117385d5d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  shift: entity work.shift_445489dd65
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      ip => addsub_s_net_x3,
      op => shift_op_net
    );

  shift1: entity work.shift_445489dd65
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      ip => addsub1_s_net_x3,
      op => shift1_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => addsub2_s_net_x3,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE/CORDIC PE4"

entity cordic_pe4_entity_ff501f43c4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0); 
    z_x0: out std_logic_vector(15 downto 0)
  );
end cordic_pe4_entity_ff501f43c4;

architecture structural of cordic_pe4_entity_ff501f43c4 is
  signal addsub1_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub_s_net_x2: std_logic_vector(15 downto 0);
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  addsub_s_net_x1 <= x;
  addsub1_s_net_x1 <= y;
  addsub2_s_net_x1 <= z;
  x_x0 <= addsub_s_net_x2;
  y_x0 <= addsub1_s_net_x2;
  z_x0 <= addsub2_s_net_x2;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => addsub_s_net_x1,
      b => shift1_op_net,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x2
    );

  addsub1: entity work.addsub_6675584cd5
    port map (
      a => addsub1_s_net_x1,
      b => shift_op_net,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      mode(0) => slice_y_net,
      s => addsub1_s_net_x2
    );

  addsub2: entity work.addsub_6675584cd5
    port map (
      a => addsub2_s_net_x1,
      b => constant_op_net,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub2_s_net_x2
    );

  constant_x0: entity work.constant_9a15cbb345
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  shift: entity work.shift_a4f53e8b0c
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      ip => addsub_s_net_x1,
      op => shift_op_net
    );

  shift1: entity work.shift_a4f53e8b0c
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      ip => addsub1_s_net_x1,
      op => shift1_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => addsub2_s_net_x1,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE/CORDIC PE5"

entity cordic_pe5_entity_0976fec833 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0); 
    z_x0: out std_logic_vector(15 downto 0)
  );
end cordic_pe5_entity_0976fec833;

architecture structural of cordic_pe5_entity_0976fec833 is
  signal addsub1_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub_s_net_x3: std_logic_vector(15 downto 0);
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  addsub_s_net_x3 <= x;
  addsub1_s_net_x3 <= y;
  addsub2_s_net_x3 <= z;
  x_x0 <= addsub_s_net_x0;
  y_x0 <= addsub1_s_net_x0;
  z_x0 <= addsub2_s_net_x0;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => addsub_s_net_x3,
      b => shift1_op_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x0
    );

  addsub1: entity work.addsub_6675584cd5
    port map (
      a => addsub1_s_net_x3,
      b => shift_op_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      mode(0) => slice_y_net,
      s => addsub1_s_net_x0
    );

  addsub2: entity work.addsub_6675584cd5
    port map (
      a => addsub2_s_net_x3,
      b => constant_op_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub2_s_net_x0
    );

  constant_x0: entity work.constant_c1cd568ae3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  shift: entity work.shift_9e7145cd1d
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip => addsub_s_net_x3,
      op => shift_op_net
    );

  shift1: entity work.shift_9e7145cd1d
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip => addsub1_s_net_x3,
      op => shift1_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => addsub2_s_net_x3,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE/CORDIC PE6"

entity cordic_pe6_entity_79ced264cc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0); 
    z_x0: out std_logic_vector(15 downto 0)
  );
end cordic_pe6_entity_79ced264cc;

architecture structural of cordic_pe6_entity_79ced264cc is
  signal addsub1_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub_s_net_x2: std_logic_vector(15 downto 0);
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  addsub_s_net_x1 <= x;
  addsub1_s_net_x1 <= y;
  addsub2_s_net_x1 <= z;
  x_x0 <= addsub_s_net_x2;
  y_x0 <= addsub1_s_net_x2;
  z_x0 <= addsub2_s_net_x2;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => addsub_s_net_x1,
      b => shift1_op_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x2
    );

  addsub1: entity work.addsub_6675584cd5
    port map (
      a => addsub1_s_net_x1,
      b => shift_op_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      mode(0) => slice_y_net,
      s => addsub1_s_net_x2
    );

  addsub2: entity work.addsub_6675584cd5
    port map (
      a => addsub2_s_net_x1,
      b => constant_op_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub2_s_net_x2
    );

  constant_x0: entity work.constant_2108d11930
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  shift: entity work.shift_bd9945aca0
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      ip => addsub_s_net_x1,
      op => shift_op_net
    );

  shift1: entity work.shift_bd9945aca0
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      ip => addsub1_s_net_x1,
      op => shift1_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => addsub2_s_net_x1,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE/CORDIC PE7"

entity cordic_pe7_entity_c44778a2df is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0); 
    z_x0: out std_logic_vector(15 downto 0)
  );
end cordic_pe7_entity_c44778a2df;

architecture structural of cordic_pe7_entity_c44778a2df is
  signal addsub1_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub_s_net_x3: std_logic_vector(15 downto 0);
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  addsub_s_net_x3 <= x;
  addsub1_s_net_x3 <= y;
  addsub2_s_net_x3 <= z;
  x_x0 <= addsub_s_net_x0;
  y_x0 <= addsub1_s_net_x0;
  z_x0 <= addsub2_s_net_x0;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => addsub_s_net_x3,
      b => shift1_op_net,
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x0
    );

  addsub1: entity work.addsub_6675584cd5
    port map (
      a => addsub1_s_net_x3,
      b => shift_op_net,
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      mode(0) => slice_y_net,
      s => addsub1_s_net_x0
    );

  addsub2: entity work.addsub_6675584cd5
    port map (
      a => addsub2_s_net_x3,
      b => constant_op_net,
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub2_s_net_x0
    );

  constant_x0: entity work.constant_9f096287b8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  shift: entity work.shift_e768e64052
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip => addsub_s_net_x3,
      op => shift_op_net
    );

  shift1: entity work.shift_e768e64052
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip => addsub1_s_net_x3,
      op => shift1_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => addsub2_s_net_x3,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE/CORDIC PE8"

entity cordic_pe8_entity_854eed8b4c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0)
  );
end cordic_pe8_entity_854eed8b4c;

architecture structural of cordic_pe8_entity_854eed8b4c is
  signal addsub1_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub_s_net_x2: std_logic_vector(15 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal inverter_op_net: std_logic;
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  addsub_s_net_x1 <= x;
  addsub1_s_net_x1 <= y;
  addsub2_s_net_x1 <= z;
  x_x0 <= addsub_s_net_x2;
  y_x0 <= addsub1_s_net_x2;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => addsub_s_net_x1,
      b => shift1_op_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x2
    );

  addsub1: entity work.addsub_6675584cd5
    port map (
      a => addsub1_s_net_x1,
      b => shift_op_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      mode(0) => slice_y_net,
      s => addsub1_s_net_x2
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  shift: entity work.shift_078d320cf5
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip => addsub_s_net_x1,
      op => shift_op_net
    );

  shift1: entity work.shift_078d320cf5
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip => addsub1_s_net_x1,
      op => shift1_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => addsub2_s_net_x1,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/CORDIC Fine Angle PE"

entity cordic_fine_angle_pe_entity_d4be10f47e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    x: in std_logic_vector(15 downto 0); 
    y: in std_logic_vector(15 downto 0); 
    z: in std_logic_vector(15 downto 0); 
    x_x0: out std_logic_vector(15 downto 0); 
    y_x0: out std_logic_vector(15 downto 0)
  );
end cordic_fine_angle_pe_entity_d4be10f47e;

architecture structural of cordic_fine_angle_pe_entity_d4be10f47e is
  signal addsub1_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x4: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x5: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x6: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x7: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x9: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x4: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x5: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x6: std_logic_vector(15 downto 0);
  signal addsub2_s_net_x7: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub_s_net_x2: std_logic_vector(15 downto 0);
  signal addsub_s_net_x3: std_logic_vector(15 downto 0);
  signal addsub_s_net_x4: std_logic_vector(15 downto 0);
  signal addsub_s_net_x5: std_logic_vector(15 downto 0);
  signal addsub_s_net_x6: std_logic_vector(15 downto 0);
  signal addsub_s_net_x7: std_logic_vector(15 downto 0);
  signal addsub_s_net_x9: std_logic_vector(15 downto 0);
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal constant1_op_net_x1: std_logic_vector(15 downto 0);
  signal constant_op_net_x2: std_logic_vector(15 downto 0);
  signal mux_y_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  constant_op_net_x2 <= x;
  constant1_op_net_x1 <= y;
  mux_y_net_x1 <= z;
  x_x0 <= addsub_s_net_x9;
  y_x0 <= addsub1_s_net_x9;

  cordic_pe1_16e3c8751e: entity work.cordic_pe1_entity_16e3c8751e
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      x => constant_op_net_x2,
      y => constant1_op_net_x1,
      z => mux_y_net_x1,
      x_x0 => addsub_s_net_x1,
      y_x0 => addsub1_s_net_x1,
      z_x0 => addsub2_s_net_x1
    );

  cordic_pe2_bf4c30c7f2: entity work.cordic_pe2_entity_bf4c30c7f2
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      x => addsub_s_net_x1,
      y => addsub1_s_net_x1,
      z => addsub2_s_net_x1,
      x_x0 => addsub_s_net_x3,
      y_x0 => addsub1_s_net_x3,
      z_x0 => addsub2_s_net_x3
    );

  cordic_pe3_0fadb0cf5e: entity work.cordic_pe3_entity_0fadb0cf5e
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      x => addsub_s_net_x3,
      y => addsub1_s_net_x3,
      z => addsub2_s_net_x3,
      x_x0 => addsub_s_net_x2,
      y_x0 => addsub1_s_net_x2,
      z_x0 => addsub2_s_net_x2
    );

  cordic_pe4_ff501f43c4: entity work.cordic_pe4_entity_ff501f43c4
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      x => addsub_s_net_x2,
      y => addsub1_s_net_x2,
      z => addsub2_s_net_x2,
      x_x0 => addsub_s_net_x4,
      y_x0 => addsub1_s_net_x4,
      z_x0 => addsub2_s_net_x4
    );

  cordic_pe5_0976fec833: entity work.cordic_pe5_entity_0976fec833
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      x => addsub_s_net_x4,
      y => addsub1_s_net_x4,
      z => addsub2_s_net_x4,
      x_x0 => addsub_s_net_x5,
      y_x0 => addsub1_s_net_x5,
      z_x0 => addsub2_s_net_x5
    );

  cordic_pe6_79ced264cc: entity work.cordic_pe6_entity_79ced264cc
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      x => addsub_s_net_x5,
      y => addsub1_s_net_x5,
      z => addsub2_s_net_x5,
      x_x0 => addsub_s_net_x6,
      y_x0 => addsub1_s_net_x6,
      z_x0 => addsub2_s_net_x6
    );

  cordic_pe7_c44778a2df: entity work.cordic_pe7_entity_c44778a2df
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      x => addsub_s_net_x6,
      y => addsub1_s_net_x6,
      z => addsub2_s_net_x6,
      x_x0 => addsub_s_net_x7,
      y_x0 => addsub1_s_net_x7,
      z_x0 => addsub2_s_net_x7
    );

  cordic_pe8_854eed8b4c: entity work.cordic_pe8_entity_854eed8b4c
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      x => addsub_s_net_x7,
      y => addsub1_s_net_x7,
      z => addsub2_s_net_x7,
      x_x0 => addsub_s_net_x9,
      y_x0 => addsub1_s_net_x9
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/Quadrant Correct"

entity quadrant_correct_entity_4874e2f09f is
  port (
    angle_map: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cos: in std_logic_vector(15 downto 0); 
    sgn_z: in std_logic; 
    sin: in std_logic_vector(15 downto 0); 
    cosine: out std_logic_vector(15 downto 0); 
    sine: out std_logic_vector(15 downto 0)
  );
end quadrant_correct_entity_4874e2f09f;

architecture structural of quadrant_correct_entity_4874e2f09f is
  signal addsub1_s_net_x10: std_logic_vector(15 downto 0);
  signal addsub_s_net_x10: std_logic_vector(15 downto 0);
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(15 downto 0);
  signal mux2_y_net: std_logic_vector(15 downto 0);
  signal mux3_y_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal negate1_op_net: std_logic_vector(15 downto 0);
  signal negate2_op_net: std_logic_vector(15 downto 0);

begin
  delay4_q_net_x0 <= angle_map;
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  addsub_s_net_x10 <= cos;
  delay1_q_net_x0 <= sgn_z;
  addsub1_s_net_x10 <= sin;
  cosine <= mux_y_net_x0;
  sine <= mux1_y_net_x0;

  mux: entity work.mux_bfe1d4f686
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      d0 => addsub_s_net_x10,
      d1 => mux3_y_net,
      sel(0) => delay4_q_net_x0,
      y => mux_y_net_x0
    );

  mux1: entity work.mux_bfe1d4f686
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      d0 => addsub1_s_net_x10,
      d1 => mux2_y_net,
      sel(0) => delay4_q_net_x0,
      y => mux1_y_net_x0
    );

  mux2: entity work.mux_a54904b290
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addsub_s_net_x10,
      d1 => negate1_op_net,
      sel(0) => delay1_q_net_x0,
      y => mux2_y_net
    );

  mux3: entity work.mux_a54904b290
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => negate2_op_net,
      d1 => addsub1_s_net_x10,
      sel(0) => delay1_q_net_x0,
      y => mux3_y_net
    );

  negate1: entity work.negate_86a50eee28
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      ip => addsub_s_net_x10,
      op => negate1_op_net
    );

  negate2: entity work.negate_86a50eee28
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      ip => addsub1_s_net_x10,
      op => negate2_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS/Quadrant Map"

entity quadrant_map_entity_632a78f034 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    z: in std_logic_vector(15 downto 0); 
    angle_map: out std_logic; 
    sgn_z_x0: out std_logic; 
    z_x0: out std_logic_vector(15 downto 0)
  );
end quadrant_map_entity_632a78f034;

architecture structural of quadrant_map_entity_632a78f034 is
  signal addsub_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal constant1_op_net: std_logic_vector(15 downto 0);
  signal constant2_op_net: std_logic_vector(15 downto 0);
  signal delay1_q_net: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux_y_net_x2: std_logic_vector(15 downto 0);
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal sgn_z_y_net: std_logic;

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  addsub_s_net_x1 <= z;
  angle_map <= logical_y_net_x0;
  sgn_z_x0 <= sgn_z_y_net;
  z_x0 <= mux_y_net_x2;

  addsub: entity work.addsub_6675584cd5
    port map (
      a => addsub_s_net_x1,
      b => constant1_op_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      mode(0) => inverter_op_net,
      s => addsub_s_net_x0
    );

  constant1: entity work.constant_9adefb39b5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_1f9bab9d47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d => addsub_s_net_x1,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip(0) => sgn_z_y_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net_x0
    );

  mux: entity work.mux_bfe1d4f686
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d0 => delay1_q_net,
      d1 => addsub_s_net_x0,
      sel(0) => logical_y_net_x0,
      y => mux_y_net_x2
    );

  relational: entity work.relational_851d75d8a3
    port map (
      a => addsub_s_net_x1,
      b => constant1_op_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_2705f2d4ec
    port map (
      a => addsub_s_net_x1,
      b => constant2_op_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      op(0) => relational1_op_net
    );

  sgn_z: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => addsub_s_net_x1,
      y(0) => sgn_z_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1/CORDIC SINCOS"

entity cordic_sincos_entity_f135a56db0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    z: in std_logic_vector(15 downto 0); 
    cos: out std_logic_vector(15 downto 0); 
    sin: out std_logic_vector(15 downto 0)
  );
end cordic_sincos_entity_f135a56db0;

architecture structural of cordic_sincos_entity_f135a56db0 is
  signal addsub1_s_net_x10: std_logic_vector(15 downto 0);
  signal addsub_s_net_x10: std_logic_vector(15 downto 0);
  signal addsub_s_net_x2: std_logic_vector(15 downto 0);
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal constant1_op_net_x1: std_logic_vector(15 downto 0);
  signal constant_op_net_x2: std_logic_vector(15 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x1: std_logic_vector(15 downto 0);
  signal mux_y_net_x1: std_logic_vector(15 downto 0);
  signal mux_y_net_x2: std_logic_vector(15 downto 0);
  signal sgn_z_y_net: std_logic;

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  addsub_s_net_x2 <= z;
  cos <= mux_y_net_x1;
  sin <= mux1_y_net_x1;

  constant1: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net_x1
    );

  constant_x0: entity work.constant_86d7d35657
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net_x2
    );

  cordic_fine_angle_pe_d4be10f47e: entity work.cordic_fine_angle_pe_entity_d4be10f47e
    port map (
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      x => constant_op_net_x2,
      y => constant1_op_net_x1,
      z => mux_y_net_x2,
      x_x0 => addsub_s_net_x10,
      y_x0 => addsub1_s_net_x10
    );

  delay1: entity work.xldelay
    generic map (
      latency => 10,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d(0) => sgn_z_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x0
    );

  delay4: entity work.xldelay
    generic map (
      latency => 9,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net_x0
    );

  quadrant_correct_4874e2f09f: entity work.quadrant_correct_entity_4874e2f09f
    port map (
      angle_map => delay4_q_net_x0,
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      cos => addsub_s_net_x10,
      sgn_z => delay1_q_net_x0,
      sin => addsub1_s_net_x10,
      cosine => mux_y_net_x1,
      sine => mux1_y_net_x1
    );

  quadrant_map_632a78f034: entity work.quadrant_map_entity_632a78f034
    port map (
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      z => addsub_s_net_x2,
      angle_map => logical_y_net_x0,
      sgn_z_x0 => sgn_z_y_net,
      z_x0 => mux_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem/Subsystem1"

entity subsystem1_entity_01b656713b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    phi_in: in std_logic_vector(9 downto 0); 
    out1: out std_logic_vector(15 downto 0); 
    out2: out std_logic_vector(15 downto 0)
  );
end subsystem1_entity_01b656713b;

architecture structural of subsystem1_entity_01b656713b is
  signal addsub_s_net_x2: std_logic_vector(15 downto 0);
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal cmult_p_net: std_logic_vector(31 downto 0);
  signal constant7_op_net: std_logic_vector(31 downto 0);
  signal delay1_q_net_x0: std_logic_vector(9 downto 0);
  signal mux1_y_net_x2: std_logic_vector(15 downto 0);
  signal mux_y_net_x2: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  delay1_q_net_x0 <= phi_in;
  out1 <= mux_y_net_x2;
  out2 <= mux1_y_net_x2;

  addsub: entity work.addsub_84a1bc8a8d
    port map (
      a => cmult_p_net,
      b => constant7_op_net,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      s => addsub_s_net_x2
    );

  cmult: entity work.cmult_3a89d03d91
    port map (
      a => delay1_q_net_x0,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      p => cmult_p_net
    );

  constant7: entity work.constant_f0077ae951
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net
    );

  cordic_sincos_f135a56db0: entity work.cordic_sincos_entity_f135a56db0
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      z => addsub_s_net_x2,
      cos => mux_y_net_x2,
      sin => mux1_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado/Subsystem"

entity subsystem_entity_f5238f6cf8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(9 downto 0); 
    out1: out std_logic_vector(15 downto 0); 
    out2: out std_logic_vector(15 downto 0); 
    out3: out std_logic_vector(15 downto 0); 
    out4: out std_logic_vector(15 downto 0)
  );
end subsystem_entity_f5238f6cf8;

architecture structural of subsystem_entity_f5238f6cf8 is
  signal accumulator4_q_net: std_logic_vector(9 downto 0);
  signal addsub_s_net_x0: std_logic_vector(9 downto 0);
  signal ce_1_sg_x26: std_logic;
  signal clk_1_sg_x26: std_logic;
  signal delay1_q_net_x0: std_logic_vector(9 downto 0);
  signal freq_in_net_x0: std_logic_vector(9 downto 0);
  signal mux1_y_net_x2: std_logic_vector(15 downto 0);
  signal mux1_y_net_x3: std_logic_vector(15 downto 0);
  signal mux_y_net_x2: std_logic_vector(15 downto 0);
  signal mux_y_net_x3: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret2_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret3_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret4_output_port_net_x0: std_logic_vector(15 downto 0);
  signal shift_op_net: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x26 <= ce_1;
  clk_1_sg_x26 <= clk_1;
  freq_in_net_x0 <= in1;
  out1 <= reinterpret2_output_port_net_x0;
  out2 <= reinterpret3_output_port_net_x0;
  out3 <= reinterpret1_output_port_net_x0;
  out4 <= reinterpret4_output_port_net_x0;

  accumulator4: entity work.accum_65915968db
    port map (
      b => shift_op_net,
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
      clr => '0',
      q => accumulator4_q_net
    );

  addsub: entity work.addsub_a2a36fc6f7
    port map (
      a => accumulator4_q_net,
      b => freq_in_net_x0,
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
      clr => '0',
      s => addsub_s_net_x0
    );

  delay1: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
      clr => '0',
      d => accumulator4_q_net,
      q => delay1_q_net_x0
    );

  reinterpret1: entity work.reinterpret_f25709acff
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net_x3,
      output_port => reinterpret1_output_port_net_x0
    );

  reinterpret2: entity work.reinterpret_f25709acff
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net_x2,
      output_port => reinterpret2_output_port_net_x0
    );

  reinterpret3: entity work.reinterpret_f25709acff
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux1_y_net_x2,
      output_port => reinterpret3_output_port_net_x0
    );

  reinterpret4: entity work.reinterpret_f25709acff
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux1_y_net_x3,
      output_port => reinterpret4_output_port_net_x0
    );

  shift: entity work.shift_9a35e3d90e
    port map (
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
      clr => '0',
      ip => freq_in_net_x0,
      op => shift_op_net
    );

  subsystem1_01b656713b: entity work.subsystem1_entity_01b656713b
    port map (
      ce_1 => ce_1_sg_x26,
      clk_1 => clk_1_sg_x26,
      phi_in => delay1_q_net_x0,
      out1 => mux_y_net_x2,
      out2 => mux1_y_net_x2
    );

  subsystem2_15c7544c15: entity work.subsystem1_entity_01b656713b
    port map (
      ce_1 => ce_1_sg_x26,
      clk_1 => clk_1_sg_x26,
      phi_in => addsub_s_net_x0,
      out1 => mux_y_net_x3,
      out2 => mux1_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "cordic2_for_vivado"

entity cordic2_for_vivado is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    freq_in: in std_logic_vector(9 downto 0); 
    i0_out: out std_logic_vector(15 downto 0); 
    i1_out: out std_logic_vector(15 downto 0); 
    q0_out: out std_logic_vector(15 downto 0); 
    q1_out: out std_logic_vector(15 downto 0)
  );
end cordic2_for_vivado;

architecture structural of cordic2_for_vivado is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "cordic2_for_vivado,sysgen_core,{clock_period=3.90620000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=365,xilinx_accumulator_block=1,xilinx_adder_subtracter_block=53,xilinx_arithmetic_relational_operator_block=4,xilinx_binary_shift_operator_block=33,xilinx_bit_slice_extractor_block=18,xilinx_bus_multiplexer_block=10,xilinx_constant_block_block=26,xilinx_constant_multiplier_block=2,xilinx_cordic_sincos=2,xilinx_delay_block=7,xilinx_gateway_in_block=1,xilinx_gateway_out_block=4,xilinx_inverter_block=18,xilinx_logical_block_block=2,xilinx_negate_block_block=4,xilinx_system_generator_block=1,xilinx_type_reinterpreter_block=4,}";

  signal ce_1_sg_x27: std_logic;
  signal clk_1_sg_x27: std_logic;
  signal freq_in_net: std_logic_vector(9 downto 0);
  signal i0_out_net: std_logic_vector(15 downto 0);
  signal i1_out_net: std_logic_vector(15 downto 0);
  signal q0_out_net: std_logic_vector(15 downto 0);
  signal q1_out_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x27 <= ce_1;
  clk_1_sg_x27 <= clk_1;
  freq_in_net <= freq_in;
  i0_out <= i0_out_net;
  i1_out <= i1_out_net;
  q0_out <= q0_out_net;
  q1_out <= q1_out_net;

  subsystem_f5238f6cf8: entity work.subsystem_entity_f5238f6cf8
    port map (
      ce_1 => ce_1_sg_x27,
      clk_1 => clk_1_sg_x27,
      in1 => freq_in_net,
      out1 => i0_out_net,
      out2 => q0_out_net,
      out3 => i1_out_net,
      out4 => q1_out_net
    );

end structural;
