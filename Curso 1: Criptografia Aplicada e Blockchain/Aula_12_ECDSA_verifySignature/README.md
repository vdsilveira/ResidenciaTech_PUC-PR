# 🔐 Assinatura Digital com RSA usando PyCryptodome

Este repositório demonstra como implementar assinaturas digitais com o algoritmo RSA utilizando a biblioteca `PyCryptodome` em Python. O projeto inclui geração de chaves, assinatura de mensagens e verificação de assinaturas.

---

## 🧾 Funcionalidades

- ✅ Geração de chaves RSA (pública e privada)
- ✍️ Assinatura digital de mensagens com a chave privada
- 🔍 Verificação de assinaturas usando a chave pública
- 📂 Leitura de mensagens, assinaturas e chaves a partir de arquivos

---

## 🛠️ Pré-requisitos

- Python 3.6 ou superior
- Biblioteca `pycryptodome`

### Instalação

Instale a biblioteca `PyCryptodome` com o seguinte comando:

```bash
pip install pycryptodome
```

---

## 📜 Estrutura do Código

### `generate_keys(key_size=2048)`

Gera um par de chaves RSA (pública e privada) com o tamanho especificado (padrão: 2048 bits).

```python
public_key, private_key = generate_keys()
```

### `sign_message(message: bytes, key) -> bytes`

Assina uma mensagem utilizando a chave privada fornecida.

```python
signature = sign_message(b"Ola", private_key)
```

### `verify_signature(message: bytes, signature: bytes, key) -> bool`

Verifica a autenticidade de uma assinatura utilizando a chave pública.

```python
is_valid = verify_signature(b"Ola", signature, public_key)
```

### `verify_from_file()`

Lê os seguintes arquivos e verifica a assinatura:

- `thais.publica.pem`: Chave pública no formato PEM
- `msg.txt`: Mensagem original
- `assinatura.bin`: Assinatura da mensagem (em binário)

```python
verify_from_file()
```

---

## 📁 Arquivos Necessários

- `thais.publica.pem`: Contém a chave pública no formato PEM
- `msg.txt`: Contém a mensagem original a ser verificada
- `assinatura.bin`: Contém a assinatura da mensagem em formato binário

---

## 🧪 Como Executar

O script realiza duas atividades principais:

### Atividade 1: Verificação de Assinatura a Partir de Arquivos

Lê os arquivos `thais.publica.pem`, `msg.txt` e `assinatura.bin` e verifica a assinatura digital.

```bash
python script.py
```

### Atividade 2: Geração e Verificação de Assinatura

- Gera um novo par de chaves RSA
- Assina a mensagem `"Ola"`
- Exibe a chave privada, a chave pública e a assinatura codificada em Base64
- Verifica a validade da assinatura

```bash
python script.py
```

---

## ✅ Exemplo de Saída

```text
--------------------------------------------------------
ATIVIDADE 1:
--------------------------------------------------------
Verificando assinatura a partir de arquivos...
Resultado da verificação: True

--------------------------------------------------------
ATIVIDADE 2:
--------------------------------------------------------
Chave Privada:
-----BEGIN RSA PRIVATE KEY-----
MIICWwIBAAKBgQC...
-----END RSA PRIVATE KEY-----

Chave Pública:
-----BEGIN PUBLIC KEY-----
MIGeMA0GCSqGSIb3DQEBAQUAA4GMADCB...
-----END PUBLIC KEY-----

Assinatura (em Base64):
LYlk6XNp9TWFe...

Resultado da verificação: True
```

---

## 📝 Notas

- Certifique-se de que os arquivos `thais.publica.pem`, `msg.txt` e `assinatura.bin` estejam no mesmo diretório do script para a Atividade 1.
- O tamanho da chave RSA pode ser ajustado na função `generate_keys()`, mas 2048 bits é o padrão recomendado para segurança.
- A mensagem a ser assinada deve ser fornecida em formato `bytes`.