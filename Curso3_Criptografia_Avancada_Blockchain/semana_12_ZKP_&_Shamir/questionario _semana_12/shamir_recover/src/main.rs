use base64::{engine::general_purpose, Engine as _};
use ed25519_dalek::{Keypair, SecretKey, PublicKey};
use hex::FromHex;
use num_bigint::{BigInt, Sign};
use num_traits::{Zero, One, Num};
use num_integer::Integer;


const FIELD_PRIME_STR: &str = "7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed"; // 2^255 - 19

fn lagrange_interpolation(x_s: &[u8], y_s: &[Vec<u8>]) -> Vec<u8> {
    assert_eq!(x_s.len(), y_s.len());
    assert_eq!(x_s.len(), 2);

    let p = BigInt::from_str_radix(FIELD_PRIME_STR, 16).unwrap();

    let x1 = BigInt::from(x_s[0]);
    let x2 = BigInt::from(x_s[1]);

    let y1 = BigInt::from_bytes_be(Sign::Plus, &y_s[0]);
    let y2 = BigInt::from_bytes_be(Sign::Plus, &y_s[1]);

    fn modinv(a: &BigInt, m: &BigInt) -> BigInt {
        let mut mn = (m.clone(), a.clone());
        let mut xy: (BigInt, BigInt) = (Zero::zero(), One::one());

        while mn.1 != Zero::zero() {
            let q = &mn.0 / &mn.1;
            mn = (mn.1.clone(), &mn.0 - &q * &mn.1);
            xy = (xy.1.clone(), &xy.0 - &q * &xy.1);
        }
        while xy.0 < Zero::zero() {
            xy.0 += m;
        }
        xy.0
    }

    let denom = (&x2 - &x1).mod_floor(&p);
    let denom_inv = modinv(&denom, &p);
    let l0 = (&x2 * &denom_inv).mod_floor(&p);

    let denom2 = (&x1 - &x2).mod_floor(&p);
    let denom2_inv = modinv(&denom2, &p);
    let l1 = (&x1 * &denom2_inv).mod_floor(&p);

    let secret = ((&y1 * &l0) + (&y2 * &l1)).mod_floor(&p);

    let mut secret_bytes = secret.to_bytes_be().1;
    if secret_bytes.len() < 32 {
        let mut padded = vec![0u8; 32 - secret_bytes.len()];
        padded.extend_from_slice(&secret_bytes);
        secret_bytes = padded;
    }

    secret_bytes
}

fn main() {
    let share2_y_hex = "0679aa25b8fc83fd391cc282edf686bdcd8c422c799326aaf12052b6d74c3249";
    let share3_y_hex = "0ac0a3eca4e806e45ce12cc64068407b774e6e75dfd8e80aa543aa5b53832b45";

    let share2_y = Vec::from_hex(share2_y_hex).expect("Erro ao converter share2");
    let share3_y = Vec::from_hex(share3_y_hex).expect("Erro ao converter share3");

    let x_s = vec![2u8, 3u8];
    let y_s = vec![share2_y, share3_y];

    let secret_seed = lagrange_interpolation(&x_s, &y_s);

    let secret = SecretKey::from_bytes(&secret_seed).expect("Erro ao criar SecretKey");
    println!("{:?}",secret);
    let public = PublicKey::from(&secret);
    println!("{:?}",public);
    let keypair = Keypair { secret, public };
    

    let pub_base64 = general_purpose::STANDARD.encode(keypair.public.as_bytes());

    println!("Chave pública Ed25519 (base64): {}", pub_base64);
}
