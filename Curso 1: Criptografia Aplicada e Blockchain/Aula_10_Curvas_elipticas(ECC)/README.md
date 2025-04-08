# Criptografia com Curvas Elípticas (ECC)

Este diretório contém dois scripts principais que demonstram o uso de curvas elípticas (ECC), especificamente a curva `secp256k1`, utilizada no Bitcoin e Ethereum.

---

## 📁 Estrutura do Projeto
├── keygen_Openssl.py  **# Gera par de chaves ECC com OpenSSL (formato PEM)**

├── ETH_format.py  **# Converte chave privada gerada para hexadecimal compatível com Ethereum**

├── PrivKey.pem **# Chave privada gerada em formato PEM**

├── PubKey.pem **# Chave pública derivada da chave privada (PEM)**

---


## 🔐 Script: `keygen_Openssl.py`

Este script utiliza o OpenSSL via `subprocess` para gerar um par de chaves ECC na curva `secp256k1`.

### ✔️ O que ele faz:

1. **Lista as curvas ECC disponíveis no OpenSSL**:
   ```bash
   openssl ecparam --list_curves 
   ```

2. **Gera uma chave privada usando a curva `secp256k1`**:
   ```bash
    openssl ecparam -genkey -name secp256k1 -out PrivKey.pem

   ```

3. **Gera a chave pública correspondente:**:
   ```bash
    openssl ec -in PrivKey.pem -pubout -out PubKey.pem
    -out PrivKey.pem
   ```
4. **Exibe as chaves em formato de texto (privada e pública):**:
   ```bash
    openssl ec -in PrivKey.pem -text -noout
   ```
---
## 🧮 Script: `ETH_format.py`
Este script lê a chave privada gerada (`PrivKey.pem`) e a converte para o formato compatível com **endereços Ethereum**.

### ✔️ O que ele faz:

1. **Lê a chave privada (PEM)** usando a biblioteca `cryptography`.

2. **Extrai os 32 bytes da chave privada**e exibe no formato hexadecimal (como usado no Ethereum).

3. **Gera a chave pública** a partir da privada usando a biblioteca `ecdsa`.

4. **Calcula o endereço Ethereum** aplicando o hash `Keccak-256` sobre a chave pública (com prefixo `0x04`) e pegando os últimos 20 bytes.
5. **Exibe o endereço Ethereum resultante**.

---
## 🔧 Requisitos:
Instale os pacotes necessários com:
```
pip install cryptography ecdsa pysha3
```
---
## 📬 Exemplo de saída
Instale os pacotes necessários com:
```
🔐 Chave Privada e publica:
Private-Key: (256 bit)
priv:
  61:39:39:8c:e9:82:d5:1b:eb:c9:b2:f0:a8:e6:ea:
  aa:e2:34:d7:d3:29:0a:34:c4:db:86:a0:c0:f5:b3:
  bf:97
   
pub:
    04:4f:48:34:90:fc:dd:b2:0c:de:a0:46:c1:9e:a1:
    ae:61:43:ad:08:4b:04:32:d0:8e:4f:3d:5d:e9:6e:
    74:cd:62:36:2b:52:38:31:57:b9:26:92:fd:94:d5:
ASN1 OID: secp256k1

🔑 Chave privada (Ethereum): 
734448a91303a898e6acc9f72b5c80733ef11688b2216c0c91d839976f5059f2

📬 Endereço Ethereum: 
0xaf886700782607480e01F6998635Fedd38d45b55

```
---
## 🧠 Conceitos abordados
* Criptografia de curvas elípticas (ECC)

* Geração de chaves com OpenSSL

* Conversão de chaves para formatos Bitcoin/Ethereum

* Cálculo de endereço Ethereum a partir da chave pública