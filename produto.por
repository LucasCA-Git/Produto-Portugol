programa {

    funcao inicio() {
        cadeia categoriasValidas[100]
        cadeia nome
        cadeia nomesInvalidos[100]
        cadeia nomesValidos[100]
        cadeia motivoErro[100]
        inteiro categoria
        inteiro codigo = 1
        inteiro opcao
        inteiro produtosInvalidos = 0
        inteiro totalErros = 0
        inteiro totalValidos = 0
        real preco
        real precosInvalidos[100]
        real precosValidos[100]
        escreva("\n═══════════════════════════════════════════════════════\n")
        escreva("             CADASTRO DE PRODUTOS QUÍMICOS\n")
        escreva("═══════════════════════════════════════════════════════\n")
        escreva("Categorias disponíveis:\n")
        escreva("  [1] Limpeza\n")
        escreva("  [2] Cosmeticos\n")
        escreva("  [3] Medicinal\n")
        escreva("  [4] Inflamável\n")
        escreva("  [5] Corrosivos\n")
        escreva("  [0] outros\n")
        escreva("═══════════════════════════════════════════════════════\n")
        enquanto (verdadeiro) {
            escreva("\n-------------------------------------------------------\n")
            escreva("Escolha uma opção:\n")
            escreva(" [1] Cadastrar novo produto\n")
            escreva(" [2] Exibir produtos válidos\n")
            escreva(" [0] Sair\n")
            escreva("Opção: ")
            leia(opcao)
            se (opcao == 0) {
                escreva("\n⏹ Saindo do programa...\n")
                pare
            }
            senao se (opcao == 2) {
                se (totalValidos== 0) {
                    escreva("\n⚠️ Nenhum produto válido cadastrado ainda.\n")
                }
                senao {
                    escreva("\n📋 Lista de produtos válidos:\n")
                    para (inteiro i = 0; i < totalValidos; i++) {
                        escreva(" - Nome: ", nomesValidos[i], " | Categoria: ", categoriasValidas[i], " | Preço: R$ ", precosValidos[i], "\n")
                    }
                }
            }
            senao se (opcao == 1) {
    escreva("\n📦 Produto ", codigo, "\n")
    escreva("» Nome do produto: ")
    leia(nome)
    escreva("» Preço do produto (R$): ")
    leia(preco)
    escreva("» Código da categoria [1 a 5] ou [0] para outro tipo: ")
    leia(categoria)
    se (preco <= 0 ou categoria < 0 ou categoria > 5) {
        se (preco <= 0 e (categoria < 0 ou categoria > 5)) {
            motivoErro[produtosInvalidos] = "❌ Produto " + codigo + ": Erro no preço e categoria inválida"
        }
        senao se (preco <= 0) {
            motivoErro[produtosInvalidos] = "❌ Produto " + codigo + ": Erro no preço (preço <= 0)"
        }
        senao {
            motivoErro[produtosInvalidos] = "❌ Produto " + codigo + ": Categoria inválida (fora de 0 a 5)"
        }
        escreva("⚠️ Cadastro rejeitado.\n")
        escreva("🔍 Dados do produto rejeitado:\n")
        escreva("   - Nome: ", nome, "\n")
        escreva("   - Preço: R$ ", preco, "\n")
        escreva("   - Categoria: ", categoria, "\n")
        nomesInvalidos[produtosInvalidos] = nome
        precosInvalidos[produtosInvalidos] = preco
        produtosInvalidos++
        totalErros++
    }
    senao {
        nomesValidos[totalValidos] = nome
        precosValidos[totalValidos] = preco
        escolha (categoria) {
            caso 1:
                categoriasValidas[totalValidos] = "Limpeza"
                pare
            caso 2:
                categoriasValidas[totalValidos] = "Cosméticos"
                pare
            caso 3:
                categoriasValidas[totalValidos] = "Medicinal"
                pare
            caso 4:
                categoriasValidas[totalValidos] = "Inflamável"
                pare
            caso 5:
                categoriasValidas[totalValidos] = "Corrosivos"
                pare
            caso 0:
                categoriasValidas[totalValidos] = "Outros"
                pare    
        }
        totalValidos++
        escreva("✅ Produto cadastrado com sucesso!\n")
        escreva("🔍 Dados do produto cadastrado:\n")
        escreva("   - Nome: ", nome, "\n")
        escreva("   - Preço: R$ ", preco, "\n")
        escreva("   - Categoria: ", categoriasValidas[totalValidos - 1], "\n")
    }
    codigo++
            }
            senao {
                escreva("⚠️ Opção inválida! Tente novamente.\n")
            }
        }
        escreva("\n═══════════════════════════════════════════════════════\n")
        escreva("                    RELATÓRIO FINAL                      \n")
        escreva("═══════════════════════════════════════════════════════\n")
        escreva("✔ Produtos válidos cadastrados: ", totalValidos, "\n")
        escreva("✘ Produtos inválidos: ", produtosInvalidos, "\n")
        se (produtosInvalidos > 0) {
            escreva("\n🛑 Motivos dos erros:\n")     
            para (inteiro i = 0; i < produtosInvalidos; i++) {
                    escreva("   - Nome: ", nomesInvalidos[i], "\n")
                    escreva("   - Motivo: ", motivoErro[i], "\n")
                    escreva("--------------------------------------------------------------\n")
            }
        }
        escreva("═══════════════════════════════════════════════════════\n")
        escreva("📝 Programa finalizado\n")
        escreva("═══════════════════════════════════════════════════════\n")
    }
}


