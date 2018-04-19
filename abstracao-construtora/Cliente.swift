import Cocoa

struct Cliente {
    
    var nome: String
    var telefone: String
    var apartamentoComprado: Apartamento
    
    
    init(nome: String, telefone: String, apartamentoComprado: Apartamento) {
        
        self.nome = nome
        self.telefone = telefone
        self.apartamentoComprado = apartamentoComprado
    }
}
