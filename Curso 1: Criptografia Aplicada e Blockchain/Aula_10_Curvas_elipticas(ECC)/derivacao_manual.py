from ecdsa import SigningKey, SECP256k1
import sha3

# Chave privada fixa (32 bytes)
private_key_hex = "734448a91303a898e6acc9f72b5c80733ef11688b2216c0c91d839976f5059f2"
private_key_bytes = bytes.fromhex(private_key_hex)

# Gerar chave pública
sk = SigningKey.from_string(private_key_bytes, curve=SECP256k1)
vk = sk.verifying_key

# Chave pública COM prefixo 0x04 (formato esperado pelo Ethereum)
public_key_uncompressed = b'\x04' + vk.to_string()

keccak1 = sha3.keccak_256()
keccak1.update(public_key_uncompressed)
address_correct = "0x" + keccak1.digest()[-20:].hex()

# Chave pública SEM o prefixo 0x04 (errado para Ethereum)
public_key_without_prefix = vk.to_string()

keccak2 = sha3.keccak_256()
keccak2.update(public_key_without_prefix)
address_incorrect = "0x" + keccak2.digest()[-20:].hex()

# Resultados
print("🔑 Chave privada:")
print(private_key_hex)

print("\n❌ Com prefixo 0x04 (errado):")
print("Chave pública:", public_key_uncompressed.hex())
print("Endereço ETH:", address_correct)

print("\n✅  Sem prefixo (correto ):")
print("Chave pública:", public_key_without_prefix.hex())
print("Endereço ETH:", address_incorrect)


