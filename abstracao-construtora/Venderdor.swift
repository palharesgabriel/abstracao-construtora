import Cocoa

struct Venderdor {

    var nome: String
    var taxaComissao: Double = 0.05
    
    init(nome: String) {
        self.nome = nome
    }
    
    func venderApartamento(apartamento: Apartamento, cliente: inout Cliente) {
        cliente.apartamentoComprado = apartamento
        let comissao = apartamento.preco * self.taxaComissao
        print("Apartamento vendido para \(cliente.nome). O vendedor \(self.nome) ganhou uma comissão de \(comissao)")
    }

}
