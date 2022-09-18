//
//  DetailsViewController.swift
//  NathanForYouHandbook
//
//  Created by Anıl Öncül on 18.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var outlineLabel: UILabel!
    
    var selectedNathan: Nathan?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedNathan?.nickname
        outlineLabel.text = selectedNathan?.attribute
        imageView.image = selectedNathan?.image

        // Do any additional setup after loading the view.
    }
    

}
