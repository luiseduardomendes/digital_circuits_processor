# INSTITUTO DE INFORMATICA UFRGS
# DEPARTAMENTO DE INFORMATICA APLICADA
# INF01058 -  Circuitos Digitais Turma F
# Prof. Renato Ribas
# 19/05/2016

# GUILHERME DELAZERI  -  261884
# gdelazeri@inf.ufrgs.br
 

###ENTRADAS:  - arquivo.txt (memoria do Neander gerada pelo simulador(.mem))
#           - nome do arquivo de saida
###SAIDAS:    - um arquivo (.txt) no formato aceito pelo Quartus

### DESCRICAO DO PROGRAMA:
# Parser que cria um txt no formato aceito pelo Quartus Web Edition II
# para simular a memoria (arquivo VHDL), atraves da memoria gerada pelo 
# simulador Neander.

################################################################
###################### FUNCOES AUXILIARES ######################

# Converte o numero para binario em 8 bits e escreve no arquivo de saida
def WRITE_BIN_OUTPUT(number, output_file):
    number_bin = '{0:08b}'.format(number)
    output_file.write('"')
    output_file.write(number_bin)
    output_file.write('"')

# Escreve a parte inicial do arquivo
def WRITE_HEADER_OUTPUT(output_file, output_name):
    output_file.write("LIBRARY ieee;")
    output_file.write('\n')
    output_file.write("USE ieee.std_logic_1164.all;")
    output_file.write('\n')
    output_file.write('\n')
    output_file.write("ENTITY ")
    output_file.write(output_name.translate(None, '.txt'))
    output_file.write(" IS")
    output_file.write('\n')
    output_file.write("\tPORT(")
    output_file.write('\n')
    output_file.write("\t\tentrada: IN STD_LOGIC_VECTOR (7 DOWNTO 0);")
    output_file.write('\n')
    output_file.write("\t\tsaida: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));")
    output_file.write('\n')
    output_file.write("END ")
    output_file.write(output_name.translate(None, '.txt'))
    output_file.write(";")
    output_file.write('\n')
    output_file.write('\n')
    output_file.write("ARCHITECTURE circ1 OF ")
    output_file.write(output_name.translate(None, '.txt'))
    output_file.write(" IS")
    output_file.write('\n')
    output_file.write("BEGIN")
    output_file.write('\n')
    output_file.write("\tWITH entrada SELECT")
    output_file.write('\n')
    output_file.write("\t\tsaida <=\t")

#Verifica se chegou ao fim do arquivo de entrada (.mem)
def END_MEMORY_FILE(address, output_file):
    if address < 255:
        output_file.write(",")
        output_file.write('\n\t\t\t\t\t')
    else:
        output_file.write(";")
        output_file.write('\n')

# Cria o arquivo de saida
def CREATE_OUTPUT(input_file, output_file):

    WRITE_HEADER_OUTPUT(output_file, output_name)

    for line in input_file:
        line = line.split()

        if line != []:
            instruction = int(line[1])
            if instruction != 0:
                WRITE_BIN_OUTPUT(instruction, output_file)
                output_file.write(" WHEN ")
                address = int(line[0])
                WRITE_BIN_OUTPUT(address, output_file)
                END_MEMORY_FILE(address, output_file)

                if len(line) > 2:
                    if line[2].isdigit():
                        instruction = int(line[2])
                        WRITE_BIN_OUTPUT(instruction, output_file)
                        output_file.write(" WHEN ")
                        address = address + 1
                        WRITE_BIN_OUTPUT(address, output_file)
                        END_MEMORY_FILE(address, output_file)

    output_file.write('\n\t\t\t\t\t')
    WRITE_BIN_OUTPUT(0, output_file)
    output_file.write(" WHEN OTHERS;\n")
    output_file.write("END circ1;")

# Pega o arquivo de entrada
def GET_FILE(mode):
    name_mem = raw_input()
    if name_mem:
	file = open(name_mem, mode)
	return file
    else:
	return None

# Coloca a mensagem final no programa
def END_OF_PROGRAM(output_name):
    print "\nOK!"
    print "\nIMPORTANTE:"
    print "1- Copie o conteudo do '" + output_name.translate(None, '.txt') + ".txt' para um arquivo VHDL no Quartus Web Edition II."
    print "2- Nao esqueca que o nome do projeto no Quartus Web Edition II deve ter o nome '" + output_name.translate(None, '.txt') + "'.\n"




################################################################
###########################  MAIN  #############################
################################################################

print "\nGERADOR DE MEMORIA EM MODO TEXTO (Quartus Web Edition II)"
print "\nArquivo de texto gerado pelo simulador do Neander:"

input_file = GET_FILE('r')
if input_file is None:		#Tratamento de erro
	print "\nERRO: Esse arquivo nao existe!\n"
else:
	print "Nome do arquivo de saida:"
	output_name = raw_input()
	output_file = open(output_name, 'w')
	CREATE_OUTPUT(input_file, output_file)
	END_OF_PROGRAM(output_name)
	
