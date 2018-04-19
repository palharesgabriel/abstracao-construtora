import Cocoa

struct Predio{
    
    var andares: Int
    var apartamentos: Int
    var cidade: String
    
    init(andares: Int, cidade: String) {
        self.andares = andares
        self.apartamentos = andares * 4
        self.cidade = cidade
    }
}
