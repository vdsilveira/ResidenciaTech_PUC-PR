from Crypto.PublicKey import RSA
from Crypto.Signature import pkcs1_15
from Crypto.Hash import SHA256

from base64 import b64encode, b64decode

def generate_keys(key_size=2048):
    """
    Gera um par de chaves RSA com o tamanho especificado.

    :param key_size: Tamanho da chave RSA em bits (padrão 2048).
    :return: Tupla com (chave pública, chave privada)
    """
    private_key = RSA.generate(key_size)
    public_key = private_key.publickey()
    return public_key, private_key

def sign_message(message: bytes, key) -> bytes:
    """
    Assina digitalmente uma mensagem usando a chave privada fornecida.

    :param message: A mensagem a ser assinada, em bytes.
    :param key: A chave privada a ser utilizada na geração da assinatura.
    :return: Assinatura da mensagem em bytes.
    """
    message_hash = SHA256.new(message)
    signature = pkcs1_15.new(key).sign(message_hash)
    return signature

def verify_signature(message: bytes, signature: bytes, key) -> bool:
    """
    Verifica a assinatura de uma mensagem usando a chave pública fornecida.

    :param message: A mensagem a ser verificada, em bytes.
    :param signature: A assinatura a ser verificada, em bytes.
    :param key: A chave pública usada para a verificação.
    :return: True se a assinatura for válida, False caso contrário.
    """
    message_hash = SHA256.new(message)
    try:
        pkcs1_15.new(key).verify(message_hash, signature)
        return True
    except (ValueError, TypeError):
        return False

def verify_from_file():
    """
    Verifica a assinatura de uma mensagem lida de um arquivo, usando a chave pública
    também lida de um arquivo.
    """
    # Ler a chave pública do arquivo
    with open("thais.publica.pem", "rb") as f:
        chave_publica_pem = f.read()
    chave_publica = RSA.import_key(chave_publica_pem)
    print("Chave pública do arquivo:\n", chave_publica.export_key().decode())

    # Ler a mensagem original do arquivo
    with open("msg.txt", "rb") as f:
        mensagem = f.read()
    print("Mensagem do arquivo: ", mensagem.decode())

    # Ler a assinatura do arquivo
    with open("assinatura.bin", "rb") as f:
        assinatura = f.read()

    # Verificar a assinatura
    resultado = verify_signature(mensagem, assinatura, chave_publica)
    print("Resultado da verificação: ", resultado)

# Execução das atividades
print("--------------------------------------------------------")
print("ATIVIDADE 1:")
print("--------------------------------------------------------\n")
verify_from_file()

print("\n\n--------------------------------------------------------")
print("ATIVIDADE 2:")
print("--------------------------------------------------------\n")

# Gerar par de chaves
pub, priv = generate_keys(2048)
print("Chave Privada:\n", priv.export_key().decode())
print("\nChave Pública:\n", pub.export_key().decode())

# Mensagem e assinatura
msg = "Ola".encode()
signature = sign_message(msg, priv)
print("\nAssinatura (em base64):\n", b64encode(signature).decode())

# Verificação
print("\nResultado da verificação: ", verify_signature(msg, signature, pub))
