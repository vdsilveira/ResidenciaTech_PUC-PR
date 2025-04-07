# Questionário de Criptografia – Perguntas e Respostas

## 1. Qual das seguintes opções descreve melhor o propósito do algoritmo de Diffie-Hellman?

**Resposta correta:**  
✅ Trocar chaves secretas de forma segura através de um canal inseguro.

---

## 2. Qual a principal vantagem do algoritmo RSA?

**Resposta correta:**  
✅ Permite cifrar, decifrar, assinar e realizar troca de chaves.

---

## 3. Qual a relação entre as chaves pública e privada no RSA?

**Resposta correta:**  
✅ Uma é o inverso multiplicativo da outra módulo n.

---

## 4. Qual a importância da fatoração de números inteiros para a segurança do RSA?

**Resposta correta:**  
✅ A dificuldade de fatorar números grandes garante a segurança das chaves.

---

## 5. Qual ataque é explorado quando um atacante intercepta e manipula a comunicação em uma troca de chaves Diffie-Hellman?

**Resposta correta:**  
✅ Ataque do homem no meio.

---

### Pergunta 6

**Qual é o valor da chave secreta compartilhada entre Alice e Bob?**

#### Dados:

- \( p = 23 \)
- \( g = 5 \)

**Alice:**
- Secreto \( a = 6 \)
- Valor enviado: \( A = 5^6 \mod 23 = 8 \)

**Bob:**
- Secreto \( b = 15 \)
- Valor enviado: \( B = 5^{15} \mod 23 = 19 \)

#### Cálculo da chave secreta compartilhada:

- Alice calcula: \( B^a \mod p = 19^6 \mod 23 = 2 \)
- Bob calcula: \( A^b \mod p = 8^{15} \mod 23 = 2 \)

🔐 **Chave secreta compartilhada: `2`**

✅ **Resposta correta:** **2**


---

## 7. Qual é o expoente privado d correspondente?  
**Dados:**  
- \( p = 17 \), \( q = 11 \)  
- \( n = 187 \), \( \varphi(n) = (17 - 1)(11 - 1) = 160 \)  
- \( e = 7 \)  
- \( d \cdot e \equiv 1 \mod 160 \Rightarrow d = 23 \)

**Resposta correta:**  
✅ 23

---

## 8. Qual seria o impacto na segurança do algoritmo de troca de chaves Diffie-Hellman se o problema do logaritmo discreto pudesse ser resolvido eficientemente para quaisquer inteiros?

**Resposta correta:**  
✅ A segurança do Diffie-Hellman seria comprometida, pois um atacante poderia calcular facilmente as chaves secretas.

---

## 9. O que significa o parâmetro `-aes256` no comando abaixo?

```bash
openssl genrsa -aes256 -out seunome.privada.pem 2048
```

**Resposta correta:**
✅ Cifrar a chave privada sendo gerada usando o algoritmo AES.

## 10.Qual seria o impacto de um computador quântico suficientemente poderoso na segurança dos algoritmos RSA e Diffie-Hellman?
**Resposta correta:**

✅ A segurança de ambos os algoritmos seria comprometida, pois um computador quântico poderia facilmente fatorar números grandes ou calcular o logaritmo discreto.
