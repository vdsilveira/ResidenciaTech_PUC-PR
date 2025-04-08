import json
from base64 import b64encode, b64decode
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad
from Crypto.Random import get_random_bytes

def encrypt(key, filename, mode):
    """
    Cifra o conteúdo de um arquivo usando AES em diferentes modos de operação.
    
    :param key: chave AES
    :param filename: nome do arquivo a ser cifrado
    :param mode: modo de operação (AES.MODE_CBC, por exemplo)
    :return: nada. Salva o texto cifrado, IV, chave e modo em um arquivo.
    """
   
    with open(filename, 'rb') as file:
        plaintext = file.read()

    # Gerar um IV (Vetor de Inicialização) aleatório para os modos que precisam de IV
    iv = get_random_bytes(AES.block_size) if mode != AES.MODE_ECB else None
    
    # Inicializar o cifrador AES com a chave e o IV (se necessário)
    cipher = AES.new(key.encode('utf-8'), mode, iv=iv) if iv else AES.new(key.encode('utf-8'), mode)
    
    # Aplicar padding no texto para múltiplos de 16 bytes
    ciphertext = cipher.encrypt(pad(plaintext, AES.block_size))
    
    # Codificar o IV e o ciphertext em Base64 para fácil armazenamento
    iv_b64 = b64encode(iv).decode('utf-8') if iv else None
    ciphertext_b64 = b64encode(ciphertext).decode('utf-8')

    # Criar um dicionário com as informações para armazenar
    encryption_data = {
        'iv': iv_b64,
        'ciphertext': ciphertext_b64,
        'key': key,  # A chave também pode ser armazenada, se necessário
        'mode': mode
    }

    # Salvar as informações de criptografia em um arquivo JSON
    with open('encryption_info.json', 'w') as outfile:
        json.dump(encryption_data, outfile, indent=4)

    # Exibir o texto cifrado em base64
    print(f"Texto cifrado (JSON): {json.dumps(encryption_data, indent=4)}")

def decrypt(key, encryption_data, mode):
    """
    Decifra o conteúdo de um arquivo cifrado usando AES em diferentes modos de operação.
    
    :param key: chave AES
    :param encryption_data: dicionário com os dados de cifragem (IV, ciphertext, chave e modo)
    :param mode: modo de operação (AES.MODE_CBC, por exemplo)
    :return: o texto decifrado
    """
    iv = b64decode(encryption_data['iv']) if encryption_data['iv'] else None
    ciphertext = b64decode(encryption_data['ciphertext'])

    # Inicializar o cifrador AES com a chave e o IV (se necessário)
    cipher = AES.new(key.encode('utf-8'), mode, iv=iv) if iv else AES.new(key.encode('utf-8'), mode)
    
    # Decifrar o texto e remover o padding
    plaintext = unpad(cipher.decrypt(ciphertext), AES.block_size)
    
    # Retornar o texto decifrado
    return plaintext.decode('utf-8')

# Exemplo de uso
key = 'test123456789012'  
filename = 'Msg.txt' 
mode = AES.MODE_CBC  

# Cifrar a mensagem
encrypt(key, filename, mode)

# Ler o arquivo de dados cifrados (JSON)
with open('encryption_info.json', 'r') as file:
    encryption_data = json.load(file)

# Decifrar a mensagem com os dados do arquivo
deciphered_text = decrypt(key, encryption_data, mode)
print(f"Texto decifrado: {deciphered_text}")
