# 🔐 Geração de Chaves RSA e Cifragem/Decifragem com OpenSSL via Python

Este repositório contém dois scripts em Python que automatizam o uso do OpenSSL para criptografia assimétrica com RSA. Eles são úteis para estudar, testar e entender como funciona o processo de geração de chaves, cifragem de mensagens e decifragem usando Python e OpenSSL.

---

## 📁 Script 1: `PrivKey_RSA_com_AES.py`

Este script realiza a **geração de um par de chaves RSA**, com a **chave privada cifrada usando AES-256** e protegida por senha. Também exibe o conteúdo das chaves em formato texto para verificação.

### ✅ Funcionalidades

- Solicita uma senha do usuário.
- Gera uma chave privada RSA com criptografia AES-256.
- Exibe a chave privada (em formato texto).
- Deriva a chave pública da chave privada.
- Exibe a chave pública (em formato texto).

---

## 📁 Script 2: `Cifragem_RSA.py`

Este script realiza um ciclo completo de uso de criptografia RSA: gera chaves, cria uma mensagem, cifra com a chave pública e decifra com a chave privada.

### ✅ Funcionalidades

- Gera uma chave privada RSA protegida com AES-256.
- Gera a chave pública correspondente.
- Cria e salva uma mensagem de texto.
- Cifra a mensagem com a chave pública.
- Decifra a mensagem com a chave privada.
- Mostra o conteúdo original e o conteúdo decifrado.

---

## 🧠 Conceitos Envolvidos

- **Criptografia RSA**: Técnica de chave pública onde dados cifrados com a chave pública só podem ser decifrados com a chave privada.
- **OpenSSL**: Ferramenta robusta de linha de comando para criptografia.
- **AES-256**: Método simétrico usado para proteger a chave privada.
- **Subprocess**: Módulo Python usado para executar comandos no terminal.

---

## ✅ Pré-requisitos

- Python 3 instalado
- OpenSSL instalado (verifique com `openssl version` no terminal)

---

## ▶️ Como Executar

```bash
# Executar script de geração de chaves com senha
python3 PrivKey_RSA_com_AES.py

# Executar script completo de cifragem e decifragem
python3 Cifragem_RSA.py
```
## 📂 Estrutura de Diretórios

```text
ResidenciaTech_PucPR/
└── Curso 1: Criptografia Aplicada e Blockchain/
    └── Aula_9/
        ├── exercicio_1/
        │   ├── PrivKey_RSA_com_AES.py    
        │   ├── viniciusd.privada.pem       
        │   └── viniciusd.publica.pem       
        │
        └── exercicio_2/
            ├── Cifragem_RSA.py              
            ├── key.privada.pem             
            ├── key.publica.pem             
            ├── Msg.txt                     
            ├── secretMsg.bin               
            └── msgDecifrada.txt            
