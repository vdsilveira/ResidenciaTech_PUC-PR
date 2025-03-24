import subprocess

def calcular_hmac_sha256(arquivo, chave):
    try:
        resultado = subprocess.run(
            ['openssl', 'dgst', '-hmac', chave, '-sha256', arquivo],
            check=True,
            text=True,
            capture_output=True
        )
        print("✅ Resultado do HMAC-SHA256:")
        print(resultado.stdout.strip())
    except subprocess.CalledProcessError as e:
        print("❌ Erro ao executar o comando:")
        print(e.stderr)

if __name__ == "__main__":
    arquivo = input("Digite o nome do arquivo: ").strip()
    chave = input("Digite a chave secreta (HMAC): ").strip()
    calcular_hmac_sha256(arquivo, chave)
