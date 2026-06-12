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

    #método construtor
    def __init__(self, marca, modelo, ano, 
    velocidade=0):
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
        self.velocidade = velocidade

    # "aumento" será o valor para aumentar a velocidade.
    def acelerar(self, aumento):
        # self.velocidade = self.velocidade + aumento
        self.velocidade = self.velocidade + aumento
        self.velocidade += aumento

        print(f"O carro acelerou para {self.velocidade} km/h")

    # Metodo frear 
    def frear(self, reducao):
        # self.velocidade = self.velocidade - reducao
        self.velocidade -= reducao
        if reducao >= self.velocidade:
            self.velocidade = 0
        else:
           self.velocidade -= reducao

        print(f"O carro reduziu para {self.velocidade} km/h")
    
    # Método para exibir informações 
    def exibir_info(self):
        print("=== INFORMAÇÕES DO CARRO ===")

        # exibe os atributos do objeto
        print(f"Marca: {self.marca}")
        print(f"Modelo: {self.modelo}")
        print(f"ano: {self.ano}")
        print(f"velocidade atual: {self.velocidade}")
    
# "carro1" é uma variável que recebe um objeto
carro1 = Carro("Chevrolet", "S10", 2013)


# chamando os metodos
# O valor 50 será enviado para o parâmetro "aumento"
carro1.acelerar(50)

# O valor 20 será enviado para o parâmetro "redução"
carro1.frear(20)

# exibindo as informações do carro
carro1.exibir_info()

#  carro2 = Carro("Hyundai", "Creta", 2024)

# print(f"Marca: {carro2.marca}")
# print(f"Modelo: {carro2.modelo}")+
# print(f"Ano: {carro2.ano}")