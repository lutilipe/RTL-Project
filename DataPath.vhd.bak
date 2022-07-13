LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DataPath is
   port (
			LdPeso : in std_logic;
			PesoMedido : std_logic_vector(15 downto 0);
			StartCountCarregamento : in std_logic;
			StartCountAquecimento : in std_logic;
			StartCountDescarregamento : in std_logic;
			Clk : in std_logic;
			Clk1ms : in std_logic;
			TemperaturaForno : in std_logic_vector(15 downto 0);
			LdAuxNivelCombustivel : in std_logic;
			LdCombustivelNecessario : in std_logic;
			LdNivelCombustivel : in std_logic;
			ChaveReabastecimento : in std_logic;
			ClrQtdProcessada : in std_logic;
			LdQtdProcessada : in std_logic;
			LdAuxQtdProcessada : in std_logic;
			
			TempoGastoGtTempoDescarregamento : out std_logic;
			TempoGastoGtTempoAquecimento : out std_logic;
			TempoGastoGtTempoCarregamento : out std_logic;
			CombustivelNecessarioGtNivelCombustivel  : out std_logic;
			TemperaturaFornoGtTemperaturaSegura : out std_logic;
			TemperaturaFornoGtTemperaturaMax : out std_logic;
			PesoGtPesoMax : out std_logic;
			QtdProcessada  : out std_logic_vector(15 downto 0);
			NivelCombustivel  : out std_logic_vector(15 downto 0)
        );
end DataPath;


architecture RTLDataPath OF DataPath is

component multiplicador is
	generic (
		Fixo : std_logic_vector (15 downto 0) := x"0003"
	);
	
	port 
	(
		entrada1	   : in std_logic_vector (15 downto 0);
		resultado  : out std_logic_vector (15 downto 0)
	);
end component;

component comparador is
	port (  
		a :IN STD_LOGIC_VECTOR(0 to 15);
      b :IN STD_LOGIC_VECTOR(0 to 15);
      a_gt_b :OUT STD_LOGIC
			);					
end component;

component comparador_peso is
generic (
		Fixo : std_logic_vector (15 downto 0) := x"4E20"
	);
port (  
		a :IN STD_LOGIC_VECTOR(0 to 15); -- primeira entrada
      peso_excessivo :OUT STD_LOGIC);				-- saída A > B 
end component;

component comparador_temperatura_segura is
generic (
		Fixo : std_logic_vector (15 downto 0) := x"0320"
	);
port (  
		a :IN STD_LOGIC_VECTOR(0 to 15); -- primeira entrada
      temp_gt_tempsegura :OUT STD_LOGIC);				-- saída A > B 

end component;

component comparador_temperatura_max is
generic (
		Fixo : std_logic_vector (15 downto 0) := x"047E"
	);
port (  
		a :IN STD_LOGIC_VECTOR(0 to 15); -- primeira entrada
      temp_gt_tempmax :OUT STD_LOGIC);					 -- saída A > B 

end component;

component mux is

	generic(
	
		CombustivelMaximo: std_logic_vector(15 downto 0) := x"2710" -- 63000g
	
	);
	
	port
	(
		NovoNivelCombustivel      : in  std_logic_vector(15 downto 0);
		ChaveReabastecimento      : in  std_logic;
		NivelCombustivel          : out std_logic_vector(15 downto 0)
	);
				
end component;

component registrador is
	generic (
				X : integer := 16
				);
    port( 
			clock: in std_logic;
         entrada: in std_logic_vector(X-1 downto 0);
         conteudo: out std_logic_vector(X-1 downto 0);
         LD: in std_logic
        );				
end component;

component registrador_clear is
	generic (
				X : integer := 16
				);
    port( 
			clock: in std_logic;
         entrada: in std_logic_vector(X-1 downto 0);
         conteudo: out std_logic_vector(X-1 downto 0);
         LD: in std_logic;
			clear: in std_logic
        );				
end component;

component shift_right_3x is
	port 
	(
		entrada	   : in std_logic_vector (15 downto 0);
		resultado  : out std_logic_vector (15 downto 0)
	);
				
end component;

component somador is

	port 
	(
		AuxQtdProcessada	   : in std_logic_vector (15 downto 0);
		Peso	               : in std_logic_vector (15 downto 0);
		QtdProcessada        : out std_logic_vector (15 downto 0)
	);


end component;

component subtrator is
	port 
	(
		AuxNivelCombustivel		: in std_logic_vector (15 downto 0);
		CombustivelNecessario	: in std_logic_vector (15 downto 0);
		NovoNivelCombustivel   	: out std_logic_vector (15 downto 0)
	);	
