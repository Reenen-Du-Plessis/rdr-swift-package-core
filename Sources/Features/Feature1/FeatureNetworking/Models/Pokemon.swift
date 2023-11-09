import Foundation
// https://pokeapi.co/api/v2/pokemon/1

// MARK: - PokemonList
public struct Pokemon: Codable, Identifiable {
    public var id: Int?
    var name: String?
    var sprites: Sprites?

    enum CodingKeys: String, CodingKey {
        case id, name, sprites
    }

    func imageString() -> String {
        return self.sprites?.other?.officialArtwork?.frontDefault ?? ""
    }
}

// MARK: - Sprites
public class Sprites: Codable {
    let backDefault: String?
    let backFemale: String?
    let backShiny: String?
    let backShinyFemale: String?
    let frontDefault: String?
    let frontFemale: String?
    let frontShiny: String?
    let frontShinyFemale: String?
    let other: Other?

    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
        case other
    }

    init(backDefault: String?, backFemale: String?, backShiny: String?, backShinyFemale: String?, frontDefault: String?, frontFemale: String?, frontShiny: String?, frontShinyFemale: String?, other: Other?) {
        self.backDefault = backDefault
        self.backFemale = backFemale
        self.backShiny = backShiny
        self.backShinyFemale = backShinyFemale
        self.frontDefault = frontDefault
        self.frontFemale = frontFemale
        self.frontShiny = frontShiny
        self.frontShinyFemale = frontShinyFemale
        self.other = other
    }
}

// MARK: - Other
public struct Other: Codable {
    let dreamWorld: Sprites?
    let home: Sprites?
    let officialArtwork: Sprites?

    enum CodingKeys: String, CodingKey {
        case dreamWorld = "dream_world"
        case home
        case officialArtwork = "official-artwork"
    }
}
