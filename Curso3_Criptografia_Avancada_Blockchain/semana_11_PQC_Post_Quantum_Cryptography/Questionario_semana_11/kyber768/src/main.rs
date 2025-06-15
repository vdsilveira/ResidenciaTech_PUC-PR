use oqs::kem::Kem;
use base64::{engine::general_purpose, Engine as _};
use std::fs;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let private_key_path = "../private_key.b64";
    let ciphertext_path = "../ciphertext.b64";

    let private_key_b64 = fs::read_to_string(private_key_path)?.trim().to_string();
    let ciphertext_b64 = fs::read_to_string(ciphertext_path)?.trim().to_string();

    let private_key_bytes = general_purpose::STANDARD.decode(private_key_b64)?;
    let ciphertext_bytes = general_purpose::STANDARD.decode(ciphertext_b64)?;

    let kem = Kem::new(oqs::kem::Algorithm::Kyber768)?;

    let secret_key_ref = kem.secret_key_from_bytes(&private_key_bytes)
        .ok_or("Tamanho inválido da chave privada")?;

    let ciphertext_ref = kem.ciphertext_from_bytes(&ciphertext_bytes)
        .ok_or("Tamanho inválido do ciphertext")?;

    let shared_secret = kem.decapsulate(secret_key_ref, ciphertext_ref)?;

    // Use as_ref() para pegar o slice de bytes
    println!("Segredo compartilhado em bytes:\n{:?}", shared_secret.as_ref());

    let shared_secret_b64 = general_purpose::STANDARD.encode(shared_secret.as_ref());
    println!("Segredo compartilhado (base64):\n{}", shared_secret_b64);

    Ok(())
}
