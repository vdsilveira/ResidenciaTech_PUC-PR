# 🔒 Módulos de Operação AES - Criptografia com OpenSSL

## ✨  Descrição
Este script em Python utiliza o **OpenSSL** para realizar a cifragem de um texto em diferentes modos de operação do **AES (Advanced Encryption Standard)**. O texto a ser cifrado é lido a partir de um arquivo e criptografado nos seguintes modos:

* ⚡**ECB (Electronic Codebook)**

* 🔒**CBC (Cipher Block Chaining)**

* ♻**CFB (Cipher Feedback)**

* 🛠**OFB (Output Feedback)**

* ⏳**CTR (Counter Mode)**

A saída do script exibe os textos cifrados para cada modo de operação, além da chave utilizada para a cifragem.

## ⚙ Requisitos

* 💻 Python 3.x

* 🔧 OpenSSL instalado

Para verificar se o OpenSSL está instalado, execute:

    openssl version
Caso o OpenSSL não esteja instalado, utilize:

* 🛠 Ubuntu/Debian:

      sudo apt install openssl

* 🌴MacOS (via Brew):

      brew install openssl

* 💻 Windows:
_Baixe e instale o OpenSSL a partir do site oficial: OpenSSL Windows_

## ⚡ Como Usar

1-  📄 Crie um arquivo de texto chamado Msg.txt e adicione o conteúdo que deseja cifrar.

2- 🛠 Execute o script:

    python3 Modos.py

## Estrutura do Script
O script segue as seguintes etapas:

1- 📂 Leitura do arquivo: O texto a ser cifrado é lido de Msg.txt.

2- 🔐 Criptografia em diferentes modos: Cada modo de operação do AES é aplicado ao texto.

3- 📈 Exibição dos resultados: Os textos cifrados são exibidos no terminal.

### **Exemplo de Saída**
```
✅ Modulo ECB - Cifragem realizada com sucesso!
Texto cifrado:  ➡️ U2FsdGVkX1+MUq2WnpQxtnXgPRpiHQuel6cXKmgazdN7p1Ou9lnA1Y7nL75A0fjb

✅ Modulo CBC - Cifragem realizada com sucesso!
Texto cifrado:  ➡️ U2FsdGVkX19bASXyo/q5IsxjFaMLYU6/dtK1NpQGkrwKsiIugurwpuGsKtptoK7/

📜 Texto em claro: Testando saídas do modos AES
🔐 Chave: test123
```
## 👨‍💻 **Autor**

Desenvolvido por Viniciusd. 🚀

Caso tenha sugestões ou melhorias, fique à vontade para contribuir!💪