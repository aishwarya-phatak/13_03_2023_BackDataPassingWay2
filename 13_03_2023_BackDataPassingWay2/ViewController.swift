//
//  ViewController.swift
//  13_03_2023_BackDataPassingWay2
//
//  Created by Vishal Jagtap on 21/04/23.
//

import UIKit

class ViewController: UIViewController,BackDataPassing{
    @IBOutlet weak var empIdLabel: UILabel!
    @IBOutlet weak var empNameLabel: UILabel!
    @IBOutlet weak var empCityLabel: UILabel!
    @IBOutlet weak var empSalaryLabel: UILabel!
    
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func btnSubmit(_ sender: Any) {
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        secondViewController?.delegate = self
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
    func sendDataToFirstViewController(
        empId: Int,
        empName: String,
        empCity: String,
        empSalary: Float) {
            self.empIdLabel.text = String(empId)
            self.empNameLabel.text = empName
            self.empCityLabel.text = empCity
            self.empSalaryLabel.text = String(empSalary)
    }
}

