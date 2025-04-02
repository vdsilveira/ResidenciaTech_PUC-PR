import subprocess

print("Gerando os parâmetros públicos do DH ⚙️:")

# Gerar os parâmetros do Diffie-Hellman
subprocess.run(['openssl', 'dhparam', '-out', 'dhparams.pem', '2048'], check=True)

print("Visualizando os parâmetros gerados:")
subprocess.run(['openssl', 'pkeyparam', '-in', 'dhparams.pem', '-text', '-noout'], check=True)

# Gerar chaves de Alice
print("Gerando os valores públicos e privados da Alice:")
subprocess.run(['openssl', 'genpkey', '-paramfile', 'dhparams.pem', '-out', 'alice_keys.pem'], check=True)

print("Visualizando os valores da Alice:")
subprocess.run(['openssl', 'pkey', '-in', 'alice_keys.pem', '-text', '-noout'], check=True)

# Gerar chaves de Bob
print("Gerando os valores públicos e privados do Bob:")
subprocess.run(['openssl', 'genpkey', '-paramfile', 'dhparams.pem', '-out', 'bob_keys.pem'], check=True)

# Extrair e visualizar chave pública de Alice
print("Extraindo a chave pública da Alice:")
subprocess.run(['openssl', 'pkey', '-in', 'alice_keys.pem', '-pubout', '-out', 'alice_pub.pem'], check=True)

print("Visualizando a chave pública da Alice:")
subprocess.run(['openssl', 'pkey', '-pubin', '-in', 'alice_pub.pem', '-text'], check=True)

# Extrair e visualizar chave pública de Bob
print("Extraindo a chave pública do Bob:")
subprocess.run(['openssl', 'pkey', '-in', 'bob_keys.pem', '-pubout', '-out', 'bob_pub.pem'], check=True)

print("Visualizando a chave pública do Bob:")
subprocess.run(['openssl', 'pkey', '-pubin', '-in', 'bob_pub.pem', '-text'], check=True)


# Comparar as chaves secretas para garantir que são iguais
print("Verificando se as chaves secretas de Alice e Bob são idênticas:")
cmp_result = subprocess.run(['cmp', 'alice_secret.bin', 'bob_secret.bin'], capture_output=True)

if cmp_result.returncode == 0:
    print("\n\n ✅ As chaves secretas são idênticas! A troca de chaves DH foi bem-sucedida.")
else:
    print("❌ ERRO: As chaves secretas não correspondem!")

print("\n\n Processo concluído! 🎉 \n\n\n")
