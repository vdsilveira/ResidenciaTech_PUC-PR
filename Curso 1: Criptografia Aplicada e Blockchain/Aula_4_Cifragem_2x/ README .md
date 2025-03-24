# Cifragem Dupla com AES-256-CBC usando OpenSSL

Este script implementa a cifragem dupla de uma mensagem usando o algoritmo **AES-256-CBC** com o OpenSSL através de chamadas de linha de comando via Python.

## Objetivo

O objetivo deste script é demonstrar como a cifragem de um texto pode gerar resultados diferentes quando realizada duas vezes consecutivas com a mesma chave. A primeira cifragem gera uma saída cifrada, e a segunda cifragem é realizada sobre essa saída, resultando em um texto cifrado completamente diferente.

## Dependências

- Python 3.x
- OpenSSL instalado no sistema
- A biblioteca `subprocess` do Python (usada para interagir com o OpenSSL via linha de comando)

## Como Funciona

O script realiza os seguintes passos:

1. **Primeira Cifragem**: 
   - O texto original é cifrado utilizando o algoritmo `AES-256-CBC` com a chave fornecida, usando o OpenSSL. A saída é um texto cifrado em base64.

2. **Segunda Cifragem**:
   - O texto cifrado da primeira cifragem é passado como entrada para uma nova cifragem, também utilizando o algoritmo `AES-256-CBC` e a mesma chave. A saída será uma nova string cifrada, completamente diferente da primeira.

3. **Comparação**:
   - O script compara a saída das duas cifragens e imprime se os resultados são iguais ou diferentes.

## Estrutura do Código

O código Python utiliza a biblioteca `subprocess` para executar comandos do OpenSSL diretamente no terminal. O script:

1. Lê o conteúdo de um arquivo (`Msg.txt`).
2. Realiza a cifragem dupla da mensagem com a chave fornecida.
3. Exibe o resultado da primeira e segunda cifragem.
4. Compara os resultados e informa se eles são iguais ou diferentes.

## Como Usar

1. **Preparar o ambiente**:
   - Certifique-se de que o OpenSSL esteja instalado no seu sistema.
   - Verifique se o Python 3.x está instalado.

2. **Arquivo de Texto**:
   - Coloque o texto que você deseja cifrar dentro do arquivo `Msg.txt` no mesmo diretório do script.

3. **Alterar a Chave**:
   - A chave de cifragem pode ser alterada diretamente no código, na variável `chave`.

4. **Executar o Script**:
   - Execute o script com o seguinte comando:
     ```bash
     python3 cifragem_2x.py
     ```

5. **Resultado**:
   - O script irá imprimir a saída da primeira e da segunda cifragem, além de informar se os resultados são iguais ou diferentes.

## Exemplo de Saída

Ao executar o script, você verá algo como:
```bash
     ✅ Primeira cifragem realizada com sucesso!

 Texto cifrado:
 U2FsdGVkX19ei46y/JXf/7ogIvHOQEBDGLaFCaQUVUCpNW6c7TQDlluW5zsWkrmD
/kPMP+E42Ykr5TF4dhSsOQ==


 ✅ Segunda cifragem realizada com sucesso!

 Texto cifrado novamente:
 U2FsdGVkX1/Nvg/k4HHXqIqxgd1H/P8+G0+lLedCYot42FGwFAk/lWewCdmeXpPm
FCXFKBudopxGqXnc6bXCO+AJKAYAdPmUXjij/dxaRGfz5ZOL6U6v24gclRp0husL
vuhVhzYBgkEqnLCHz6JuXg==


 Comparando resultados! ...

 Os resultados das duas cifragens são diferentes.

 texto em claro: Um é pouco, dois é bom e três é demais
 

 Chave : test123 
```

## Conclusão

Este script mostra como a cifragem AES-256-CBC, que utiliza salt e IV, pode gerar resultados diferentes ao cifrar duas vezes consecutivas o mesmo texto com a mesma chave. Isso é útil para ilustrar a importância da segurança criptográfica e como técnicas como "cifragem de múltiplas camadas" podem aumentar a proteção dos dados.

## Contribuições

Se você deseja contribuir para este projeto, sinta-se à vontade para enviar um pull request. Quaisquer melhorias ou sugestões são bem-vindas!

## Licença

Este projeto é de código aberto e licenciado sob a [MIT License](LICENSE).

