//
//  TableauController.swift
//  Lecteur YouTube Codabee
//
//  Created by Fabien VH on 22/04/2018.
//  Copyright © 2018 Vaahn. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TableView: UITableView!
    
    var chansons = [Chanson]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        ajouterChanson()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func ajouterChanson(){
        chansons = [Chanson]()
        let NeymarJr = Chanson(artiste: "NeymarJr", titre: "Skills & Goals", code: "u8VLBisyRfY")
        chansons.append(NeymarJr)
        let Mbappe = Chanson(artiste: "Mbappe", titre: "skills & Goals", code: "bW7UVN6YBKo")
        chansons.append(Mbappe)
        let DiMaria = Chanson(artiste: "Di Maria", titre: "but contre Monaco", code: "Qm5LsoAbjJQ")
        chansons.append(DiMaria)
        let Cavani = Chanson(artiste: "cavani", titre: "20 buts", code: "vern0LTq-bQ")
        chansons.append(Cavani)
        let Verratti = Chanson(artiste: "verratti", titre: "Best of", code: "T7t4D2pqscc")
        chansons.append(Verratti)
        let Pastore = Chanson(artiste: "Pastore", titre: "skills", code: "YJ8TqR93TIY")
        chansons.append(Pastore)
        let LoCelso = Chanson(artiste: "Lo Celso", titre: "2018", code: "OV8lWhg-GEk")
        chansons.append(LoCelso)
        
        //reload Data
        TableView.reloadData()
    }
    
}
