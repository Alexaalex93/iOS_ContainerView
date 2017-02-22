//
//  ViewController.swift
//  ContainerApp
//
//  Created by cice on 22/2/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerViewA: UIView!
    @IBOutlet weak var containerViewB: UIView!
    @IBOutlet weak var mySegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.containerViewA.alpha = 1
        self.containerViewB.alpha = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func segmentChanged(_ sender: AnyObject) {
        if mySegment.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 1, animations: {
                self.containerViewA.alpha = 1
                self.containerViewB.alpha = 0
            })
        } else {
            UIView.animate(withDuration: 1, animations: {
                self.containerViewA.alpha = 0
                self.containerViewB.alpha = 1
        
            })
        }
    }
    
    


}

