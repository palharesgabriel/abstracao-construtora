import Foundation

var severino = Servente.init(nome: "Severino", fone: "143453", endereco: "casa do caralho", precoHora: 5)
var mario = Engenheiro(crea: "4444444444", nome: "Mario", fone: "9999999999", endereco: "Rua Pinhais")
var mario2 = Engenheiro(crea: "4444444444", nome: "Mario", fone: "9999999999", endereco: "Rua Pinhais")
var claudinho = Arquiteto(cra: "444444", nome: "Claudio", fone: "6969696969", endereco: "Rua do cha")
var pedro = MestreDeObras(nome: "Pedro", fone: "44444444", endereco: "Rua dos casais", precoHora: 5)

var obra = Construcao(cidade: "Fortaleza", andares: 5)
var obraDoPassaré = Construcao(cidade: "São Paulo", andares: 3)

var odebretch = Empreiteira(construcoes: [obra])
odebretch.contratarFuncionario(construcao: &obra, profissional: severino, horasDiarias: 4)
odebretch.contratarFuncionario(construcao: &obraDoPassaré, profissional: severino, horasDiarias: 4)
odebretch.contratarFuncionario(construcao: &obra, profissional: claudinho, horasDiarias: 8)
obra.proximaEtapaDoProjeto()
obra.finalizarConstrucao()
odebretch.contratarFuncionario(construcao: &obra, profissional: mario2, horasDiarias: 8)
odebretch.contratarFuncionario(construcao: &obra, profissional: pedro, horasDiarias: 8)
obra.proximaEtapaDoProjeto()
print(odebretch.folhaSalarioDiaria(obra))
obra.finalizarConstrucao()
print(obra.faseDaConstrucao)



obraDoPassaré.proximaEtapaDoProjeto()
odebretch.contratarFuncionario(construcao: &obraDoPassaré, profissional: claudinho, horasDiarias: 8)
obraDoPassaré.proximaEtapaDoProjeto()

