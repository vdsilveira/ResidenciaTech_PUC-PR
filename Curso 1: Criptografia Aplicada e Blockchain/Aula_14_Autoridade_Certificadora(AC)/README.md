# 🔐 Autoridade Certificadora (AC) com Python e Cryptography

Este repositório contém o script `AC.py`, que implementa uma **Autoridade Certificadora (AC)** simplificada utilizando a biblioteca `cryptography` em Python. O script permite a criação de um certificado autoassinado para a AC, a emissão de certificados para entidades finais e a validação de certificados.

---

## 🧾 Funcionalidades

- 🔑 Geração de um certificado X.509 autoassinado para a AC
- ✍️ Emissão de certificados para entidades finais assinados pela AC
- ✅ Validação de certificados com base em datas de validade e assinatura
- 📜 Armazenamento de certificados em um dicionário interno
- 🔍 Suporte a atributos personalizados (país, estado, localidade, organização, nome comum)

---

## 🛠️ Pré-requisitos

- Python 3.6 ou superior
- Biblioteca `cryptography`

### Instalação

Instale a biblioteca `cryptography` com o seguinte comando:

```bash
pip install cryptography
```

---

## 📜 Estrutura do Script

O script `AC.py` implementa a classe `AC` com os seguintes métodos:

### `__init__()`

Inicializa a AC, criando um dicionário para armazenar certificados e variáveis para o certificado e chave privada da AC.

### `self_signed_certificate(common_name="AC-Raiz", country="BR", state="SC", locality="Fln", organization="UFSC")`

Cria um certificado X.509 autoassinado para a AC com validade de 5 anos (1826 dias).

- **Parâmetros**:
  - `common_name`: Nome comum (CN) do certificado
  - `country`: Código do país (ex.: "BR")
  - `state`: Estado (ex.: "SC")
  - `locality`: Cidade ou localidade (ex.: "Fln")
  - `organization`: Nome da organização (ex.: "UFSC")
- **Retorno**: Tupla com o certificado X.509 e a chave privada RSA

```python
ca_cert, ca_private_key = minha_AC.self_signed_certificate()
```

### `issue_end_certificate(public_key, common_name, country, state, locality, organization)`

Emite um certificado X.509 para uma entidade final, assinado pela AC, com validade de 1 ano (365 dias).

- **Parâmetros**:
  - `public_key`: Chave pública RSA do requerente
  - `common_name`, `country`, `state`, `locality`, `organization`: Atributos do sujeito
- **Retorno**: Certificado X.509 emitido

```python
cert_cliente = minha_AC.issue_end_certificate(
    public_key=chave_cliente.public_key(),
    common_name="Client",
    country="BR",
    state="SC",
    locality="Fln",
    organization="UFSC"
)
```

### `validate_certificate(cert)`

Valida um certificado verificando sua data de validade e a assinatura usando a chave pública da AC.

- **Parâmetros**:
  - `cert`: Certificado X.509 a ser validado
- **Retorno**: Chave pública do certificado se válido, ou `False` se inválido

```python
public_key = minha_AC.validate_certificate(cert_cliente)
```

---

## 📁 Arquivos Gerados

O script não gera arquivos diretamente, mas armazena certificados em memória no dicionário `self.certificados`. Para persistir certificados em disco, você pode usar métodos da biblioteca `cryptography` para salvar os certificados em formato PEM.

---

## 🧪 Como Executar

1. Certifique-se de que a biblioteca `cryptography` está instalada.
2. Execute o script:

   ```bash
   python AC.py
   ```

O script executará as seguintes ações:
- Cria um certificado autoassinado para a AC
- Gera uma chave RSA para um cliente
- Emite um certificado para o cliente
- Exibe os números de série e informações de emissor/sujeito dos certificados

---

## ✅ Exemplo de Saída

```text
123456
(<Name(C=BR,ST=SC,L=Fln,O=UFSC,CN=AC-Raiz)>, <Name(C=BR,ST=SC,L=Fln,O=UFSC,CN=AC-Raiz)>)
789012
(<Name(C=BR,ST=SC,L=Fln,O=UFSC,CN=AC-Raiz)>, <Name(C=BR,ST=SC,L=Fln,O=UFSC,CN=Client)>)
```

- **Linha 1**: Número de série do certificado da AC
- **Linha 2**: Emissor e sujeito do certificado da AC
- **Linha 3**: Número de série do certificado do cliente
- **Linha 4**: Emissor (AC) e sujeito (cliente) do certificado do cliente

---

## 📝 Notas

- O script utiliza o algoritmo **RSA** com chaves de 2048 bits e hash **SHA-256** para assinaturas.
- Os certificados gerados incluem a extensão `BasicConstraints` para indicar se são de CA (`ca=True`) ou entidade final (`ca=False`).
- Os números de série são gerados aleatoriamente com `random.randint(1, 1000000)`, o que não é ideal para produção (use `x509.random_serial_number()` em cenários reais).
- A validade dos certificados é de **5 anos para a AC** e **1 ano para entidades finais**.
- Para uso em produção, adicione verificações adicionais (ex.: revogação de certificados, CRL, OCSP) e persista os certificados em arquivos PEM.

---

## 🚀 Tecnologias Utilizadas

- **Linguagem**: Python
- **Biblioteca**: `cryptography`
- **Algoritmos**: RSA, SHA-256
- **Padrão**: X.509

---


**Residência Tecnológica PUCPR 2025**

