# Troca de Mensagens Criptografadas com OpenSSL

## 1. Gerar Chaves RSA

Gerar a chave privada para o Bob:

```bash
openssl genrsa -out BOB/BOB_KEYS/BOB_PrivateKey.pem

```
## Gerar a chave privada para a Alice:
```bash
openssl genrsa -out ALICE/ALICE_KEYS/ALICE_PrivateKey.pem


```
## Gerar a chave pública para o Bob a partir da chave privada:
```bash
openssl rsa -in BOB/BOB_KEYS/BOB_PrivateKey.pem -pubout -out BOB/BOB_KEYS/BOB_PublicKey.pem


```
## Gerar a chave pública para a Alice a partir da chave privada:

```bash
openssl rsa -in ALICE/ALICE_KEYS/ALICE_PrivateKey.pem -pubout -out ALICE/ALICE_KEYS/ALICE_PublicKey.pem


```
## 2. Criptografar a Mensagem
```bash
echo "fugindo da perseguição que virá sobre os bitcoiners!" > BOB/msg_BOBtoALICE/message.txt


```
## Criptografar a mensagem com a chave pública de Alice:

```bash
openssl pkeyutl -encrypt -in BOB/msg_BOBtoALICE/message.txt -out BOB/msg_BOBtoALICE/message.enc -pubin -inkey ALICE/ALICE_KEYS/ALICE_PublicKey.pem


```
## Criptografar a mensagem diretamente sem criar o arquivo de mensagem:
```bash
echo "fugindo da perseguição que virá sobre os bitcoiners!" | openssl pkeyutl -encrypt -out BOB/msg_BOBtoALICE/message.enc -pubin -inkey ALICE/ALICE_KEYS/ALICE_PublicKey.pem



```

## 3. Descriptografar a Mensagem

```bash
openssl pkeyutl -decrypt -in BOB/msg_BOBtoALICE/message.enc -out ALICE/ALICE_READBLE/message_decrypted.txt -inkey ALICE/ALICE_KEYS/ALICE_PrivateKey.pem


```

# 4. Estrutura de Diretórios

### *   Chaves

* ALICE/ALICE_KEYS/ALICE_PrivateKey.pem (Chave Privada de Alice)

* ALICE/ALICE_KEYS/ALICE_PublicKey.pem (Chave Pública de Alice)

* BOB/BOB_KEYS/BOB_PrivateKey.pem (Chave Privada de Bob)

*  BOB/BOB_KEYS/BOB_PublicKey.pem (Chave Pública de Bob)

### * Mensagens

* message.txt (Mensagem original)
*  message.enc (Mensagem criptografada)
* message_decrypted.txt (Mensagem descriptografada)

```.
├── ALICE
│   ├── ALICE_KEYS
│   │   ├── ALICE_PrivateKey.pem
│   │   └── ALICE_PublicKey.pem
│   └── ALICE_READBLE
│       └── message_decrypted.txt
└── BOB
    ├── BOB_KEYS
    │   ├── BOB_PrivateKey.pem
    │   └── BOB_PublicKey.pem
    └── msg_BOBtoALICE
        ├── message.enc
        └── message.txt
```


