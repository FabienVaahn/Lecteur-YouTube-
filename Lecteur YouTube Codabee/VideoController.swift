//
//  VideoController.swift
//  Lecteur YouTube Codabee
//
//  Created by Fabien VH on 22/04/2018.
//  Copyright © 2018 Vaahn. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if chanson != nil{
            title = chanson!.titre
            chargerVideo(chanson: chanson!)
        }
        
    }

    func chargerVideo(chanson: Chanson){
        if let url = URL(string: chanson.videoUrl){
            let requete = URLRequest(url: url)
            webView.load(requete)
        }
        
    }
    
    
}
