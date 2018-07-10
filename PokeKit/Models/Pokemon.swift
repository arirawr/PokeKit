//
//  Pokemon.swift
//  PokeKit
//
//  Created by Arielle Vaniderstine on 2018-07-10.
//  Copyright © 2018 Arielle Vaniderstine. All rights reserved.
//

import Foundation


extension PokeKit {

    struct Ability: Codable {

    }

    struct Move: Codable {

    }

    struct Sprites: Codable {
        /// The default depiction of this Pokémon from the front in battle
        public let frontDefault: URL
        /// The shiny depiction of this Pokémon from the front in battle
        public let frontShiny: URL
        /// The default depiction of this Pokémon from the back in battle
        public let backDefault: URL
        /// The shiny depiction of this Pokémon from the back in battle
        public let backShiny: URL
    }

    /// A Pokémon resource
    struct Pokemon: Codable {

        struct Ability: Codable {
            /// Whether or not this is a hidden ability
            public let isHidden: Bool
            /// The slot this ability occupies in this Pokémon species
            public let slot: Int
            /// The ability the Pokémon may have
            public let ability: PokeKit.Ability
        }

        struct Form: Codable {

        }

        struct HeldItem: Codable {

        }

        struct Species: Codable {

        }

        struct Stat: Codable {

        }

        struct PokemonType: Codable {

        }

        struct VersionGameIndex: Codable {

        }

        /// The identifier for this Pokémon resource
        public let id: Int
        /// The name for this Pokémon resource
        public let name: String
        /// The base experience gained for defeating this Pokémon
        public let baseExperience: Int
        /// The height of this Pokémon
        public let height: Int
        /// Set for exactly one Pokémon used as the default for each species
        public let isDefault: Bool
        /// Order for sorting. Almost national order, except families are grouped together.
        public let order: Int
        /// The weight of this Pokémon
        public let weight: Int
        /// A list of abilities this Pokémon could potentially have
        public let abilities: [Ability]
        /// A list of forms this Pokémon can take on
        public let forms: [Form]
        /// A list of game indices relevent to Pokémon item by generation
        public let gameIndices: [VersionGameIndex]
        /// A list of items this Pokémon may be holding when encountered
        public let heldItems: [HeldItem]
        /// A link to a list of location areas as well as encounter details pertaining to specific versions
        public let locationAreaEncounters: URL
        /// A list of moves along with learn methods and level details pertaining to specific version groups
        public let moves: [Move]
        /// A set of sprites used to depict this Pokémon in the game
        public let sprites: Sprites
        /// The species this Pokémon belongs to
        public let species: Species
        /// A list of base stat values for this Pokémon
        public let stats: [Stat]
        /// A list of details showing types this Pokémon has
        public let types: [PokemonType]
    }


}

