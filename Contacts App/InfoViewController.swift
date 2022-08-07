//
//  DetailsViewController.swift
//  Contacts App
//
//  Created by admin on 07.08.2022.
//

import UIKit

class InfoViewController: UIViewController {
   
    var contacts: [Contact] = []
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var call: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    var person: Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Contact Info"
        
        nameLabel.text = person?.name
        
        if person?.gender == "female" {
            image.image = UIImage(named: "female")
        } else
        if person?.gender == "male" { image.image = UIImage(named: "male")
        } else {
            image.image = UIImage(systemName: "person")
        }
        number.text = person?.number
        call.layer.cornerRadius = 25
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func callButton(_ sender: Any) {
        let alert = UIAlertController(title: "number", message: "Do you want to call?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Call", style: .default))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    }
    
}


