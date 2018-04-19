import Cocoa

class Profissional {
    
    var nome: String
    var fone: String
    var endereco: String
    var horasDisponiveis: Int
    var precoHora: Double
    
    init(nome: String, fone: String, endereco: String, precoHora: Double) {
        
        self.nome = nome
        self.fone = fone
        self.endereco = endereco
        self.horasDisponiveis = 8
        self.precoHora = precoHora
    }
}

