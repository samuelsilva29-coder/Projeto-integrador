class Usuarios:

    def __init__(self, id_usuario, nome, email, senha):
        self.id_usuario = id_usuario
        self.nome = nome
        self.email = email
        self.senha = senha

class Filmes:

    def __init__(self, id_filme, titulo, 
    ano_lancamento, avaliacao, ator_principal):
        self.titulo = titulo
        self.ano_lancamento = ano_lancamento
        self.avaliacao = avaliacao
        self.ator_principal = ator_principal

class Generos:

    def __init__(self, id_genero, nome_genero, descricao, usuarios, 
    filmes, generos):
        self.id_genero = id_genero
        self.nome_genero = nome_genero
        self.descricao = descricao

    # relacionamentos
        self.usuarios = usuarios
        self.filmes = filmes
        self.serie = serie



