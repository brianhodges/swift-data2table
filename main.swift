import Foundation

struct Country {
    let name, population: String
    
    init(name: String, population: String) {
        self.name   = name
        self.population = population
    }
}

func main() {
    var countries = [Country]()
    countries.append(Country(name: "USA", population: "350 million"))
    countries.append(Country(name: "China", population: "1.4 billion"))
    countries.append(Country(name: "Russia", population: "145 million"))

    print()
    print("DUMP:")
    NSLog("%@", countries);
    print()

    print("SANITIZED DUMP:")
    for c in countries {
        print("{ :name => " + c.name + ", :population => " + c.population + " } ")
    }

    print()
    print("TABLE:")
    var header = "Countries | Population"
    print(header)
    let field : String = "Countries "
    print(String(repeating: "-", count: header.characters.count))
    for c in countries {
        let ws : String = String(repeating: " ", count: (field.characters.count - c.name.characters.count))
        print(c.name + ws + "|" + c.population)
    }
    print()
}

main()
