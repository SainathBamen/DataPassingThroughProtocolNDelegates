//
//  ViewController.swift
//  DataPassingThroughProtocolNDelegates
//
//  Created by Sainath Bamen on 19/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goToSecondVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
}

