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
    var chanson2: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if chanson2 != nil{
            title = chanson2!.titre
           chargerVideo(chanson: chanson2!)
        }
        
    }

    func chargerVideo(chanson: Chanson){
        if let url = URL(string: chanson.videoUrl){
            let requete = URLRequest(url: url)
            webView.load(requete)
        }
        
    }
    
    
}


