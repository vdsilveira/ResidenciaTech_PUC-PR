from Cryptodome.Cipher import AES

filename = 'msg-final.enc'
key = b'DIGITE AQUI ACHAVE' #inclua aqui a chave descoberta no passo 4!
mode = AES.MODE_CTR

with open(filename, 'rb') as f:
    iv = f.read(int(AES.block_size / 2))
    ciphertext = f.read()
cipher = AES.new(key, mode, nonce=iv)
plaintext = cipher.decrypt(ciphertext)
print(plaintext)