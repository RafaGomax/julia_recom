using Genie, DataFrames

include("recomendacao.jl")
include("csv.jl")
function home()
    render("home.html")
end

function recomendar(filme_usuario)
    filmes_recomendados = recomendar_filmes(filme_usuario)
    render("recomendacoes.html", filmes_recomendados=filmes_recomendados)
end

Genie.config.server_port = 8000
route("/", home)
route("/recomendar/:filme_usuario", recomendar)

Genie.up()





