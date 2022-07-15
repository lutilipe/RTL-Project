LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DataPath is
   port (
		-- ENTRADAS --
		valor_produto : in std_logic_vector(31 downto 0);
		saldo_cartao : in std_logic_vector(31 downto 0);
		
		ld_total : in std_logic;
		clr_total : in std_logic;
		ld_total_itens : in std_logic;
		clr_total_itens : in std_logic;
		
		add_sel, del_sel : in std_logic;
		
		clock : in std_logic;
		
		-- SAIDAS --
		
		saldo_restante : out std_logic_vector(31 downto 0);
		valor_compra : out std_logic_vector(31 downto 0);
		quantidade_itens : out std_logic_vector(6 downto 0);
		
		total_itens_lt_32 : out std_logic;
		saldo_lt_total : out std_logic
    );
end DataPath;


architecture RTLDataPath OF DataPath is

component somador is
	port (	
		x, y 	: in std_logic_vector(31 downto 0);
		s 		: out std_logic_vector(31 downto 0)
	);
end component;

component subtrator is
	port (	
		x, y 	: in std_logic_vector(31 downto 0);
		s 		: out std_logic_vector(31 downto 0)
	);
end component subtrator;

component mux_4_1 IS
	GENERIC (
		W : integer
	);
	PORT(
		in0,in1,in2,in3	:	IN	STD_LOGIC_VECTOR(W-1 DOWNTO 0);
		s0, s1				:	in std_logic;
		out1			:	OUT	STD_LOGIC_VECTOR(W-1 DOWNTO 0));
END component mux_4_1;

component total_itens_reg is
    port (
        total_itens_in : in std_logic_vector(6 downto 0);
        ld, clock, clear : in std_logic;
        quantidade_itens : out std_logic_vector(6 downto 0)
    );
end component total_itens_reg;

component total_reg is
    port (
        total_in : in std_logic_vector(31 downto 0);
        ld, clock, clear : in std_logic;
        valor_compra : out std_logic_vector(31 downto 0)
    );
end component total_reg;

component incrementador is
	port (	
		x 	: in std_logic_vector(6 downto 0);
		s 		: out std_logic_vector(6 downto 0)
	);
end component;

component decrementador is
	port (	
		x 	: in std_logic_vector(6 downto 0);
		s 		: out std_logic_vector(6 downto 0)
	);
end component decrementador;

component comparador_itens is
	port (  
		total_itens : IN STD_LOGIC_VECTOR(6 downto 0);
      total_itens_lt_32 : OUT STD_LOGIC
	);

end component comparador_itens;

component comparador_saldo is
	port (  
		valor_total :IN STD_LOGIC_VECTOR(31 downto 0);
		saldo_cartao :IN STD_LOGIC_VECTOR(31 downto 0);
      saldo_lt_total :OUT STD_LOGIC
	);

end component comparador_saldo;

signal aux_D_ABEF, aux_A_C, aux_B_C, aux_C_D, aux_D_E : std_logic_vector(31 downto 0);
signal aux_J_GHI, aux_G_I, aux_H_I, aux_I_J : std_logic_vector(6 downto 0);

begin

-- Componentes --

A_Somador : somador
	port map (x=>aux_D_ABEF,y=>valor_produto,s=>aux_A_C);

B_Subtrator_1 : subtrator
	port map (x=>aux_D_ABEF,y=>valor_produto,s=>aux_B_C);

C_Mux_4_1_32_bits : mux_4_1 
	generic map(W=>32)
	port map(in0=>aux_D_ABEF,in1=>aux_A_C,in2=>aux_B_C,in3=>aux_D_ABEF,out1=>aux_C_D, s0 => add_sel, s1 => del_sel);

D_Total_Reg : total_reg
	port map(total_in=>aux_C_D,clock=>clock,clear=>clr_total,ld=>ld_total,valor_compra=>aux_D_ABEF);
	valor_compra <= aux_D_ABEF;

E_Subtrator_2 : subtrator
	port map (x=>saldo_cartao,y=>aux_D_ABEF,s=>saldo_restante);
	
F_Comparador_Saldo : comparador_saldo
	port map(valor_total=>aux_D_ABEF,saldo_cartao=>saldo_cartao,saldo_lt_total=>saldo_lt_total);

G_Incrementador : incrementador
	port map(x=>aux_J_GHI,s=>aux_G_I);
	
H_Decrementador : decrementador
	port map(x=>aux_J_GHI,s=>aux_H_I);
	
I_Mux_4_1_7_bits : mux_4_1 
	generic map(W=>7)
	port map(in0=>aux_J_GHI,in1=>aux_G_I,in2=>aux_H_I,in3=>aux_J_GHI,out1=>aux_I_J, s0 => add_sel, s1 => del_sel);

J_Total_Itens_Reg : total_itens_reg
	port map(
		total_itens_in=>aux_I_J,ld=>ld_total_itens,clock=>clock,clear=>clr_total_itens,quantidade_itens=>aux_J_GHI
	);
	quantidade_itens <= aux_J_GHI;

K_Comparador_Itens : comparador_itens
	port map(total_itens=>aux_J_GHI,total_itens_lt_32=>total_itens_lt_32);


end RTLDataPath ;