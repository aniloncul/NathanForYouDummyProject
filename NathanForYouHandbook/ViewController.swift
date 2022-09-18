//
//  ViewController.swift
//  NathanForYouHandbook
//
//  Created by Anıl Öncül on 18.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var nathanArray = [Nathan]()
    var userSelection: Nathan?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let coolNathan = Nathan(nickname: "Cool Nathan", attribute: "Cool", image: UIImage(named: "9602")!)
        let starbucksNathan = Nathan(nickname: "Starbucks Nathan", attribute: "Starbucks", image: UIImage(named: "nathan-for-you-izle")!)
        let gothNathan = Nathan(nickname: "Goth Nathan", attribute: "Goth", image: UIImage(named: "nathan-for-you")!)
        let bigSuitNathan = Nathan(nickname: "Big Suit Nathan", attribute: "Big Suit", image: UIImage(named:  "MV5BZWMzYWU0ZDctMzNhNC00ZWQ2LTk5ZWYtM2YxNjI0ZmFkNmE0XkEyXkFqcGdeQXVyNzA4NzQyMjk@._V1_FMjpg_UX1000_")!)
        
        nathanArray = [coolNathan, starbucksNathan, gothNathan, bigSuitNathan ]
        
    }
   
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = nathanArray[indexPath.row].nickname
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nathanArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userSelection = nathanArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedNathan = userSelection
        }
    }

    
    
    
}

