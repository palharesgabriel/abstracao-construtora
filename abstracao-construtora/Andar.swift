import Cocoa

struct Andar {
    
    var apartamentos: [Apartamento]
    var taxa: Double
    
    init(taxa: Double) {
        self.taxa = taxa
        self.apartamentos = []
    }
}
