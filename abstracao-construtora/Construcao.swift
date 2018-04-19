import Cocoa

struct Construcao {

    var faseDaConstrucao = FasesDeConstrucao.burocracia
    var profissionais:[Profissional] = []
    var cidade: String
    var andares: Int
    
    init(cidade: String, andares: Int) {
        self.andares = andares
        self.cidade = cidade
    }
    
    
    
    mutating func proximaEtapaDoProjeto() {
        if profissionais.filter({$0 is Arquiteto}).count == 1 {
            faseDaConstrucao = FasesDeConstrucao.projeto
            if (profissionais.filter({$0 is MestreDeObras}).count > 0 && profissionais.filter({$0 is Engenheiro}).count == 1)  {
                faseDaConstrucao = FasesDeConstrucao.construcao
            }else{
                print("Esperando pelo menos um Engenheiro e um Mestre de Obra para fase de construção.")
            }
        }else{
            print("Esperando arquiteto ser contratado para entrar na fase de projeto.")
        }
    }
    
    mutating func finalizarConstrucao(){
        if(faseDaConstrucao == FasesDeConstrucao.construcao){
            faseDaConstrucao = FasesDeConstrucao.vendas
            profissionais = profissionais.map({
                $0.horasDisponiveis = 8
                return $0
            })
            profissionais.removeAll()
            print ("Fase de vendas iniciada, equipe da construção desalocada.")
            let predio = Predio(andares: self.andares, cidade: self.cidade)
            print("Prédio construído em \(predio.cidade), com \(predio.andares) andares")
    

        }else{
            print ("Construção ainda não está pronta para vendas.")
        }
        
    }
}
