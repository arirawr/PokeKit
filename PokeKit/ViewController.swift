//
//  ViewController.swift
//  PokeKit
//
//  Created by Arielle Vaniderstine on 2018-07-10.
//  Copyright © 2018 Arielle Vaniderstine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        PokeKit.shared.getPokemon(id: 7, queryParams: nil, callback: { pokemon in
            print(pokemon.name)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

