/*1. Потребно је написати програм у оквиру окружења Playground који испуњава следеће
задатке:
а) Генерисати два случајна низа са 50 одбирака који представљају реалне бројеве из
опсега [0,1].
б) Одредити трећи низ који представља збир два генерисана низа.
в) Одредити средњу вредност за сва три низа и исписати одговарајуће поруке.
г) Одредити четврти низ који представља трансформисани полазни трећи низ по
формули y=2x+5.*/

import Foundation

let n = 50

// a) Generisanje dva niza sa realnim brojevima iz [0,1]
var niz1: [Double] = []
var niz2: [Double] = []

for _ in 0..<n {
    niz1.append(Double.random(in: 0...1))
    niz2.append(Double.random(in: 0...1))
}

// b) Treći niz = zbir prva dva
var niz3: [Double] = []

for i in 0..<n {
    niz3.append(niz1[i] + niz2[i])
}

// Funkcija za srednju vrednost
func srednjaVrednost(_ niz: [Double]) -> Double {
    let suma = niz.reduce(0, +)
    return suma / Double(niz.count)
}

// v) Računanje srednjih vrednosti
let avg1 = srednjaVrednost(niz1)
let avg2 = srednjaVrednost(niz2)
let avg3 = srednjaVrednost(niz3)

// Ispis
print("Srednja vrednost prvog niza: \(avg1)")
print("Srednja vrednost drugog niza: \(avg2)")
print("Srednja vrednost trećeg niza: \(avg3)")

// g) Četvrti niz: y = 2x + 5
var niz4: [Double] = []

for x in niz3 {
    niz4.append(2 * x + 5)
}

// (opciono) ispis prvih par elemenata da vidiš rezultat
print("Prvih 5 elemenata četvrtog niza:")
for i in 0..<5 {
    print(niz4[i])
}