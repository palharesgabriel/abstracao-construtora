import Cocoa

class Arquiteto: Profissional {
    
    var cra: String
    
    init(cra: String, nome: String, fone: String,
         endereco: String) {
        
        self.cra = cra
        super.init(nome: nome, fone: fone, endereco: endereco, precoHora: 40.0)
        
    }
}
