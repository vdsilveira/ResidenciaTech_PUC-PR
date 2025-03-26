import subprocess
import os


texto = 'Msg.txt'  
with open(texto, 'r', encoding='utf-8') as file:
    texto = file.read()
chave = 'test123'

def Multi_crifragem(texto, chave):
    try:
        # cifragem ECB
        Cifragem_ECB = subprocess.run(
            ['openssl', 'enc', '-aes-256-ecb', '-base64', '-pbkdf2', '-pass', f'pass:{chave}', '-in', '/dev/stdin'],
            input=texto, check=True, text=True, capture_output=True
        )
        texto_cifrado_1 = Cifragem_ECB.stdout.strip()
        print("\n\n ✅ Modulo ECB - Cifragem realizada com sucesso!")
        print(f"\n Texto cifrado:  ➡️ {texto_cifrado_1}")

         # cifragem CBC
        Cifragem_CBC = subprocess.run(
            ['openssl', 'enc', '-aes-256-cbc', '-base64', '-pbkdf2', '-pass', f'pass:{chave}', '-in', '/dev/stdin'],
            input=texto, check=True, text=True, capture_output=True
        )
        texto_cifrado_2 = Cifragem_CBC.stdout.strip()
        print("\n\n ✅ Modulo CBC - Cifragem realizada com sucesso!")
        print(f"\n Texto cifrado:  ➡️ {texto_cifrado_2}")

          # cifragem CFB
        Cifragem_CFB = subprocess.run(
            ['openssl', 'enc', '-aes-256-cfb', '-base64', '-pbkdf2', '-pass', f'pass:{chave}', '-in', '/dev/stdin'],
            input=texto, check=True, text=True, capture_output=True
        )
        texto_cifrado_3 = Cifragem_CFB.stdout.strip()
        print("\n\n ✅ Modulo CBC - Cifragem realizada com sucesso!")
        print(f"\n Texto cifrado:  ➡️ {texto_cifrado_3}")

          # cifragem OFB
        Cifragem_OFB = subprocess.run(
            ['openssl', 'enc', '-aes-256-ofb', '-base64', '-pbkdf2', '-pass', f'pass:{chave}', '-in', '/dev/stdin'],
            input=texto, check=True, text=True, capture_output=True
        )
        texto_cifrado_4 = Cifragem_OFB.stdout.strip()
        print("\n\n ✅ Modulo OFB - Cifragem realizada com sucesso!")
        print(f"\n Texto cifrado:  ➡️ {texto_cifrado_4}")

          # cifragem CTR
        Cifragem_CTR = subprocess.run(
            ['openssl', 'enc', '-aes-256-ctr', '-base64', '-pbkdf2', '-pass', f'pass:{chave}', '-in', '/dev/stdin'],
            input=texto, check=True, text=True, capture_output=True
        )
        texto_cifrado_5 = Cifragem_CTR.stdout.strip()
        print("\n\n ✅ Modulo CTR - Cifragem realizada com sucesso!")
        print(f"\n Texto cifrado:  ➡️ {texto_cifrado_5}\n\n")

        print(f"📜 texto em claro: {texto}")
        print(f"🔐 Chave: {chave}\n\n")

        
    except subprocess.CalledProcessError as e:
        print("❌ Erro ao executar o comando:")
        print(e.stderr)

Multi_crifragem(texto, chave)
