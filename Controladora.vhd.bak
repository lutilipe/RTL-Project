library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controladora is
    port 
    ( 
		--Entradas--
		BotaoManutencaoFeita : in std_logic; 
		BotaoCombustivelCheio  : in std_logic;
		BotaoPesar  : in std_logic;
		BotaoCarregar : in std_logic;
		BotaoLiga : in std_logic;
		BotaoDesliga : in std_logic;
		BotaoDescarregar : in std_logic;
		PesoGtPesoMax : in std_logic;
		TempoGastoGtTempoCarregamento : in std_logic;
		TempoGastoGtTempoDescarreamento : in std_logic;
		TempoGastoGtTempoAquecimento : in std_logic;
		TemperaturaFornoGtTemperaturaMax : in std_logic;
		TemperaturaFornoGtTemperaturaSegura : in std_logic;
		CombustivelNecessarioGtNivelCombustivel : in std_logic;
		ClrRegEstados : in std_logic;
		ClkRegEstados :in std_logic;
		
		--Saídas--
		AlarmePeso: out std_logic;
		AlarmeCombustivel : out std_logic;
		AlarmeTemperatura: out std_logic;
		Carregar: out std_logic;
		Descarregar: out std_logic;
		Fogo: out std_logic;
		AvisoFornoLigado: out std_logic;
		AvisoCarregamentoHabilitado: out std_logic;
		DesligamentoForcado: out std_logic;
		LdAuxQtdProcessada : out std_logic;
		LdQtdProcessada : out std_logic;
		LdPeso : out std_logic;
		LdNivelCombustivel : out std_logic;
		LdCombustivelNecessario : out std_logic;
		LdAuxNivelCombustivel : out std_logic;
		ClrQtdProcessada : out std_logic;
		StartCountCarregamento : out std_logic;
		StartCountDescarregamento : out std_logic;
		StartCountAquecimento : out std_logic;
		ChaveReabastecimento : out std_logic
    );

end entity;

architecture RTLControladora of Controladora is
--signal state :  std_logic_vector(4 downto 0) := "00000";
type state is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18);
--							signal estado_atual: state := S0;
signal estado_atual, proximo_estado: state;

begin

	-- REGISTRADOR DE ESTADOS
	process(ClrRegEstados, ClkRegEstados) is	
	begin
	if(ClrRegEstados = '1') then
--	-- Sentencas sequenciais assincronas
	estado_atual <= S0;
	elsif(rising_edge(ClkRegEstados)) then
