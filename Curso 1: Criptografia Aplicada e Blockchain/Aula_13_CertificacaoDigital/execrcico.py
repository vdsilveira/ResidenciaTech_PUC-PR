import subprocess

# Nome base dos arquivos 
nome_base = "vdsilveira"

# 1. Gerar chave privada com criptografia AES256
subprocess.run([
    "openssl", "genrsa",
    "-out", f"{nome_base}.privada.pem", "2048"
])

# 2. Gerar chave pública
subprocess.run([
    "openssl", "rsa", "-pubout",
    "-in", f"{nome_base}.privada.pem",
    "-out", f"{nome_base}.publica.pem"
])

# 3. Gerar CSR (será necessário preencher informações manualmente)
subprocess.run([
    "openssl", "req", "-new",
    "-key", f"{nome_base}.privada.pem",
    "-out", "csr.pem"
])

# 4. Gerar certificado autoassinado (válido por 365 dias)
subprocess.run([
    "openssl", "req", "-x509", "-days", "365",
    "-key", f"{nome_base}.privada.pem",
    "-in", "csr.pem",
    "-out", "certificate.crt"
])

# 5. Exibir informações do certificado
subprocess.run([
    "openssl", "x509", "-noout", "-text",
    "-in", "certificate.crt"
])
