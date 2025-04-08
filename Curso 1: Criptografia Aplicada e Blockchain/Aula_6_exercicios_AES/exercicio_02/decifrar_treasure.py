from base64 import b64encode
from Crypto.Util.Padding import pad, unpad
from Crypto.Cipher import AES
import os

def encrypt(key, filename, mode):
    """
    :param key: chave aes
    :param filename: nome do arquivo a ser cifrado
    :param mode: modo de operação desejado
    """
    # Passo 1: abrir o arquivo no modo leitura
    with open(filename, 'rb') as f:
        plaintext = f.read()
    
    # Passo 2: inicializar o AES com chave 'key' e modo de operação 'mode'
    cipher = AES.new(key, mode)

    # Passo 3: cifrar de acordo com o modo de operação escolhido.
    # Para o caso de CBC, é preciso fazer o padding explicitamente
    # Caso contrário, só é preciso cifrar
    if mode == AES.MODE_CBC:
        ciphertext = cipher.encrypt(pad(plaintext, AES.block_size))
    else:
        ciphertext = cipher.encrypt(plaintext)

    # Passo 4: salvar em outro arquivo o iv ou counter concatenado ao texto cifrado
    if mode == AES.MODE_CTR:
        iv = cipher.nonce
    else:
        iv = cipher.iv

    # Cria um novo arquivo .enc com o iv ou counter concatenado ao texto cifrado
    with open(filename + '.enc', 'wb') as f:
        f.write(iv + ciphertext)

    # Passo 5: mostrar na tela o resultado
    print('iv: ', b64encode(iv).decode('utf-8'), ' ciphertext: ', b64encode(ciphertext).decode('utf-8'))

def decrypt(key, filename, mode):
    """
    :param key: chave aes
    :param filename: nome do arquivo a ser cifrado
    :param mode: modo de operação desejado
    """
    # Passo 1: abrir o arquivo no modo leitura, recupera o IV e texto cifrado
    with open(filename, 'rb') as f:
        iv = f.read(AES.block_size)  # Lê o IV (16 bytes)
        ciphertext = f.read()  # Lê o texto cifrado

    # Passo 2: inicializar a cifra com o IV de acordo com o modo de operação
    if mode == AES.MODE_CTR:
        cipher = AES.new(key, mode, nonce=iv)
    else:
        cipher = AES.new(key, mode, iv=iv)

    # Passo 3: Decifrar e retornar o texto decifrado
    plaintext = cipher.decrypt(ciphertext)

    if mode == AES.MODE_CBC:
        plaintext = unpad(plaintext, AES.block_size)

    return plaintext

# Exemplo de uso
key = b'averysecretkeyyyaverysecretkeyyy'  # 32 bytes para AES-256
mode = AES.MODE_CFB  # CFB, OFB, CBC, CTR

# Encrypt example (uncomment to encrypt)
# encrypt(key, 'mensagem.txt', mode)

# Decrypt example
message = decrypt(key, 'treasure.txt.enc', mode)
print('Decifrando treasure.txt.enc: ', message.decode('utf-8'))
