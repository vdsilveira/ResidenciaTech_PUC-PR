use oqs::sig::{Sig, Algorithm};
use base64::{engine::general_purpose, Engine as _};

fn main() -> Result<(), oqs::Error> {
    let alg = Algorithm::MlDsa65;
    println!("Usando o algoritmo: {:?}", alg);

    let signer = Sig::new(alg)?;
    let (pk, sk) = signer.keypair()?;

    println!("Chave pública (base64):\n{}", general_purpose::STANDARD.encode(&pk));
    
    let message = b"Aula PQC 30/05/2025";
    let sig = signer.sign(message, &sk)?;

    println!("\nAssinatura (base64):\n{}", general_purpose::STANDARD.encode(&sig));

    signer.verify(message, &sig, &pk)?;
    println!("\nVerificação: assinatura válida!");

    Ok(())
}
