import subprocess
import re

def conectar_tls(host: str, porta: int = 443):
    comando = ["openssl", "s_client", "-connect", f"{host}:{porta}", "-servername", host]
    
    print(f"Conectando a {host}:{porta} com OpenSSL...\n")
    resultado = subprocess.run(comando, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

    if resultado.returncode != 0:
        print("Erro ao conectar:")
        print(resultado.stderr)
        return

    saida = resultado.stdout

    # Versão TLS
    versao_tls = re.search(r"Protocol +: (TLS[^\n\r]*)", saida)
    versao_tls = versao_tls.group(1) if versao_tls else "Não identificado"

    # Cifras
    cifra = re.search(r"Cipher +: ([^\n\r]*)", saida)
    cifra = cifra.group(1) if cifra else "Não identificado"

    # Cadeia de certificação
    certs = re.findall(r"^subject=.*", saida, re.MULTILINE)

    print("=== Resultados ===")
    print(f"Versão TLS: {versao_tls}")
    print(f"Cifra usada: {cifra}")
    print("\nCadeia de certificação:")
    for i, cert in enumerate(certs):
        print(f"  Certificado {i+1}: {cert}")

if __name__ == "__main__":
    conectar_tls("bitcoin.org")
