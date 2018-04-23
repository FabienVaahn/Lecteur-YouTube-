//
//  TableauController.swift
//  Lecteur YouTube Codabee
//
//  Created by Fabien VH on 22/04/2018.
//  Copyright © 2018 Vaahn. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    let identifiantCell = "ChansonCell"
    let identifiantSegue = "VersVideo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
        title = "Vidéos du PSG"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell{
            cell.creerCell(chanson)
            return cell
        }
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chanson = chansons[indexPath.row]
        performSegue(withIdentifier: identifiantSegue, sender: chanson)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifiantSegue {
            if let nouveauController = segue.destination as? VideoController {
                nouveauController.chanson2 = sender as? Chanson
            }
        }
        
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
        tableView.reloadData()
    }
    
}
