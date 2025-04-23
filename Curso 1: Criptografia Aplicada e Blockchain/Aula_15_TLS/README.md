# 🔒 Análise de Conexão TLS com OpenSSL

Este repositório contém o script `conexao_TLS.py`, que realiza uma conexão TLS a um servidor remoto utilizando a ferramenta OpenSSL e extrai informações sobre a versão do protocolo TLS, a cifra utilizada e a cadeia de certificação. O script é implementado em Python e usa expressões regulares para processar a saída do comando OpenSSL.

---

## 🧾 Funcionalidades

- 🔗 Estabelece uma conexão TLS com um servidor especificado
- 📜 Extrai a versão do protocolo TLS (ex.: TLSv1.2, TLSv1.3)
- 🔐 Identifica a cifra negociada durante a conexão
- 📜 Lista a cadeia de certificação do servidor (informações do campo `subject`)
- 🚨 Exibe mensagens de erro caso a conexão falhe

---

## 🛠️ Pré-requisitos

- Python 3.6 ou superior
- OpenSSL instalado e acessível via linha de comando

### Instalação

1. Verifique se o OpenSSL está instalado:
   ```bash
   openssl version
   ```
   Caso não esteja instalado, instale-o conforme o sistema operacional:
   - **Ubuntu/Debian**: `sudo apt-get install openssl`
   - **macOS**: `brew install openssl`
   - **Windows**: Baixe e instale a partir do [site oficial do OpenSSL](https://www.openssl.org/).

2. Não é necessário instalar bibliotecas Python adicionais, pois o script utiliza os módulos padrão `subprocess` e `re`.

---

## 📜 Estrutura do Script

O script `conexao_TLS.py` contém uma função principal:

### `conectar_tls(host: str, porta: int = 443)`

Estabelece uma conexão TLS com o servidor especificado e extrai informações da conexão.

- **Parâmetros**:
  - `host`: Endereço do servidor (ex.: "bitcoin.org")
  - `porta`: Porta do serviço (padrão: 443)
- **Saída**:
  - Versão do protocolo TLS
  - Cifra negociada
  - Cadeia de certificação (campos `subject` dos certificados)
  - Mensagens de erro, se houver

**Exemplo de uso**:
```python
conectar_tls("bitcoin.org")
```

O script usa o comando `openssl s_client` para iniciar a conexão e expressões regulares para extrair:
- Versão TLS: `Protocol : (TLS[^\n\r]*)`
- Cifra: `Cipher : ([^\n\r]*)`
- Cadeia de certificação: `^subject=.*` (em modo multiline)

---

## 📁 Arquivos Necessários

- `conexao_TLS.py`: O script principal
- Nenhum arquivo adicional é gerado ou necessário

---

## 🧪 Como Executar

1. Certifique-se de que o OpenSSL está instalado e configurado.
2. Execute o script, especificando o host desejado:

   ```bash
   python conexao_TLS.py
   ```

Por padrão, o script se conecta a `bitcoin.org` na porta 443. Para conectar a outro host, modifique a chamada no bloco `if __name__ == "__main__":` ou passe o host como argumento:

```python
conectar_tls("exemplo.com", 443)
```

---

## ✅ Exemplo de Saída

```text
Conectando a bitcoin.org:443 com OpenSSL...

=== Resultados ===
Versão TLS: TLSv1.3
Cifra usada: TLS_AES_256_GCM_SHA384

Cadeia de certificação:
  Certificado 1: subject=CN=bitcoin.org
  Certificado 2: subject=CN=Cloudflare Inc ECC CA-3, O=Cloudflare, Inc., C=US
  Certificado 3: subject=CN=Baltimore CyberTrust Root, O=Baltimore, C=IE
```

**Interpretação**:
- **Versão TLS**: Indica o protocolo negociado (ex.: TLSv1.3).
- **Cifra usada**: Mostra a suíte de cifras utilizada (ex.: TLS_AES_256_GCM_SHA384).
- **Cadeia de certificação**: Lista os certificados da cadeia, começando pelo certificado do servidor até a CA raiz.

---

## 📝 Notas

- O script depende da ferramenta `openssl` estar disponível no PATH do sistema.
- A porta padrão é 443 (HTTPS), mas pode ser alterada para outros serviços TLS (ex.: 465 para SMTPS).
- A saída do OpenSSL pode variar dependendo do servidor, e o script usa expressões regulares simples para capturar informações. Para servidores com respostas não padrão, pode ser necessário ajustar os padrões regex.
- Erros de conexão (ex.: host inválido, porta bloqueada) são capturados e exibidos na saída de erro.
- Para uso em produção, considere adicionar validação adicional da cadeia de certificação ou análise de outras propriedades do certificado (ex.: datas de validade, revogação).

---

## 🚀 Tecnologias Utilizadas

- **Linguagem**: Python
- **Ferramentas**: OpenSSL
- **Módulos Python**: `subprocess`, `re`
- **Protocolo**: TLS

---

## 👨‍💻 Autor

**Vdsilveira**\
Desenvolvedor e entusiasta de criptografia e segurança.\
**Residência Tecnológica PUCPR 2025**

---
