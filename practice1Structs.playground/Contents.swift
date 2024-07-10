import Cocoa

struct Estudiante{
    let nombre: String
    let edad: Int
    let grado: String
    let promedio: Double
    
    func descripcion(){
        print("Nombre: \(nombre), Edad: \(edad), Grado: \(grado), Promedio: \(promedio)")
    }
    
    func esMayorDeEdad() -> Bool{
        if edad >= 18{
            return true
        }
        else{
            return false
        }
    }
}


let estudiante1 = Estudiante(nombre: "Ana", edad: 17, grado: "11°", promedio: 9.0)
let estudiante2 = Estudiante(nombre: "Luis", edad: 18, grado: "12°", promedio: 8.5)
let estudiante3 = Estudiante(nombre: "María", edad: 20, grado: "Universidad", promedio: 9.8)

// Imprimir descripciones
estudiante1.descripcion()
estudiante2.descripcion()
estudiante3.descripcion()

// Verificar si son mayores de edad
print("¿\(estudiante1.nombre) es mayor de edad? \(estudiante1.esMayorDeEdad())")
print("¿\(estudiante2.nombre) es mayor de edad? \(estudiante2.esMayorDeEdad())")
print("¿\(estudiante3.nombre) es mayor de edad? \(estudiante3.esMayorDeEdad())")
