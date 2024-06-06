programa
{
	inclua biblioteca Arquivos --> a
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tp
	inclua biblioteca Graficos --> g
	inclua biblioteca Mouse --> m


	funcao limpeTela(inteiro cor){
		g.definir_cor(cor)
		g.limpar()
		g.renderizar()
	}
	
	funcao cadeia sanatize(cadeia User){
		
		User = t.caixa_baixa(User)
		User = t.substituir(User, " ", "_")
		retorne User
	}

	funcao cadeia getPath(cadeia User){
	
		//nome de usuario
		
	
		//caminho onde fica o arquivo
			cadeia path = "./contas/"+sanatize(User)+".japa"
	
	
			//escreva (path+"\n")
	
			retorne path
		
	}
	funcao aviso(cadeia aviso){


		cadeia lixo
		escreva(aviso+"\n")
		escreva("Pressione ENTER para continuar \n")
		leia(lixo)
		limpa()
		
		
	}
	
	funcao cadeia encripte(cadeia cad){
		cad = t.substituir(cad, "1", "!")
		cad = t.substituir(cad, "2", "@")
		cad = t.substituir(cad, "3", "#")
		cad = t.substituir(cad, "4", "$")
		cad = t.substituir(cad, "5", "%")
		cad = t.substituir(cad, "6", "¨")
		cad = t.substituir(cad, "7", "&")
		cad = t.substituir(cad, "8", "*")
		cad = t.substituir(cad, "9", "(")
		cad = t.substituir(cad, "0", ")")

		
		retorne cad
		
	}
	funcao cadeia desencripte(cadeia cad){
		cad = t.substituir(cad, "!", "1")
		cad = t.substituir(cad, "@", "2")
		cad = t.substituir(cad, "#", "3")
		cad = t.substituir(cad, "$", "4")
		cad = t.substituir(cad, "%", "5")
		cad = t.substituir(cad, "¨", "6")
		cad = t.substituir(cad, "&", "7")
		cad = t.substituir(cad, "*", "8")
		cad = t.substituir(cad, "(", "9")
		cad = t.substituir(cad, ")", "0")

		
		retorne cad
		
	}

	funcao inicio()
	{
	// define qual operacao vai ser executada
	cadeia operacao
	inteiro continue = 1
	cadeia lixo = ""

	inteiro index = 0
	inteiro fundo = g.criar_cor(30, 30, 30)

	inteiro telax = 600
	inteiro telay = 400
	g.iniciar_modo_grafico(falso)
	g.definir_dimensoes_janela(telax, telay)
	g.definir_titulo_janela("JapaBank")


	enquanto(verdadeiro){
	
		escolha (index){
			caso 0: 
			//desenha gui			
				g.definir_cor(fundo)	
				g.desenhar_retangulo(0, 0, 600, 400, falso, verdadeiro)
				
				g.definir_cor(g.COR_BRANCO)				
				g.desenhar_retangulo(210, 101, 180, 60, verdadeiro, verdadeiro)
				g.desenhar_retangulo(210, 237, 180, 60, verdadeiro, verdadeiro)
				g.desenhar_texto(290, 192, "OU")
					
				g.definir_cor(g.COR_PRETO)
				g.desenhar_texto(274, 260, "Registrar")
				g.desenhar_texto(284, 123, "Login")
				g.renderizar()

			//funcionamento botoes
				se(m.posicao_x() > 210 e m.posicao_x() < 390 e m.posicao_y() > 101 e m.posicao_y() < 161 e m.botao_pressionado(m.BOTAO_ESQUERDO)){
					
					index = 1
					limpeTela(fundo)
					//g.desenhar_retangulo(0, 0, 600, 400, falso, verdadeiro
				}
				se(m.posicao_x() > 210 e m.posicao_x() < 390 e m.posicao_y() > 237 e m.posicao_y() < 297 e m.botao_pressionado(m.BOTAO_ESQUERDO)){
					
					index = 2
					limpeTela(fundo)
					//g.desenhar_retangulo(0, 0, 600, 400, falso, verdadeiro
				}
		pare
			caso 1:

				g.definir_cor(fundo)	
				g.desenhar_retangulo(0, 0, 600, 400, falso, verdadeiro)
				g.definir_cor(g.COR_BRANCO)				
				g.desenhar_retangulo(40, 30, 100, 30, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_texto(73, 37, "Voltar")
				g.renderizar()

			se(m.posicao_x() > 40 e m.posicao_x() < 140 e m.posicao_y() > 30 e m.posicao_y() < 60 e m.botao_pressionado(m.BOTAO_ESQUERDO)){
					
					index = 0
					limpeTela(fundo)
					//g.desenhar_retangulo(0, 0, 600, 400, falso, verdadeiro
				}
		pare
		caso 2:

				g.definir_cor(fundo)	
				g.desenhar_retangulo(0, 0, 600, 400, falso, verdadeiro)
				g.definir_cor(g.COR_BRANCO)				
				g.desenhar_retangulo(40, 30, 100, 30, verdadeiro, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_texto(73, 37, "Voltar")
				g.renderizar()

			se(m.posicao_x() > 40 e m.posicao_x() < 140 e m.posicao_y() > 30 e m.posicao_y() < 60 e m.botao_pressionado(m.BOTAO_ESQUERDO)){
					
					index = 0
					limpeTela(fundo)
					//g.desenhar_retangulo(0, 0, 600, 400, falso, verdadeiro
				}
		pare

		
	}
	//escreva(m.posicao_x()+"\n")
}
	enquanto(continue == 1){
	escreva("Qual tipo de operação voce deseja executar? \n")
	escreva("1 - Registrar \n")
	escreva("2 - Login \n")

	leia(operacao)
	limpa()

	se(operacao != ""){
	escolha (tp.cadeia_para_inteiro(operacao, 10)){
		caso contrario:
		aviso("Não existe essa opção")
		caso 1:
		// Registro
		
			cadeia regUser
			escreva("Insira seu nome de Usuario: \n")
			leia(regUser)
			
			logico regTeste = a.arquivo_existe(getPath(regUser))
			//inteiro regArquivo = a.abrir_arquivo(regPath, a.MODO_LEITURA)
			//cadeia primeiraLinha = a.ler_linha(regArquivo)
			
			se(regTeste == falso){

				//escreva("aaaaaaaaaaaaaaa")
				inteiro Registro = a.abrir_arquivo(getPath(regUser), a.MODO_ESCRITA)
				a.escrever_linha(regUser, Registro)
				
				cadeia regSenha
				escreva("Digite sua senha nova \n")
				leia(regSenha)
				a.escrever_linha(encripte(regSenha), Registro)
				
				cadeia regId
				escreva("Digite sua matricula\n")
				leia(regId)
				
				a.escrever_linha(regId, Registro)
				a.escrever_linha("0.00", Registro)
				a.fechar_arquivo(Registro)
				limpa()
				
				
				
			}senao{ aviso("Usuario existente!")}
	
	pare
		
		caso 2:
		// Login
		
		//nome de usuario
			escreva("Insira seu nome de Usuario: \n")
			cadeia logUser
			leia(logUser)
			cadeia path = getPath(logUser)
	
			//escreva (path+"\n")
	
		// teste de existencia do caminho
			logico teste = a.arquivo_existe(path)
			se(teste){
		
				inteiro arquivo = a.abrir_arquivo(path, a.MODO_LEITURA)
			
			// conjunto de informações da conta
				cadeia username = a.ler_linha(arquivo)
				cadeia senha = a.ler_linha(arquivo)
				cadeia id = a.ler_linha(arquivo)
				real saldo = tp.cadeia_para_real(a.ler_linha(arquivo))
		
				//escreva (arquivo+"\n")
		
			// verificador de senha
				escreva("Digite sua senha: \n")
				cadeia senhaDig
				leia(senhaDig)
				limpa()
		
				se(senhaDig == desencripte(senha)){


				inteiro contEscolha = 1
				
				real transacao
				transacao = 0
				real mod = saldo+transacao
				enquanto(contEscolha == 1){
						
				// mostrar informações da conta
						

						
						escreva("Matricula: "+id+"\n")
						escreva("Saldo: R$"+mod+"\n")
	
	
						escreva("1 - Deposito\n")
						escreva("2 - Transferencia\n")
						escreva("3 - Saque\n")
						escreva("4 - Desconectar\n")
	
						

						
						cadeia opcao = "0"
						leia(opcao)

					
						se(opcao != ""){
						escolha (tp.cadeia_para_inteiro(opcao, 10)){
							caso 1:
							//deposito
							
							escreva("Quanto deseja depositar?\n")
							leia(transacao)
							a.substituir_texto(path, tp.real_para_cadeia(mod), tp.real_para_cadeia(saldo+transacao), falso)
							mod = mod+transacao
							limpa()
						pare
						
							caso 2:
							//transferencia
							escreva("Para quem deseja fazer a transferencia?\n")
							cadeia transferido
							leia(transferido)
							se(a.arquivo_existe(getPath(transferido))){
								escreva("Quanto deseja transferir?\n")
								leia(transacao)
								
									// retira o dinheiro
								transacao = transacao * -1
								a.substituir_texto(path, tp.real_para_cadeia(mod), tp.real_para_cadeia(saldo+transacao), falso)
								mod = mod+transacao

									// adiciona na outra conta
								inteiro caminho2 = a.abrir_arquivo(getPath(transferido), a.MODO_LEITURA)
									
								cadeia lixoNome = a.ler_linha(caminho2)
								cadeia lixoSenha = a.ler_linha(caminho2)
								cadeia lixoCad = a.ler_linha(caminho2)
								real saldo2 = tp.cadeia_para_real(a.ler_linha(caminho2))

									
								a.substituir_texto(getPath(transferido), tp.real_para_cadeia(saldo2), tp.real_para_cadeia(saldo2+(transacao*-1)), falso)
								
								a.fechar_arquivo(caminho2)
								
								
									
							}senao{aviso("Esse usuario não existe!")}
						pare
						
							caso 3:
							// saque
							escreva("Quanto deseja sacar?\n")
							leia(transacao)
							transacao = transacao * -1
							a.substituir_texto(path, tp.real_para_cadeia(mod), tp.real_para_cadeia(saldo+transacao), falso)
							mod = mod+transacao
							limpa()
						pare
							caso 4:
							contEscolha = 0
						pare
							caso contrario:
							aviso("Não existe essa opção")
						pare
						}
					}senao{aviso("Não existe essa opção")}
				}
					
					a.fechar_arquivo(arquivo)
					limpa()
					//continue = 0
		
			// testes com condiçoes falhas
				}senao{aviso("Não existe esse usuario ou senha incorreta")}
				
		
				//escreva(username+"\n")
				//escreva(senha+"\n")
				
			}senao{
				
				escreva("Digite sua senha: \n") 
				leia(lixo) 
				limpa()
				aviso("Não existe esse usuario ou senha incorreta")
				
	pare
					}
				}
			}					
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3963; 
 * @DOBRAMENTO-CODIGO = [15, 22, 36, 48, 64];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */