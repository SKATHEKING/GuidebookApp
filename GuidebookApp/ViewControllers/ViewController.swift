//
//  ViewController.swift
//  GuidebookApp
//
//  Created by Mateus Goncalves De Ouro on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var places = [Place]()
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        do{
            places = try  context.fetch(Place.fetchRequest())}
        catch{print("Couldnt fetch any data ")}
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return places.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.PLACE_CELL) as!
        PlaceTableViewCell
        //not working yet data is being fetched but not displayed
        
        
        let p = self.places[indexPath.row]
        
        cell.setCell(p)
        
        return cell
    
    }
    
    
}
