//
//  BackDataPassingProtocol.swift
//  13_03_2023_BackDataPassingWay2
//
//  Created by Vishal Jagtap on 21/04/23.
//

import Foundation
protocol BackDataPassing{
    func sendDataToFirstViewController(
        empId : Int,
        empName : String,
        empCity : String,
        empSalary : Float)
}
