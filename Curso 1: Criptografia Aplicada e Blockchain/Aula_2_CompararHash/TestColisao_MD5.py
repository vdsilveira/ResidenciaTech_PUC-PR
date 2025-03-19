import subprocess
import os

def gerar_hash_openssl(caminho_imagem, algoritmo='md5'):
    try:
        resultado = subprocess.run(
            ['openssl', 'dgst', f'-{algoritmo}', caminho_imagem],
            capture_output=True, text=True, check=True
        )
        hash_str = resultado.stdout.strip().split('=')[1].strip()
        return hash_str
    except subprocess.CalledProcessError as e:
        print(f"Erro ao gerar hash: {e}")
        return None

def comparar_imagens(img1, img2, algoritmo='md5'):
    hash1 = gerar_hash_openssl(img1, algoritmo)
    hash2 = gerar_hash_openssl(img2, algoritmo)

    if hash1 is None or hash2 is None:
        print("Erro ao calcular hashes.")
        return

    print(f"Hash da imagem 1 ({os.path.basename(img1)}): {hash1}")
    print(f"Hash da imagem 2 ({os.path.basename(img2)}): {hash2}")

    if hash1 == hash2:
        print("✅ Colisão detectada: os hashes são iguais.")
    else:
        print("❌ Nenhuma colisão: os hashes são diferentes.")

if __name__ == "__main__":
    img_dir = "img"
    imagem1 = os.path.join(img_dir, "plane.jpg")
    imagem2 = os.path.join(img_dir, "ship.jpg")
    
    comparar_imagens(imagem1, imagem2)
