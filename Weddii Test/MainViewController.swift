//
//  MainViewController.swift
//  Weddii Test
//
//  Created by Janice Yoshimura on 7/19/17.
//  Copyright © 2017 Janice Yoshimura. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var salonArray: [SalonModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let salon1 = SalonModel(salonName: "SiSi's Bridal", salonAddress: "Gold Coast, 3542 Goethe St", salonNeighborhood: "Gold, Coast", salonZip: 60606)
       
        let salon2 = SalonModel(salonName: "Bella Bridal", salonAddress: "Lincoln Park, 100 N Sheffield", salonNeighborhood: "Lincoln Park", salonZip: 60601)
        
       // let salon1:Dictionary<String, String> = ["salon": "SiSi's Bridal", "address": "Gold Coast, 3542 Goethe St"]
       // let salon2:Dictionary<String, String> = ["salon": "Bella Bridal", "address": "Lincoln Park, 100 N Sheffield"]
        
        
        salonArray = [salon1, salon2]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return salonArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let thisSalon = salonArray[indexPath.row]
        
        var cell: SalonTableViewCell = tableView.dequeueReusableCell(withIdentifier: "mySalonsCell") as! SalonTableViewCell

        cell.salonName.text = thisSalon.salonName
        cell.salonAddress.text = thisSalon.salonAddress
        
        return cell
    }
    
    //UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
