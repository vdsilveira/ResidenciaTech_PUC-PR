import subprocess

# Caminhos dos arquivos
arquivo_entrada = "Msg.txt"
arquivo_cifrado = "secretMsg.bin"
arquivo_decifrado = "msgDecifrada.txt"
chave_privada = "key.privada.pem"
chave_publica = "key.publica.pem"

# === 1. Gerar chave privada cifrada com AES-256 ===
print("\n[+] Gerando chave privada RSA cifrada com AES-256...")
subprocess.run([
    "openssl", "genrsa",
    "-aes256",
    "-out", chave_privada,
    "2048"
], check=True)
print("[+] Chave privada gerada:", chave_privada)

# === 2. Gerar chave pública a partir da chave privada ===
print("\n[+] Extraindo chave pública da chave privada...")
subprocess.run([
    "openssl", "rsa",
    "-in", chave_privada,
    "-pubout",
    "-out", chave_publica
], check=True)
print("[+] Chave pública gerada:", chave_publica)

# === 3. Criar arquivo de mensagem ===
mensagem = "Faze-me conhecer os teus caminhos, Senhor; ensina-me as tuas veredas"
with open(arquivo_entrada, 'w') as file:
    file.write(mensagem)
print("\n[+] Mensagem salva em:", arquivo_entrada)
print("Conteúdo original:", mensagem)

# === 4. Cifrar com chave pública ===
print("\n[+] Cifrando com a chave pública...")
subprocess.run([
    "openssl", "pkeyutl",
    "-encrypt",
    "-inkey", chave_publica,
    "-pubin",
    "-in", arquivo_entrada,
    "-out", arquivo_cifrado
], check=True)
print("[+] Arquivo cifrado salvo como:", arquivo_cifrado)

# === 5. Decifrar com chave privada ===
print("\n[+] Decifrando com a chave privada...")
subprocess.run([
    "openssl", "pkeyutl",
    "-decrypt",
    "-inkey", chave_privada,
    "-in", arquivo_cifrado,
    "-out", arquivo_decifrado
], check=True)
print("[+] Arquivo decifrado salvo como:", arquivo_decifrado)

# === 6. Mostrar mensagem decifrada ===
with open(arquivo_decifrado, 'r') as file:
    mensagem_decifrada = file.read()
    print("\nConteúdo decifrado:", mensagem_decifrada)
