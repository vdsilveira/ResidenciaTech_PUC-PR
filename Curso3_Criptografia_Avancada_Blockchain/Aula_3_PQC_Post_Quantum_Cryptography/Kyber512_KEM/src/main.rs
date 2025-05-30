use oqs::kem::Kem;

fn main() {
    // 1. Inicializa o KEM Kyber512
    let kem = Kem::new(oqs::kem::Algorithm::Kyber512)
        .expect("Falha ao inicializar o KEM");

    // 2. Gera par de chaves
    let (pk, sk) = kem.keypair()
        .expect("Falha ao gerar par de chaves");

    // 3. Encapsula: ciphertext + segredo simétrico
    let (ct, ss_encaps) = kem.encapsulate(&pk)
        .expect("Falha no encapsulamento");

    // 4. Decapsula: reconstruindo o segredo a partir da chave secreta e do ciphertext
        let ss_decaps = kem.decapsulate(&sk, &ct)
        .expect("Falha na decapsulação");

    // 5. Valida que os dois segredos são iguais
    assert_eq!(ss_encaps, ss_decaps);
    println!("Sucesso! Segredo compartilhado validado.");
}
