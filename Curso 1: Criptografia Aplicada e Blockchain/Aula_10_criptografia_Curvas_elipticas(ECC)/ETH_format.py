from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend
from ecdsa import SigningKey, SECP256k1
import sha3  # keccak256

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
sk = SigningKey.from_string(private_key_bytes, curve=SECP256k1)
vk = sk.verifying_key
public_key_bytes = b'\x04' + vk.to_string()

keccak = sha3.keccak_256()
keccak.update(public_key_bytes)
address = keccak.digest()[-20:]

eth_address = "0x" + address.hex()
print("📬 Endereço Ethereum:", eth_address)