--	-- Sentencas sequenciais sincronas
	estado_atual <= proximo_estado;
	end if;
	end process;
	
	
 process (BotaoManutencaoFeita, 
		BotaoCombustivelCheio,
		BotaoPesar,
		BotaoCarregar,
		BotaoLiga,
		BotaoDesliga,
		BotaoDescarregar,
		PesoGtPesoMax,
		TempoGastoGtTempoCarregamento,
		TempoGastoGtTempoDescarreamento,
		TempoGastoGtTempoAquecimento,
		TemperaturaFornoGtTemperaturaMax,
		TemperaturaFornoGtTemperaturaSegura,
		CombustivelNecessarioGtNivelCombustivel,
		estado_atual)
 begin
				AlarmePeso <= '0';
				AlarmeCombustivel  <='0';
				AlarmeTemperatura <='0';
				Carregar <='0';
				Descarregar <='0';
				Fogo <='0';
				AvisoFornoLigado <='0';
				AvisoCarregamentoHabilitado <='0';
				DesligamentoForcado <='0';
				LdAuxQtdProcessada <='0';
				LdQtdProcessada <='0';
				LdPeso <='0';
				LdNivelCombustivel  <='0';
				LdAuxNivelCombustivel  <='0';
				ClrQtdProcessada <='0';
				StartCountCarregamento <='0';
				StartCountDescarregamento <='0';
				StartCountAquecimento <='0';
				ChaveReabastecimento <= '0';
				LdCombustivelNecessario <= '0';
	case estado_atual is 
			when S0 =>
				LdNivelCombustivel  <='1';
				ChaveReabastecimento <= '1';
				proximo_estado <= S1;
			when S1 =>
				ClrQtdProcessada <= '1';
				proximo_estado <= S2;
			when S2 =>
				LdPeso <= '1';
				ClrQtdProcessada <= '0';
				LdNivelCombustivel <= '0';
				if ( BotaoManutencaoFeita = '1' ) then
					proximo_estado <= S1;
				elsif ( BotaoCombustivelCheio = '1' ) then
					proximo_estado <= S3;
				elsif ( BotaoPesar = '1' ) then
					proximo_estado <= S4;
				else 
					proximo_estado <= S2;
				end if;
			when S3=>
				AlarmeCombustivel <= '0';
				LdNivelCombustivel <= '1';
				ChaveReabastecimento <= '1';
				proximo_estado <= S2;
			when S4 =>
				--LdPeso <= '1';
				LdCombustivelNecessario <= '1';
				if ( PesoGtPesoMax = '1' ) then
					proximo_estado <= S5;
				elsif ( CombustivelNecessarioGtNivelCombustivel = '1' ) then
					proximo_estado <= S6;
				else
					proximo_estado <= S7;
				end if;
			when S5 =>
				LdPeso <= '1';
				AlarmePeso <= '1';
				if (PesoGtPesoMax = '1') then
					proximo_estado <= S5;
				else 
					proximo_estado <= S4;
				end if;
			when S6 =>
				AlarmeCombustivel <= '1';
				if (BotaoCombustivelCheio = '1') then
					proximo_estado <= S3;
				else 
					proximo_estado <= S6;
				end if;
			when S7 =>
				AlarmePeso <= '0';
				AvisoCarregamentoHabilitado <= '1';
				LdPeso <= '0';
				LdAuxNivelCombustivel <= '1';
				ChaveReabastecimento <= '0';
				if (BotaoCarregar = '0') then
					proximo_estado <= S7;
				else 
					proximo_estado <= S8;
				end if;
			when S8 =>
				LdAuxNivelCombustivel <= '0';
				StartCountCarregamento <= '1';
				proximo_estado <= S9;
			when S9 =>
				Carregar <= '1';
				AvisoCarregamentoHabilitado <= '0';
				LdNivelCombustivel <= '1';
				StartCountCarregamento <= '0';
				if (TempoGastoGtTempoCarregamento = '0') then
					proximo_estado <= S9;
				else
					proximo_estado <= S10;
				end if;
			when S10 =>
				Carregar <= '0';
				LdNivelCombustivel <= '0';
				if (BotaoLiga = '0') then
					proximo_estado <= S10;
				else
					proximo_estado <= S11;
				end if;
			when S11 =>
				LdAuxQtdProcessada <= '1';
				StartCountAquecimento <= '1';
				proximo_estado <= S12;
			when S12 =>
				Fogo <= '1';
				AvisoFornoLigado <= '1';
				LdAuxQtdProcessada <= '0';
				LdQtdProcessada <= '1';
				StartCountAquecimento <= '0';
				if (TempoGastoGtTempoAquecimento = '1') then 
					proximo_estado <= S15;
				elsif (BotaoDesliga = '1') then
					proximo_estado <=S14;
				elsif (TemperaturaFornoGtTemperaturaMax = '1') then 
					proximo_estado <= S13;
				else 
					proximo_estado <= S12;
				end if;
			when S13 =>
				AlarmeTemperatura <= '1';
				Fogo <= '1';
				AvisoFornoLigado <= '1';
				if (TempoGastoGtTempoAquecimento = '1') then 
					proximo_estado <= S15;
				elsif (BotaoDesliga = '1') then
					proximo_estado <=S14;
				else 
					proximo_estado <= S13;
				end if;
			when S14 =>
				DesligamentoForcado <= '1';
				Fogo <= '0';
				AvisoFornoLigado <= '0';
				LdQtdProcessada <= '0';
				if (BotaoDescarregar = '0') then
					proximo_estado <= S14;
				else 
					proximo_estado <= S16;
				end if;
			when S15 =>
				Fogo <= '0';
				AvisoFornoLigado <= '0';
				LdQtdProcessada <= '0';
				if (BotaoDescarregar = '0') then
					proximo_estado <= S15;
				else 
					proximo_estado <= S16;
				end if;	
			when S16 =>
				StartCountDescarregamento <= '1';
				proximo_estado <= S17;
				DesligamentoForcado <= '0';
			when S17 =>
				Descarregar <= '1';
				StartCountDescarregamento <= '0';
				if (TempoGastoGtTempoDescarreamento = '0') then 
					proximo_estado <= S17;
				else
					proximo_estado <= S18;
				end if;
			when OTHERS => 
				Descarregar <= '0';
				if (TemperaturaFornoGtTemperaturaSegura = '1') then 
					proximo_estado <= S18;
				else 
					proximo_estado <= S2;
				end if;			
		end case;
	end process;
	
--	-- Declaracoes

 
end RTLControladora;