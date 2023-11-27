# Importa as bibliotecas necessárias
include("deps.jl")
include("csv.jl")
include("estruturas.jl")
using DataFrames, Recommendation, Tables, TableOperations

modelo = leitura()

n_users, n_items = 5, 10
events = [Event(1, 3, 1), Event(3, 2, 1), Event(2, 6, 4)]
data = DataAccessor(events, n_users, n_items)
recommender = MostPopular(data)
fit!(recommender)
build!(recommender)
recomendar=recommend(recommender, 4, 2, collect(1:n_items))

function filtro_linhas(modelo::DataFrame)
    modelo = modelo |> TableOperations.filter(x->Tables.getcolumn(x, :id) == 2) |> Tables.columntable
end

function selecao_colunas_def(dfr::DataFrame)
    filtro_colunas = dfr |> TableOperations.select(1,2) |> Tables.columntable
end

function df(a::Any)
    return a=DataFrame(a)
end
modelo[3,3]
df(selecao_colunas_def(modelo))
df(selecao_colunas(modelo, 1))


produto = Vector{Any}([    
    selecao_colunas(modelo, 1),
    selecao_colunas(modelo, 2),
    selecao_colunas(modelo, 3),
    selecao_colunas(modelo, 5),
    selecao_colunas(modelo, 9)
])
produto[1]





TFIDF(

)






usuario = DataFrame(
    id = 1,
    nota = [filmes[filmes.id == 1].nota[1], filmes[filmes.id == 2].nota[1]],
)

# Obtém os filmes mais similares aos filmes que o usuário já avaliou
filmes_similares = tfidf[usuario.features].sort(descending=true)

# Recomenda os filmes mais similares
recomendacoes = filmes_similares[1:2]

# Imprime as recomendações
println(recomendacoes)

