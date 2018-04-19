import Cocoa

struct Apartamento {
    
    var preco: Double
    var andar: Int
    var predio: Predio
    
    init(preco: Double, andar: Int, predio: Predio) {
        self.andar = andar
        self.preco = preco * (1.03 * Double(andar))
        self.predio = predio
    }
}
