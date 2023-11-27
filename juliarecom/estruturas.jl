#include("csv.jl")
using Recommendation
modelo = leitura()
mutable struct pessoa_class
    id_pessoa::Int64
    const id_filme_p::AbstractVector{Int64}
    nota_pessoa::Bool
end
mutable struct Item
    id_Item::Int64
    nome_Item::String
    ano_Item::Int64
    nota_Item::Float64
end

mutable struct Evento
    id_filme_Evento::Int64
    id_p_Evento::Int64
    const nota_Evento::Int64
end

pessoa1_filme1 = pessoa_class(1,0,1)
pessoa1_filme2 = pessoa_class(1,1,1)
pessoa1_filme3 = pessoa_class(1,2,0)
pessoa2_filme1 = pessoa_class(2,0,0)
pessoa2_filme2 = pessoa_class(2,1,0)
pessoa2_filme3 = pessoa_class(2,2,0)

filme1 = Item(modelo[1,1], modelo[1,2], modelo[1,3], modelo[1,5])
filme2 = Item(modelo[2,1], modelo[2,2], modelo[2,3], modelo[2,5])
filme3 = Item(modelo[3,1], modelo[3,2], modelo[3,3], modelo[3,5])


evento_pessoa1_filme1= Evento(filme1.id_Item,pessoa1_filme1.id_pessoa,pessoa1_filme1.nota_pessoa)
evento_pessoa1_filme2= Evento(filme2.id_Item,pessoa1_filme2.id_pessoa,pessoa1_filme2.nota_pessoa)
evento_pessoa1_filme3= Evento(filme3.id_Item,pessoa1_filme3.id_pessoa,pessoa1_filme3.nota_pessoa)
evento_pessoa2_filme1= Evento(filme1.id_Item,pessoa2_filme1.id_pessoa,pessoa2_filme1.nota_pessoa)
evento_pessoa2_filme2= Evento(filme2.id_Item,pessoa2_filme2.id_pessoa,pessoa2_filme2.nota_pessoa)
evento_pessoa2_filme3= Evento(filme3.id_Item,pessoa2_filme3.id_pessoa,pessoa2_filme3.nota_pessoa)


pessoas_vetor=[pessoa1_filme1.id_pessoa, pessoa2_filme1.id_pessoa]
item_vetor=[filme1.id_Item, filme2.id_Item, filme3.id_Item]

events = [Event(pessoa1_filme1.id_pessoa, filme1.id_Item, evento_pessoa1_filme1.nota_Evento),
Event(pessoa1_filme2.id_pessoa, filme2.id_Item, evento_pessoa1_filme2.nota_Evento),
Event(pessoa1_filme3.id_pessoa, filme3.id_Item, evento_pessoa1_filme3.nota_Evento),
Event(pessoa2_filme1.id_pessoa, filme1.id_Item, evento_pessoa2_filme1.nota_Evento),
Event(pessoa2_filme2.id_pessoa, filme2.id_Item, evento_pessoa2_filme2.nota_Evento),
Event(pessoa2_filme3.id_pessoa, filme3.id_Item, evento_pessoa2_filme3.nota_Evento),]

eventos=[Event(1, 1, 1), Event(1, 2, 1), Event(1, 3, 0), Event(2, 1, 0), Event(2, 2, 0), Event(2, 3, 0),]

data = DataAccessor(events,2,3)

data1 = DataAccessor(eventos,2,3)
recommender = MostPopular(data1)