import Cocoa

class Engenheiro : Profissional {
    
    var crea: String
    
    init(crea: String, nome: String, fone: String,endereco: String) {
        self.crea = crea
        super.init(nome: nome, fone: fone, endereco: endereco, precoHora: 50.0)
    }
}
