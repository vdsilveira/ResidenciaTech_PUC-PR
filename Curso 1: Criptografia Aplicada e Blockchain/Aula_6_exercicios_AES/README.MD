# Exercícios de  Criptografia AES 🔒
## Objetivo🎯

Esta aula tem como objetivo entender e aplicar os conceitos de criptografia AES, utilizando diferentes modos de operação, como CBC, CFB, e CTR. Ao final da aula, os alunos devem ser capazes de cifrar e decifrar arquivos utilizando AES, além de entender como usar o vetor de inicialização (IV) ou counter/nonce nos diferentes modos de operação.
## Estrutura de Pastas📂
A estrutura de pastas da aula é a seguinte:

```
Aula_6_exercicios/
├── exercicio_01/
├── exercicio_02/
```
Cada exercício possui um código Python que implementa a criptografia e descriptografia utilizando o algoritmo AES.

## 🔐 Exercício 1: Implementação de Cifragem e Decifragem com AES:

#### Objetivos:
* Criar duas funções em Python para cifragem e decifragem de mensagens usando o algoritmo AES.

* A função de cifragem deve ser flexível para permitir diversos modos de operação, e a função de decifragem deve ser capaz de processar esses modos também.

* O vetor de inicialização (IV) deve ser salvo junto com o texto cifrado.

* A função de cifragem deve manipular diferentes modos de operação como CBC, CFB, CTR, e OFB.

##  📝 Passos:

1- **Função de Cifragem:**

* A função de cifragem recebe uma chave AES, o nome do arquivo a ser cifrado e o modo de operação desejado.

* O IV e o texto cifrado devem ser concatenados e salvos em um arquivo .__enc.__

2- **Função de Decifragem:**

* A função de decifragem precisa ser capaz de extrair o IV da mensagem cifrada e realizar o processo de decodificação.

* A função também deve ser flexível para lidar com diferentes modos de operação.

3- **Cifrar e Decifrar:**

* O aluno deve cifrar um arquivo de texto e compartilhar com os colegas para que possam tentar decifrá-lo.

* O código de cifragem e decifragem é fornecido no arquivo __aes.py.__

## 💡 Solução:
* **Cifragem:**

* Utilizando AES com diferentes modos, como CBC, CFB, e CTR.

* O código salva o IV ou counter/nonce junto com o texto cifrado.

* **Decifragem:**

* O código precisa ler o IV ou nonce e usar o modo correto para decifrar a mensagem.

## ⚠️ Observações Importantes:
**Vetor de Inicialização (IV):**

* Todos os modos, exceto o ECB, exigem um IV ou counter/nonce para a cifragem e decifragem.

* O IV deve ser salvo junto com o texto cifrado.

* O formato do arquivo cifrado será: __iv + ciphertext.__

## Exercício 2: Decifrar Documento Cifrado 🕵️‍♂️

**Objetivos:**
* O aluno precisa decifrar um documento cifrado chamado __treasure.txt.enc.__

* Para decifrar, é necessário saber qual a chave AES usada para a cifragem.

* A chave foi cifrada utilizando uma técnica de cifragem antiga e resulta no texto **_dyhubvhfuhwnhbbbdyhubvhfuhwnhbbb_** , que é uma chave de 32 bytes (256 bits).

🔑 **Passos:** 

1- **Decifrar o Texto Cifrado:**

* O aluno deve usar a chave de 32 bytes (256 bits) para decifrar o arquivo treasure.txt.enc.

* A chave fornecida precisa ser recuperada de uma técnica de cifragem anterior, e o arquivo cifrado precisa ser descriptografado.

2 - **Requisitos:**

* O aluno deve garantir que o IV ou nonce (se aplicável) seja corretamente extraído do arquivo cifrado.

* A chave AES de 32 bytes deve ser utilizada na decifração.

## Solução:  💡
**_Chave:_**  A chave fornecida é dyhubvhfuhwnhbbbdyhubvhfuhwnhbbb, que deve ser convertida para um formato adequado para ser utilizada em AES-256.

**_Decifração:_**  Usando o código fornecido, o aluno deve implementar a decifração para recuperar o conteúdo original do arquivo treasure.txt.enc.

## Como Rodar os Exercícios ⚙️
1-**Instalação de Dependências:**

*Certifique-se de ter o **_pycryptodome_**
 instalado:
 ```
 pip install pycryptodome
```
2- **_Exercício 1:_** Cifragem e Decifragem

* Execute o código para cifrar e decifrar arquivos conforme as instruções fornecidas.

* O código estará localizado na pasta exercicio_01.

3- **_Exercício 2:_**  Decifração do Arquivo Cifrado

* O arquivo __treasure.txt__.enc está cifrado, e o aluno deve usar a chave fornecida para decifrá-lo.

* O código estará localizado na pasta __exercicio_02__.

## Conclusão 🎓
Ao final desta aula, os alunos devem ter uma compreensão mais profunda do funcionamento do AES e dos diferentes modos de operação. Além disso, serão capazes de cifrar e decifrar documentos de forma segura e entender as particularidades de cada modo de operação, especialmente a necessidade de um vetor de inicialização (IV) ou nonce. 🔒🔑