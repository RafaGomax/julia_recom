#include("deps.jl")
using DataFrames, CSV
#cd("") para entrar na pasta do projeto
function leitura()
    path = "data/data.csv"
    filmes=DataFrame(CSV.File(path))
    rename!(filmes, [1 => :id, 2 => :filme,5 => :nota,9 => :genero])
end

function print_filtro(i_inicial::Int64, i_final::Int64, cols::Any)
    filmes = leitura()
    return filmes[i_inicial:i_final,cols]
end
colunas_selecionadas = [:id, :filme, :nota, :genero]
println(print_filtro(1,5, colunas_selecionadas))