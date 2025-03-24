# 🛡️ Perguntas e Respostas sobre Criptografia

## 1. Em relação à criptoanálise, qual das afirmações abaixo é falsa?

**❌ Resposta correta:** Ataques de força bruta sempre são computacionalmente viáveis, independentemente do tamanho da chave.

🔴 **Explicação:** Essa afirmação é falsa, pois ataques de força bruta se tornam inviáveis com o aumento do tamanho da chave (por exemplo, chaves de 256 bits).

---

## 2. Qual das opções NÃO representa uma medida eficaz para mitigar riscos em um HMAC com função hash vulnerável?

**❌ Resposta correta:** Reduzir o tamanho das chaves secretas utilizadas no HMAC para diminuir a carga de processamento e aumentar a velocidade de geração dos MACs.

🔴 **Explicação:** Essa medida compromete ainda mais a segurança. O correto seria aumentar ou manter o tamanho da chave, não reduzi-lo.

---

## 3. Qual a melhor descrição da resistência à colisão em funções hash criptográficas?

**✅ Resposta correta:** A resistência à colisão garante que não seja possível encontrar duas mensagens diferentes com o mesmo hash.

✅ **Explicação:** Essa é exatamente a definição de resistência à colisão.

---

## 4. One-Time Pad – o que um atacante pode fazer se souber um trecho do texto claro?

**✅ Respostas corretas:**
- Determinar a parte da chave utilizada para cifrar esse trecho específico da mensagem.
- Comprometer a comunicação futura se a chave for reutilizada.

🔴 **Explicação:** One-Time Pad é seguro somente se a chave for verdadeiramente aleatória, do mesmo tamanho da mensagem e nunca reutilizada. Se a chave for reutilizada, o sistema pode ser quebrado.

---

## 5. Paradoxo do Aniversário com saída de 128 bits – quantas mensagens para ~50% de chance de colisão?

**✅ Resposta correta:** 2⁶⁴ mensagens

✅ **Explicação:** Pelo paradoxo do aniversário, a probabilidade de colisão atinge 50% com cerca de √(2ⁿ) entradas distintas. Para 128 bits, isso é 2⁶⁴.

---

## 6. Qual é a função de um MAC?

**✅ Resposta correta:** Combinar a mensagem com uma chave secreta para gerar um valor que garante tanto a integridade quanto a autenticidade.

✅ **Explicação:** MACs não fornecem confidencialidade, apenas autenticidade e integridade.

---

## 7. Diferença entre função de hash comum e criptográfica?

**✅ Resposta correta:** Uma função de hash criptográfica deve possuir propriedades como resistência à colisão, resistência à pré-imagem e efeito avalanche, enquanto uma função de hash comum pode não garantir essas propriedades.

✅ **Explicação:** Hashes criptográficos têm requisitos adicionais de segurança, ao contrário de hashes comuns como os usados em tabelas de dispersão.

---

## 8. Qual afirmação sobre segurança de MACs é FALSA?

**❌ Resposta correta:** Aumentar o tamanho da chave secreta utilizada em um MAC sempre garante um aumento exponencial na sua segurança.

🔴 **Explicação:** A segurança não cresce exponencialmente com o tamanho da chave. Outros fatores como algoritmo e modo de uso também impactam.

---

## 9. Em quais cenários o uso de MACs é mais apropriado que criptografia simétrica?

**✅ Resposta correta:** Quando a mensagem precisa ser armazenada em um banco de dados e posteriormente recuperada com garantia de integridade e autenticidade.

✅ **Explicação:** MAC é útil para verificação de integridade sem a necessidade de manter a mensagem cifrada.

---

## 10. Para uma função de hash resistente à colisões, é garantido que H(x) ≠ H(x') se x ≠ x'?

**❌ Resposta correta:** Falso

🔴 **Explicação:** Colisões são matematicamente inevitáveis em funções de hash com saída finita (como 256 bits). A resistência à colisões significa apenas que é difícil encontrá-las, não que elas não existam.

---
