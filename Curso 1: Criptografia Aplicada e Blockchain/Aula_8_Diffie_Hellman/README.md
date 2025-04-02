# Gerador de Chaves Diffie-Hellman com OpenSSL

Este script automatiza a geração de chaves Diffie-Hellman (DH) usando o OpenSSL. Ele executa todas as etapas necessárias para a troca segura de chaves entre duas partes (Alice e Bob).

## 📌 Funcionalidades

* Gera os parâmetros públicos do DH (dhparams.pem)

* Visualiza os parâmetros gerados

* Gera os pares de chaves privadas e públicas para Alice e Bob

* Extrai e exibe as chaves públicas

* Deriva as chaves secretas compartilhadas

* Compara as chaves secretas para garantir que são idênticas

* Exibe a chave secreta de Alice em formato hexadecimal

## 🛠️ Pré-requisitos

* Para executar o script, você precisa ter:

* Python 3 instalado

* OpenSSL instalado e disponível no PATH

* Sistema operacional Linux ou WSL no Windows

## 🚀 Como Executar o Script

1- Clone este repositório ou copie o script para um arquivo dh_keygen.py.

2- Execute o script com o seguinte comando:
```
python3 dh_keygen.py
```
3- O script gerará as chaves e exibirá as informações relevantes na saída do terminal.

## 🔍 Etapas do Processo

1️⃣ Gerar os parâmetros DH:
```
openssl dhparam -out dhparams.pem 2048
```

2️⃣ Visualizar os parâmetros:
```
openssl dhparam -in dhparams.pem -text -noout

```

3️⃣ Gerar as chaves de Alice:
```
openssl genpkey -paramfile dhparams.pem -out alice_keys.pem
```

4️⃣ Visualizar a chave de Alice:
```
openssl pkey -in alice_keys.pem -text -noout
```

5️⃣ Gerar as chaves de Bob:
```
openssl genpkey -paramfile dhparams.pem -out bob_keys.pem
```


6️⃣ Extrair e visualizar as chaves públicas de Alice e Bob:
```
openssl pkey -in alice_keys.pem -pubout -out alice_pub.pem
openssl pkey -pubin -in alice_pub.pem -text
openssl pkey -in bob_keys.pem -pubout -out bob_pub.pem
openssl pkey -pubin -in bob_pub.pem -text
```


7️⃣ Gerar a chave secreta de Alice e Bob:
```
openssl pkeyutl -derive -inkey alice_keys.pem -peerkey bob_pub.pem -out alice_secret.bin
openssl pkeyutl -derive -inkey bob_keys.pem -peerkey alice_pub.pem -out bob_secret.bin
```

8️⃣ Comparar as chaves geradas para garantir que são idênticas:
```
cmp alice_secret.bin bob_secret.bin

```



## 📝 Observações

* Se cmp retornar erro, significa que a troca de chaves falhou.

* A chave secreta gerada deve ser igual para Alice e Bob, garantindo uma comunicação segura.



