//
//  ViewController.swift
//  CustomCellTableView
//
//  Created by Ömer on 6.04.2025.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Ahmet", kisiTel: "0234892746")
        let k2 = Kisiler(kisiId: 2, kisiAd: "Mehmet", kisiTel: "22362538")
        let k3 = Kisiler(kisiId: 3, kisiAd: "Zeynep", kisiTel: "57665435")
        let k4 = Kisiler(kisiId: 4, kisiAd: "Ece", kisiTel: "1917310")
        let k5 = Kisiler(kisiId: 5, kisiAd: "Kemal", kisiTel: "21864523764")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as? TableViewCell
        cell?.textLabel1.text = kisilerListe[indexPath.row].kisiAd
        return cell!
    }


}

