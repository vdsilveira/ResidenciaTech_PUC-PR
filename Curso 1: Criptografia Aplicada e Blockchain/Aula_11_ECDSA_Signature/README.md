# 🔐 Assinatura Digital com ECDSA usando OpenSSL

Este repositório contém o script `SignMsg_ECDSA.py`, que demonstra como implementar assinaturas digitais utilizando o algoritmo ECDSA (Elliptic Curve Digital Signature Algorithm) com a curva `secp256k1` e a ferramenta OpenSSL em Python. O script gera chaves, assina uma mensagem e verifica a assinatura.

---

## 🧾 Funcionalidades

- 📜 Listagem das curvas elípticas disponíveis no OpenSSL
- 🔑 Geração de chaves ECDSA (privada e pública) com a curva `secp256k1`
- ✍️ Assinatura digital de uma mensagem usando SHA-256
- ✅ Verificação da assinatura utilizando a chave pública
- 🔍 Visualização da chave privada em formato texto

---

## 🛠️ Pré-requisitos

- Python 3.6 ou superior
- OpenSSL instalado e acessível via linha de comando
- Biblioteca Python `cryptography`

### Instalação

1. Instale a biblioteca `cryptography`:
   ```bash
   pip install cryptography
   ```

2. Verifique se o OpenSSL está instalado:
   ```bash
   openssl version
   ```
   Caso não esteja instalado, instale-o conforme o sistema operacional:
   - **Ubuntu/Debian**: `sudo apt-get install openssl`
   - **macOS**: `brew install openssl`
   - **Windows**: Baixe e instale a partir do [site oficial do OpenSSL](https://www.openssl.org/).

3. Crie um arquivo `Msg.txt` no mesmo diretório do script com a mensagem a ser assinada.

---

## 📜 Estrutura do Script

O script `SignMsg_ECDSA.py` executa as seguintes etapas:

1. **Listar curvas disponíveis**:
   Exibe as curvas elípticas suportadas pelo OpenSSL.
   ```bash
   openssl ecparam -list_curves
   ```

2. **Gerar chave privada**:
   Cria uma chave privada ECDSA com a curva `secp256k1` e salva em `PrivKey.pem`.
   ```bash
   openssl ecparam -genkey -name secp256k1 -out PrivKey.pem
   ```

3. **Gerar chave pública**:
   Extrai a chave pública da chave privada e salva em `PubKey.pem`.
   ```bash
   openssl ec -in PrivKey.pem -pubout -out PubKey.pem
   ```

4. **Visualizar chave privada**:
   Exibe os detalhes da chave privada em formato texto.
   ```bash
   openssl ec -in PrivKey.pem -text -noout
   ```

5. **Assinar mensagem**:
   Assina o arquivo `Msg.txt` usando SHA-256 e a chave privada, gerando `signature.bin`.
   ```bash
   openssl dgst -sha256 -sign PrivKey.pem -out signature.bin Msg.txt
   ```

6. **Verificar assinatura**:
   Verifica a assinatura em `signature.bin` usando a chave pública e o arquivo `Msg.txt`.
   ```bash
   openssl dgst -sha256 -verify PubKey.pem -signature signature.bin Msg.txt
   ```

---

## 📁 Arquivos Necessários

- `Msg.txt`: Arquivo de texto contendo a mensagem a ser assinada.
- `PrivKey.pem` (gerado): Arquivo com a chave privada no formato PEM.
- `PubKey.pem` (gerado): Arquivo com a chave pública no formato PEM.
- `signature.bin` (gerado): Arquivo binário com a assinatura da mensagem.

---

## 🧪 Como Executar

1. Certifique-se de que o arquivo `Msg.txt` existe no mesmo diretório do script e contém a mensagem a ser assinada.
2. Execute o script:
   ```bash
   python SignMsg_ECDSA.py
   ```

O script executará todas as etapas automaticamente, desde a listagem de curvas até a verificação da assinatura.

---

## ✅ Exemplo de Saída

```text
📜 Curvas disponíveis:
  secp112r1 : SECG curve over a 112 bit prime field
  secp256k1 : SECG curve over a 256 bit prime field
  ...

🔑 Gerando chave privada e pública...
writing EC key

🔐 Visualizando chave privada:
read EC key
Private-Key: (256 bit)
priv:
    12:34:56:78:9a:bc:de:f0:12:34:56:78:9a:bc:de:
    f0:12:34:56:78:9a:bc:de:f0:12:34:56:78:9a:bc:
    de:f0
pub:
    04:12:34:56:78:9a:bc:de:f0:12:34:56:78:9a:bc:
    ...
ASN1 OID: secp256k1

✍️ Assinando a mensagem...

✅ Verificando a assinatura...
Verified OK
```

---

## 📝 Notas

- O script assume que o arquivo `Msg.txt` existe no diretório atual. Caso contrário, ocorreracockerrará um erro.
- A curva `secp256k1` é amplamente utilizada em aplicações como Bitcoin e Ethereum.
- Os arquivos `PrivKey.pem`, `PubKey.pem` e `signature.bin` são gerados automaticamente pelo script.
- Para alterar a mensagem, edite o arquivo `Msg.txt` antes de executar o script.
- O script usa o algoritmo SHA-256 para gerar o hash da mensagem antes da assinatura.