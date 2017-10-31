//: Equatable and Comparable protocols.

import UIKit

//Conformanto el protocolo Equatable

struct Cliente{
    var nombreCompleto:String
    var numeroCliente:String
    var antiguedad:Int
}

extension Cliente:Equatable {
    static func ==(lhs: Cliente, rhs:Cliente) -> Bool {
        return (lhs.numeroCliente == rhs.numeroCliente) &&
            (lhs.nombreCompleto == rhs.nombreCompleto) &&
            (lhs.antiguedad == rhs.antiguedad)
    }
}

extension Cliente:Comparable{
    static func <(lhs: Cliente, rhs:Cliente) -> Bool {
        return (lhs.antiguedad < rhs.antiguedad)
    }
    
    static func >(lhs: Cliente, rhs:Cliente) -> Bool {
        return (lhs.antiguedad > rhs.antiguedad)
    }
    
    static func <=(lhs: Cliente, rhs:Cliente) -> Bool {
        return (lhs.antiguedad <= rhs.antiguedad)
    }
    
    static func >=(lhs: Cliente, rhs:Cliente) -> Bool {
        return (lhs.antiguedad >= rhs.antiguedad)
    }
    
}


var cliente_A:Cliente = Cliente(nombreCompleto: "Bernardino Guerrero", numeroCliente: "800803", antiguedad:3)
var cliente_B:Cliente = Cliente(nombreCompleto: "Bernardino Guerrero", numeroCliente: "800803", antiguedad:4)
var cliente_C:Cliente = Cliente(nombreCompleto: "Bernardino Guerrero", numeroCliente: "800803", antiguedad:5)

if cliente_A <= cliente_B{
    debugPrint("El cliente B es más antigüo")
}

if cliente_A == cliente_A{
    debugPrint("Reflexibidad: done!")
}

if cliente_A == cliente_B{
    if cliente_B == cliente_A{
        debugPrint("Simetría, done!")
    }
}

if cliente_A == cliente_B && cliente_B == cliente_C{
    if cliente_A == cliente_C{
        debugPrint("Transitividad, done!")
    }
}



