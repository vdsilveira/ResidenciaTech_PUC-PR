# 🔐 Guia de Geração de Certificados com OpenSSL

Este documento apresenta o passo a passo para gerar um par de chaves RSA, criar uma solicitação de assinatura de certificado (CSR) e emitir um certificado autoassinado usando **OpenSSL**.

Ideal para ambientes de teste, aprendizado ou uso local.

---

## 📋 Tabela Resumo

| Etapa | Descrição | Comando |
|------|-----------|---------|
| 1️⃣ | Gerar chave privada com AES256 | `openssl genrsa -aes256 -out seunome.privada.pem 2048` |
| 2️⃣ | Extrair chave pública da chave privada | `openssl rsa -pubout -in seunome.privada.pem -out seunome.publica.pem` |
| 3️⃣ | Criar solicitação de assinatura de certificado (CSR) | `openssl req -new -key seunome.privada.pem -out csr.pem` |
| 4️⃣ | Gerar certificado autoassinado válido por 365 dias | `openssl req -x509 -days 365 -key seunome.privada.pem -in csr.pem -out certificate.crt` |
| 5️⃣ | Exibir informações do certificado gerado | `openssl x509 -noout -text -in certificate.crt` |

---

## 🔐 1. Gerar uma chave privada RSA com criptografia AES256

```bash
openssl genrsa -aes256 -out seunome.privada.pem 2048
```
Isso gera uma chave privada com 2048 bits protegida por senha.

**Exemplo de nome de arquivo:** vdsilveira.privada.pem

## 📬 2. Gerar a chave pública correspondente
```bash
openssl rsa -pubout -in seunome.privada.pem -out seunome.publica.pem
```
Essa é sua chave pública derivada da privada.

## 📄 3. Gerar a CSR (Certificate Signing Request)
```bash
openssl req -new -key seunome.privada.pem -out csr.pem
```
Você precisará inserir as seguintes informações:

* Country Name (ex: BR)

* State or Province Name

* Locality Name

* Organization Name

* Organizational Unit Name

* Common Name (nome do host ou domínio)

* Email Address

## 🏷️ 4. Gerar um certificado autoassinado
```bash
openssl req -x509 -days 365 -key seunome.privada.pem -in csr.pem -out certificate.crt
```
Esse certificado é **autoassinado** e válido por **365 dias**.
Pode ser usado para testes, HTTPS local, entre outros.

## 🔍 5. Verificar o conteúdo do certificado
```bash
openssl x509 -noout -text -in certificate.crt

```
Esse comando mostra detalhes como:

* Período de validade

* Algoritmo de assinatura

* Subject e Issuer

* Chave pública

* Extensões (se houver)

