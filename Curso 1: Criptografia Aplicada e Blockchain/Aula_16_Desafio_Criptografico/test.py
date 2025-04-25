import subprocess
import os
from sympy import discrete_log
from Crypto.Cipher import AES


# === Passo 1: Decifra mensagem com Cifra de César ===
def cifra_cesar(texto, deslocamento):
    resultado = ''
    for char in texto:
        if char.isalpha():
            shift = 65 if char.isupper() else 97
            resultado += chr((ord(char) - shift - deslocamento) % 26 + shift)
        else:
            resultado += char
    return resultado

def encontrar_frase_correta(texto_cifrado):
    for i in range(26):
        resultado = cifra_cesar(texto_cifrado, i)
        if i == 3:  # Dica: "i == 3" está hardcoded aqui, podemos ajustar isso conforme necessário
            return resultado
    return None

texto_cifrado = "D mruqdgd frqwlqxd qr dutxlyr vrpeulr. Xvh DHV frp fkdyhvhjuhgr h prgr gh rshudfdr FEF"
frase_correta = encontrar_frase_correta(texto_cifrado)
print(f"\n🔓 Frase correta: {frase_correta}")

# === Passo 2: Decifra o arquivo cifrado com OpenSSL usando a chave "segredo" ===
def decifragem(arquivo_cifrado, chave):
    comando = [
        'openssl', 'enc', '-d', '-aes-256-cbc', '-base64', '-pbkdf2',
        '-pass', f'pass:{chave}', '-in', arquivo_cifrado, '-out', 'msg-dec.txt'
    ]
    try:
        subprocess.run(comando, check=True, capture_output=True, text=True)
        with open('msg-dec.txt', 'r', encoding='utf-8') as file:
            mensagem_decifrada = file.read()
        print(f"\n📨 Mensagem decifrada: {mensagem_decifrada}")
    except subprocess.CalledProcessError as e:
        print(f"❌ Erro ao decifrar o arquivo: {e.stderr}")

decifragem('arquivo-sombrio.txt', 'segredo')

# === Passo 3: Calcular a chave K via Diffie-Hellman ===
p = 19
alpha = 2
ya = 13
yb = 16
xb = discrete_log(p, yb, alpha)
print(f"\n🔐 xb encontrado: {xb}")
K = pow(ya, xb, p)
print(f"🔐 Chave secreta K = {K}")

# === Passo 4: Verificar assinatura digital ===
def verificar_assinatura(arquivo_pub, assinatura, arquivo_dica):
    comando = [
        'openssl', 'dgst', '-sha256',
        '-verify', arquivo_pub,
        '-signature', assinatura,
        arquivo_dica
    ]
    try:
        resultado = subprocess.run(comando, check=True, capture_output=True, text=True)
        if "Verified OK" in resultado.stdout:
            print(f"\n✅ Dica válida encontrada: {arquivo_dica}")
            return True
        else:
            print(f"\n❌ Dica inválida: {arquivo_dica}")
            return False
    except subprocess.CalledProcessError as e:
        print(f"\n❌ Erro ao verificar a dica {arquivo_dica}: {e.stderr}")
        return False

arquivo_pub = "quatro.pem"
assinatura = "s.bin"

# Tentar ambas dicas
dica_valida = None
for dica in ["dica1.txt", "dica2.txt"]:
    if verificar_assinatura(arquivo_pub, assinatura, dica):
        dica_valida = dica
        break

# === Passo 5: Usar a chave revelada pela dica 2 para decifrar a mensagem final ===

# Função para decifrar a mensagem final com AES
def decifrar_msg_final_verdade(arquivo_cifrado, chave, arquivo_saida='mensagem-final.txt'):
    # Verifica se o arquivo cifrado existe
    if not os.path.exists(arquivo_cifrado):
        print(f"\n❌ Arquivo {arquivo_cifrado} não encontrado.")
        return
    
    # Converte a chave para o formato esperado (bytes)
    chave_bytes = chave.encode('utf-8')
    
    # Lê o arquivo cifrado
    with open(arquivo_cifrado, 'rb') as f:
        iv = f.read(int(AES.block_size / 2))  # O IV é metade do tamanho do bloco AES
        ciphertext = f.read()

    # Cria o cipher com o modo CTR e a chave
    cipher = AES.new(chave_bytes, AES.MODE_CTR, nonce=iv)
    
    # Descriptografa a mensagem
    plaintext = cipher.decrypt(ciphertext)
    
    # Exibe a mensagem decifrada
    with open(arquivo_saida, 'wb') as output_file:
        output_file.write(plaintext)
    
    # Imprime a mensagem decifrada
    print(f"\n🏁 Mensagem final decifrada:\n{plaintext.decode('utf-8')}")

# Senha revelada pela dica 2
senha = 'segredosegredo12'

print(f"\n🔑 Usando senha da dica: {senha}")

# Decifra a mensagem final com a chave fornecida
decifrar_msg_final_verdade('msg-final.enc', senha)
