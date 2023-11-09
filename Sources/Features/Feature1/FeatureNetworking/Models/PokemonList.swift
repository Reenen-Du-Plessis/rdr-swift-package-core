import Foundation
// https://pokeapi.co/api/v2/pokemon/?limit=30

// MARK: - PokemonList
public struct PokemonList: Codable {
    let count: Int?
    let nextPage: String?
    let previousPage: String?
    let results: [PokemonListResult]?
}

// MARK: - Result
public struct PokemonListResult: Codable {
    let name: String?
    let url: String?
}
