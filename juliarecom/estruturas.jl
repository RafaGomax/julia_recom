#include("csv.jl")
using Recommendation
modelo = leitura()
mutable struct pessoa_class
    id_pessoa::Int64
    const id_filme_p::AbstractVector{Int64}
    nota_pessoa::Bool
end

mutable struct pessoa_class11
    id_pessoa::Int64
    const id_filme_p::Int64
    nota_pessoa::Bool
end

pessoa1_filme1 = pessoa_class11(1,0,1)
pessoa1_filme2 = pessoa_class11(1,1,1)
pessoa1_filme3 = pessoa_class11(1,2,0)
pessoa2_filme1 = pessoa_class11(2,0,0)
pessoa2_filme2 = pessoa_class11(2,1,0)
pessoa2_filme3 = pessoa_class11(2,2,0)

mutable struct Evento
    id_filme_Evento::Int64
    id_p_Evento::Int64
    const nota_Evento::Bool
end
mutable struct Evento1
    id_filme_Evento::Int64
    id_p_Evento::Int64
    const nota_Evento::Bool
end

evento_pessoa1_filme1= Evento1(filme1.id_Item,pessoa1_filme1.id_pessoa,pessoa1_filme1.nota_pessoa)
evento_pessoa1_filme2= Evento1(filme2.id_Item,pessoa1_filme2.id_pessoa,pessoa1_filme2.nota_pessoa)
evento_pessoa1_filme3= Evento1(filme3.id_Item,pessoa1_filme3.id_pessoa,pessoa1_filme3.nota_pessoa)
evento_pessoa2_filme1= Evento1(filme1.id_Item,pessoa2_filme1.id_pessoa,pessoa2_filme1.nota_pessoa)
evento_pessoa2_filme2= Evento1(filme2.id_Item,pessoa2_filme2.id_pessoa,pessoa2_filme2.nota_pessoa)
evento_pessoa2_filme3= Evento1(filme3.id_Item,pessoa2_filme3.id_pessoa,pessoa2_filme3.nota_pessoa)



evento_pessoa1_filme1 = Vector{Any}[
    ::Any
    ::Any
    ::Any
]

mutable struct Item11
    id_Item::Int64
    nome_Item::String
    ano_Item::Int64
    nota_Item::Float64
end
mutable struct Item
    id_Item::Int64
    nome_Item::String
    ano_Item::Int64
    nota_Item::Float64
end

filme1 = Item11(modelo[1,1], modelo[1,2], modelo[1,3], modelo[1,5])
filme2 = Item11(modelo[2,1], modelo[2,2], modelo[2,3], modelo[2,5])
filme3 = Item11(modelo[3,1], modelo[3,2], modelo[3,3], modelo[3,5])

events = [Event(pessoa1_filme1.id_pessoa, filme1.id_Item, evento_pessoa1_filme1.nota_Evento),
          Event(pessoa1_filme2.id_pessoa, filme2.id_Item, evento_pessoa1_filme2.nota_Evento),
          Event(pessoa1_filme3.id_pessoa, filme3.id_Item, evento_pessoa1_filme3.nota_Evento),
          Event(pessoa2_filme3.id_pessoa, filme3.id_Item, evento_pessoa2_filme3.nota_Evento),
          ]
data = DataAccessor(events,4,4)
