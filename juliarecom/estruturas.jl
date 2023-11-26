include("csv.jl")
modelo = leitura()
mutable struct pessoa_class
    id_pessoa::Int64
    const id_filme_p::AbstractVector{Int64}
    nota_pessoa::AbstractVector{Bool}
end

pessoa1 = pessoa_class(1,[3],[1])

mutable struct Evento
    id_filme_Evento::Int8
    id_p_Evento::Int8
    const nota_Evento::AbstractVector{Int8}
end

evento_pessoa1_filme1= Evento(filme1.id_Item,pessoa1.id_pessoa,pessoa1.nota_pessoa)

mutable struct Item
    id_Item::AbstractVector{Int64}
    nome_Item::String
    ano_Item::Int32
    nota_Item::Float32
    genero_Item::AbstractVector{String}
end
mutable struct Item_teste
    id_Item::AbstractVector{Int64}
    nome_Item::String
    ano_Item::Int32
    nota_Item::Float32
    genero_Item::AbstractVector{String}
end


filme1 = Item_teste(modelo[1,1], modelo[1,2], modelo, modelo 5,modelo[], 9)