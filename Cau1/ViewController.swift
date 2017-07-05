//
//  ViewController.swift
//  Cau1
//
//  Created by Cntt12 on 7/5/17.
//  Copyright © 2017 cntt12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            queuesCau1()
        
    }

    func queuesCau1(){
        let queue1 = DispatchQueue(label:"queue1", qos: DispatchQoS.userInitiated)
        let queue2 = DispatchQueue(label:"queue2", qos: DispatchQoS.userInitiated)
        let queue3 = DispatchQueue(label:"queue3", qos: DispatchQoS.userInitiated)
        
        queue1.async {
            for i in 0..<10{
                print("🔴",i)
            }
        }
        
        queue2.async {
            for i in 100..<110{
                print("🔵",i)
            }
        }
        
        queue3.async {
            for i in 1000..<1010{
                print("⚫️",i)
            }
        }
        
    }
}

