from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend
from ecdsa import SigningKey, SECP256k1
import sha3  # keccak256
from eth_keys import keys

# Lê o arquivo PEM
with open("PrivKey.pem", "rb") as key_file:
    private_key = serialization.load_pem_private_key(
        key_file.read(),
        password=None,
        backend=default_backend()
    )

# Extrai os bytes da chave privada
private_numbers = private_key.private_numbers()
private_value = private_numbers.private_value
private_key_bytes = private_value.to_bytes(32, byteorder='big')
private_key_hex = private_key_bytes.hex()

print("🔑 Chave privada (Ethereum):", private_key_hex)

# Gerar chave pública e endereço Ethereum

private_key = keys.PrivateKey(bytes.fromhex(private_key_hex))
print("📬 Endereço Ethereum:", private_key.public_key.to_checksum_address())
