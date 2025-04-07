import subprocess
import getpass

# Nome base dos arquivos
nome = "viniciusd" 
priv_key = f"{nome}.privada.pem"
pub_key = f"{nome}.publica.pem"

# Solicita senha para cifrar a chave privada
senha = getpass.getpass("Digite uma senha forte para proteger sua chave privada: ")

# 1. Gerar a chave privada RSA (cifrada com AES-256)
subprocess.run(
    ["openssl", "genrsa", "-aes256", "-passout", f"pass:{senha}", "-out", priv_key, "2048"],
    check=True
)

# 2. Visualizar a chave privada
print("\n🔐 Chave Privada (formato texto):\n")
subprocess.run(
    ["openssl", "pkey", "-in", priv_key, "-passin", f"pass:{senha}", "-text"],
    check=True
)

# 3. Derivar a chave pública
subprocess.run(
    ["openssl", "rsa", "-pubout", "-in", priv_key, "-passin", f"pass:{senha}", "-out", pub_key],
    check=True
)

# 4. Visualizar a chave pública
print("\n🔓 Chave Pública (formato texto):\n")
subprocess.run(
    ["openssl", "pkey", "-pubin", "-in", pub_key, "-text"],
    check=True
)
