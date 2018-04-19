import Cocoa

struct Empreiteira {
    var predios:[Predio] = []
    var construcoes: [Construcao]
    
    init(construcoes:[Construcao]) {
        self.construcoes = construcoes
    }
    
    func folhaSalarioDiaria(_ construcao: Construcao) -> Double {
        var totalDiario = 0.0
        let horasMaximasDeTrab = 8.0
        for profissional in construcao.profissionais {
            totalDiario += (horasMaximasDeTrab - Double(profissional.horasDisponiveis)) * profissional.precoHora
        }
        return totalDiario
    }
    
    mutating func contratarFuncionario(construcao:inout Construcao, profissional: Profissional, horasDiarias: Int) {
        let horasMax = 8
        let horasMin = 4
        
        if profissional is Engenheiro  {
            if (profissional.horasDisponiveis == horasMax){
                profissional.horasDisponiveis = 0
                construcao.profissionais.append(profissional)
            }
            else {
                print("O Engenheiro já foi alocado em uma obra.")
            }
        }
        
        else if profissional is Arquiteto {
            if(profissional.horasDisponiveis == horasMax) {
                profissional.horasDisponiveis = 0
                construcao.profissionais.append(profissional)
            }
            else {
                print("O Arquiteto já foi alocado em uma obra.")
            }
        }
        else {
            if(profissional.horasDisponiveis >= horasMin && profissional.horasDisponiveis <= horasMax) {
                profissional.horasDisponiveis -= horasDiarias
                construcao.profissionais.append(profissional)
            }
            else {
                print("O profissional não tem mais horas disponíveis.")
            }
        }
    }
}
