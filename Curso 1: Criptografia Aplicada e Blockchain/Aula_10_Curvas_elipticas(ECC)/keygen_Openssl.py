import subprocess
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend


# listar curvas disponiveis no openssl:

resultado1 =subprocess.run(
            ['openssl', 'ecparam', '--list_curves'],
             check=True,
        )
 

# criar chaves com secp256k1
keygen = subprocess.run(
    ['openssl', 'ecparam', '-genkey', '-name', 'secp256k1', '-out', 'PrivKey.pem'],
    check=True
)
pubkey = subprocess.run(
    ['openssl', 'ec', '-in', 'PrivKey.pem', '-pubout', '-out', 'PubKey.pem'],
    check=True
)


# Visualizar chaves(em formato texto)
print("🔐 Chave Privada e publica:")
subprocess.run(
    ['openssl', 'ec', '-in', 'PrivKey.pem', '-text', '-noout'],
    check=True
)

