//
//  ViewController.swift
//  pratics  apis
//
//  Created by AHSAN on 06/02/2020.
//  Copyright © 2020 AHSAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var arr = [dataget]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData()
    {
        let url = URL(string:"http://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{
            if error == nil{
                self.arr = try JSONDecoder().decode([dataget].self, from: data! )
                
                for mainarr in self.arr{
                    //  print(mainarr.name, " ", mainarr.capital)
                    self.tableView.reloadData()
                }
                
            }
        }
        catch{
            print("Error in getting data")
        }
    }.resume()

    

}
}


extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
//            cell.detailTextLabel?.text = arr[indexPath.row].capital
//            cell.textLabel?.text = arr[indexPath.row].name
        cell.namelbl.text =  arr[indexPath.row].capital
        return cell
    }
    
    
}
extension ViewController : UITableViewDelegate{
    
}
