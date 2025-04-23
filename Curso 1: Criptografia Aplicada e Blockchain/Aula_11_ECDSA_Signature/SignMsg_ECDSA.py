import subprocess
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend

# Listar curvas disponíveis no OpenSSL
print("📜 Curvas disponíveis:")
subprocess.run(
    ['openssl', 'ecparam', '-list_curves'],
    check=True
)

# Gerar chave privada com secp256k1
print("\n🔑 Gerando chave privada e pública...")
subprocess.run(
    ['openssl', 'ecparam', '-genkey', '-name', 'secp256k1', '-out', 'PrivKey.pem'],
    check=True
)

# Gerar chave pública correspondente
subprocess.run(
    ['openssl', 'ec', '-in', 'PrivKey.pem', '-pubout', '-out', 'PubKey.pem'],
    check=True
)

# Visualizar chave privada em texto
print("\n🔐 Visualizando chave privada:")
subprocess.run(
    ['openssl', 'ec', '-in', 'PrivKey.pem', '-text', '-noout'],
    check=True
)

# Arquivo de mensagem já existente
arquivo_mensagem = 'Msg.txt'

# Assinar a mensagem diretamente
print("\n✍️ Assinando a mensagem...")
subprocess.run(
    ['openssl', 'dgst', '-sha256', '-sign', 'PrivKey.pem', '-out', 'signature.bin', arquivo_mensagem],
    check=True
)

# Verificar a assinatura
print("\n✅ Verificando a assinatura...")
subprocess.run(
    ['openssl', 'dgst', '-sha256', '-verify', 'PubKey.pem', '-signature', 'signature.bin', arquivo_mensagem],
    check=True
)
