class Usuarios:
    # def __init(): = metodo construtor
    def __init__(self, id_usuario, nome, email, senha):
        self.id_usuario = id_usuario
        self.nome = nome
        self.email = email
        self.senha = senha

    # método para exibir as informações do user
    def exibir_info(self):
        print(f'=====INFORMAÇÕES DO USUÁRIO=====')
        print(f'ID: {self.id_usuario}')
        print(f'Nome: {self.nome}')
        print(f'Email: {self.email}')
        print(f'Senha: {self.senha}')

    # método assistir
    def assistir(self, filme):
        print(f"{self.nome} está assistindo o filme {filme.titulo}.")

    # método avaliar 
    def avaliar(self, filme):
        print(f"{self.nome} avaliou o filme {filme.titulo}.")

class Filmes:

    def __init__(self, id_filme, titulo, 
    ano_lancamento, avaliacao, ator_principal):
        self.id_filme = id_filme
        self.titulo = titulo
        self.ano_lancamento = ano_lancamento
        self.avaliacao = avaliacao
        self.ator_principal = ator_principal

class Generos:

    def __init__(self, id_genero, nome_genero, descricao, usuarios, 
    filmes):
        self.id_genero = id_genero
        self.nome_genero = nome_genero
        self.descricao = descricao

    # relacionamentos
        self.usuarios = usuarios
        self.filmes = filmes
        
    # método de exibir informações
    def exibir_genero(self):
        print("========FILME========")
        print(f"Gênero: {self.nome_genero}")
        print(f"Título: {self.filmes.titulo}")
        print(f"Descrição: {self.descricao}")
        print(f"Avaliação: {self.filmes.avaliacao}")
        print(f"Ano de lançamento: {self.filmes.ano_lancamento}")
        print(f"Ator principal: {self.filmes.ator_principal}")


filme1 = Filmes(100, 'Interstelar', 2014, 8.9, 'Matthew McConaughey')
usuario1 = Usuarios(1, 'Samuel', 'samuel@gmail.com', 12345)

generos_fic = Generos(
    id_genero=1,
    nome_genero = 'Ficção Científica',
    descricao = 'Filmes que exploram a ciência, o espaço e o futuro.',
    usuarios=usuario1,
    filmes=filme1
)

# chamando os métodos
usuario1.exibir_info()
print("\n")
generos_fic.exibir_genero()

print("\n")
usuario1.assistir(filme1)
usuario1.avaliar(filme1)


