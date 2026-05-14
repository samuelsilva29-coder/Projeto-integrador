# A palavra "class" é usada para criar uma classe.

# Uma classe funciona como um molde para criar objetos
class Carro:

    # "def" definir uma função ou método.
    # "__init__" é o método construtor da classe.
    # Ele é executado automaticamente quando um objeto é criado.

    # "self" representa o próprio objeto.
    # é através do self que acessamos atributos e métodos do objeto.

    # "marca", "modelo", "ano" e "velocidade"
    # São Parâmetros recebidos pela classe.

    def __init__(self, marca, modelo, ano, 
    velocidade=0):
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
        self.velocidade = velocidade
    
    # "carro1" é uma variável que recebe um objeto
    carro1 = Carro("Chevrolet", "S10", 2013)

    # Exibir informações do carro
    print(f"Marca: {self.marca}")
