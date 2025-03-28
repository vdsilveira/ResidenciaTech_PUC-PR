def cifra_cesar(texto, deslocamento):
    resultado = ''
    for char in texto:
        if char.isalpha():
            shift = 65 if char.isupper() else 97
            resultado += chr((ord(char) - shift - deslocamento) % 26 + shift)
        else:
            resultado += char
    return resultado

texto_cifrado = "dyhubvhfuhwnhbbbdyhubvhfuhwnhbbb"
for i in range(26):  # Testando todos os 26 deslocamentos possíveis
    print(f"Deslocamento {i}: {cifra_cesar(texto_cifrado, i)}")


#result: averysecretkeyyyaverysecretkeyyy
