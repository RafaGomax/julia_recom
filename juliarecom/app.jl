using Genie
using DataFrames

include("recomendacao.jl")  # Carrega o código do sistema de recomendação

function home()
    # Lógica para renderizar a página inicial
    render("home.html")
end

function recomendar(filme_usuario)
    # Lógica para recomendar filmes
    filmes_recomendados = recomendar_filmes(filme_usuario)
    render("recomendacoes.html", filmes_recomendados=filmes_recomendados)
end

Genie.config.server_port = 8000
route("/", home)
route("/recomendar/:filme_usuario", recomendar)

Genie.start()





