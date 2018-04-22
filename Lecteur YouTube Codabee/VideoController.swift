//
//  VideoController.swift
//  Lecteur YouTube Codabee
//
//  Created by Fabien VH on 22/04/2018.
//  Copyright © 2018 Vaahn. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if chanson != nil{
            title = chanson!.titre
        }
        
    }

   
}
