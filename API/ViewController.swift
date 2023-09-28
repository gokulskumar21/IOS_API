
//
//  ViewController.swift
//  API_Assignment
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func VehicleMake(_ sender: Any) {
        Task {
                    print("Data on vehicle make: ")
                    print(await vehicleMakeAPIHelper.fetch())
                    }
    }
    @IBAction func VehiclePart(_ sender: Any) {
        Task {
                    print("Data on vehicle parts: ")
                    print(await vehiclePartsFactAPIHelper.fetch())
                    }
    }
    @IBAction func FruityVice(_ sender: Any) {
        Task {
                    print("Data on fruit: ")
                    print(await FruitAPIHelper.fetch())
                    }
    }
}
