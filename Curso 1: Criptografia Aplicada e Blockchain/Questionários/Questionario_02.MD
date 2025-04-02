# 🛡️ Questionário de Criptografia -02

## 📌 Sobre o Questionário

Este questionário tem como objetivo avaliar o conhecimento sobre conceitos fundamentais de criptografia, abordando algoritmos, modos de operação e segurança de dados.

## 📌 Tópicos Abordados

* **Criptografia Simétrica**: AES, propriedades, segurança.

* **Modos de Operação:** ECB, CBC, CFB, CTR.

* **Ataques Criptográficos:** Repetição de blocos, resistência a ataques.

* **Segurança de Dados:** Uso de chaves, IV, backup seguro.

* **Uso do PyCryptodome:** Implementação prática de criptografia.

---
## 1. No contexto do algoritmo de criptografia simétrica AES, qual das seguintes alternativas apresenta uma propriedade que o torna resistente a ataques de criptoanálise linear e diferencial?

✅ Resposta correta: O uso de uma caixa S que realiza substituições byte a byte.

🔴 Explicação: A caixa S (SubBytes) adiciona não-linearidade ao AES, dificultando ataques de criptoanálise.

---

## 2. Qual das seguintes alternativas apresenta um ataque que explora a vulnerabilidade do modo de operação ECB (Electronic Codebook)?

✅ Resposta correta: Ataque de repetição de blocos, no qual blocos de texto claro idênticos resultam em blocos de texto cifrado idênticos.

🔴 Explicação: ECB não adiciona aleatoriedade, tornando padrões visíveis no texto cifrado.

---

## 3. De maneira geral, qual das seguintes alternativas apresenta um modo de operação que não requer o uso de padding?

✅ Resposta correta: CFB

🔴 Explicação: Modos como CFB e CTR processam dados byte a byte ou bit a bit, dispensando padding.

---

## 4. No contexto do AES, qual das alternativas garante segurança contra ataques quânticos?

✅ Resposta correta: O uso de chaves de 256 bits.

🔴 Explicação: AES-256 ainda é considerado resistente a ataques quânticos devido ao aumento do espaço de chave.

---

## 5. Qual das seguintes afirmações sobre criptografia simétrica é FALSA?

✅ Resposta correta: É geralmente mais lenta que a criptografia assimétrica.

🔴 Explicação: Criptografia simétrica é mais rápida, pois usa uma única chave para cifrar e decifrar.


---

## 6. Qual modo de operação está melhor preparado para cifragem e decifragem paralela?

✅ Resposta correta: CTR (Counter)

🔴 Explicação: CTR permite encriptação/desencriptação paralela, pois cada bloco usa um contador independente.

---

## 7. Qual tamanho de chave AES é mais adequado para proteger registros médicos a longo prazo?

✅ Resposta correta: 256 bits

🔴 Explicação: AES-256 fornece maior segurança para dados sensíveis armazenados por períodos prolongados.

---

## 8. Como garantir a segurança dos registros médicos durante backup e restauração?

✅ Resposta correta: Criptografar os backups com uma chave diferente da usada para os registros originais.

🔴 Explicação: O uso de chaves diferentes reduz o impacto de vazamentos de chaves.

---

## 9. Como indicar o modo de operação CFB ao decifrar um texto cifrado usando AES e PyCryptodome?

✅ Resposta correta: Ao instanciar a cifra, indicar AES.new(key, AES.MODE_CFB)

🔴 Explicação: O modo de operação deve ser definido na inicialização do objeto AES.

---

## 10. Qual é o propósito do vetor de inicialização (IV) no modo CBC do AES no PyCryptodome?

✅ Resposta correta: Adicionar aleatoriedade ao processo de criptografia, tornando a cifragem de cada mensagem única.

🔴 Explicação: O IV impede que blocos idênticos gerem saídas idênticas, aumentando a segurança.

---