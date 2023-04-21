//
//  SecondViewController.swift
//  13_03_2023_BackDataPassingWay2
//
//  Created by Vishal Jagtap on 21/04/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var empIdTextField: UITextField!
    @IBOutlet weak var empNameTextField: UITextField!
    @IBOutlet weak var empCityTextField: UITextField!
    @IBOutlet weak var empSalaryTextField: UITextField!
    
    var extarctedEmpId : Int?
    var extractedEmpName : String?
    var extarctedEmpCity : String?
    var extractedEmpSalary : Float?
    
    var delegate : BackDataPassing?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        guard let delegateSVC = delegate else{ return
        }
        extarctedEmpId = Int(self.empIdTextField.text!)
        extractedEmpName = self.empNameTextField.text
        extarctedEmpCity   = self.empCityTextField.text
        extractedEmpSalary = Float(self.empSalaryTextField.text!)
        
        delegateSVC.sendDataToFirstViewController(
            empId: extarctedEmpId!,
            empName: extractedEmpName!,
            empCity: extarctedEmpCity!,
            empSalary: extractedEmpSalary!)
        
        navigationController?.popViewController(animated: true)
    }
}
