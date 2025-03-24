import subprocess
import os


texto = 'Msg.tx'  
with open(texto, 'r', encoding='utf-8') as file:
    texto = file.read()
chave = 'test123'

def cifragem_AES_2x(texto, chave):
    try:
        # Primeira cifragem
        resultado1 = subprocess.run(
            ['openssl', 'enc', '-aes-256-cbc', '-base64', '-pbkdf2', '-pass', f'pass:{chave}', '-in', '/dev/stdin'],
            input=texto, check=True, text=True, capture_output=True
        )
        texto_cifrado_1 = resultado1.stdout.strip()
        print("\n\n ✅ Primeira cifragem realizada com sucesso!")
        print(f"\n Texto cifrado:\n {texto_cifrado_1}")

        # Segunda cifragem com o texto cifrado da primeira
        resultado2 = subprocess.run(
            ['openssl', 'enc', '-aes-256-cbc', '-base64', '-pbkdf2', '-pass', f'pass:{chave}', '-in', '/dev/stdin'],
            input=texto_cifrado_1, check=True, text=True, capture_output=True
        )
        texto_cifrado_2 = resultado2.stdout.strip()
        print("\n\n ✅ Segunda cifragem realizada com sucesso!")
        print(f"\n Texto cifrado novamente:\n {texto_cifrado_2}")

        print('\n\n Comparando resultados! ...')

        # Comparando os resultados
        if texto_cifrado_1 == texto_cifrado_2:
            print("\n Os resultados das duas cifragens são iguais.")
        else:
            print("\n Os resultados das duas cifragens são diferentes.")
        print(f'\n texto em claro: {texto} ')
        print(f'\n Chave : {chave} ')

    except subprocess.CalledProcessError as e:
        print("❌ Erro ao executar o comando:")
        print(e.stderr)

cifragem_AES_2x(texto, chave)
