//
//  ViewController.swift
//  searchBar
//
//  Created by R87 on 08/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var tb: UITableView!
    var arr = [  "Toyota",  "Honda",  "Ford",  "Chevrolet",  "Volkswagen",  "BMW",  "Mercedes-Benz",  "Audi",  "Nissan",  "Hyundai",  "Kia",  "Volvo",  "Mazda",  "Subaru",  "Lexus",  "Jeep",  "Tesla",  "Ferrari",  "Porsche",  "Jaguar",  "Land Rover",  "Mitsubishi",  "Chrysler",  "Dodge",  "Buick",  "Cadillac",  "Lincoln",  "GMC",  "Acura",  "Infiniti",  "Range Rover",  "Alfa Romeo",  "Maserati",  "Bentley",  "Mini",  "Fiat",  "Smart",  "Suzuki",  "Renault",  "Peugeot",  "Citroën",  "SEAT",  "Škoda",  "Foton",  "Geely",  "Great Wall",  "BYD",  "Chery",  "Dongfeng",  "Haval",  "JAC",  "Lifan",  "MG",  "NIO",  "SAIC",  "Tata Motors"]

    var arr1 = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arr1 = arr
    }


}


extension ViewController : UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell1
        cell.lb1.text = arr1[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty == true {
            arr1 = arr
        }else{
            arr1 = arr.filter{$0.hasPrefix(search.text!)}
        }
        tb.reloadData()
    }
    
    
}