end component;

component temporizador2minutos is
Port 	  ( 
				Clk	         : in  std_logic; -- Clock de 1 ms
				StartCount	   : in  std_logic; -- Inicia o tempo
				Output		   : out	std_logic  -- Saída 
			);	
	
end component;

component temporizador20min is
Port 	  ( 
				Clk	         : in  std_logic; -- Clock de 1 ms
				StartCount	   : in  std_logic; -- Inicia o tempo
				Output		   : out	std_logic  -- Saída 
			);
				
end component;

component temporizador45 is
Port 	  ( 
				Clk	         : in  std_logic; -- Clock de 1 ms
				StartCount	   : in  std_logic; -- Inicia o tempo
				Output		   : out	std_logic  -- Saída 
			);				
end component;



-- Fios de conexão interna
-- Fio genérico aux_A_B é um fio que sai de A e vai até B
-- Fio aux_A_BC sai de A e vai até B e até C
signal aux_A_OD, aux_B_C, aux_C_E, aux_E_JK, aux_G_FK,
		 aux_F_J, aux_N_G, aux_I_H, aux_H_O, aux_O_I, aux_J_N: std_logic_vector(15 downto 0);


begin

--Parte Referente aos temporizadores isolados
TemporizadorCarregamento : Temporizador45 port map (Clk=>Clk1ms, StartCount=>StartCountCarregamento,
																	 Output=>TempoGastoGtTempoCarregamento);
TemporizadorDescarregamento : Temporizador2minutos port map (Clk=>Clk1ms, StartCount=>StartCountDescarregamento,
																				 Output=>TempoGastoGtTempoDescarregamento);
TemporizadorAquecimento : Temporizador20min port map (Clk=>Clk1ms, StartCount=>StartCountAquecimento, 
																		Output=>TempoGastoGtTempoAquecimento);

--Parte Central
A_RegPeso : registrador port map (clock=>Clk, entrada=>PesoMedido, conteudo=>aux_A_OD, LD=>LdPeso);
B_Multiplicador : multiplicador port map (entrada1=> PesoMedido, resultado=> aux_B_C);
C_Shifter : shift_right_3x port map (entrada=> aux_B_C, resultado=> aux_C_E);
D_ComparadorPeso : comparador_peso port map (a=> aux_A_OD, peso_excessivo=> PesoGtPesoMax);
E_RegCombustivelNecessario : registrador port map (clock=> Clk, entrada=> aux_C_E, conteudo=> aux_E_JK, LD=> LdCombustivelNecessario);
F_RegAuxNivelCombustivel : registrador port map (clock=> Clk , entrada=> aux_G_FK, conteudo=> aux_F_J, LD=> LdAuxNivelCombustivel);
G_RegNivelCombustivel : registrador port map (clock=> Clk, entrada=> aux_N_G, conteudo=> aux_G_FK, LD=> LdNivelCombustivel);
 NivelCombustivel <= aux_G_FK; -- Saída 16 bits
H_RegAuxQtdProcessada : registrador port map (clock=> Clk, entrada=> aux_I_H, conteudo=> aux_H_O, LD=> LdAuxQtdProcessada);
I_RegQtdProcessada : registrador_clear port map (clock=> Clk, entrada=> aux_O_I, conteudo=> aux_I_H, LD=> LdQtdProcessada, clear=> ClrQtdProcessada);
 QtdProcessada <= aux_I_H; -- Saída 16 bits
J_Subtrator : subtrator port map (AuxNivelCombustivel=> aux_F_J, CombustivelNecessario=> aux_E_JK, NovoNivelCombustivel=> aux_J_N);
K_ComparadorCombustivel : comparador port map (a=> aux_E_JK, b=> aux_G_FK, a_gt_b=> CombustivelNecessarioGtNivelCombustivel);
L_ComparadorTemperaturaSegura : comparador_temperatura_segura port map (a=> TemperaturaForno, temp_gt_tempsegura=> TemperaturaFornoGtTemperaturaSegura);
M_ComparadorTemperaturaMax : comparador_temperatura_max port map (a=> TemperaturaForno, temp_gt_tempmax=> TemperaturaFornoGtTemperaturaMax);
N_Mux : mux port map (NovoNivelCombustivel=> aux_J_N, ChaveReabastecimento=> ChaveReabastecimento, NivelCombustivel=> aux_N_G);
O_Somador : somador port map (AuxQtdProcessada=> aux_H_O, Peso=> aux_A_OD, QtdProcessada=> aux_O_I);


end RTLDataPath ;