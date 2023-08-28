//
//  SecondViewController.swift
//  DataPassingThroughProtocolNDelegates
//
//  Created by Sainath Bamen on 19/08/23.
//

import UIKit

protocol moveDataToBack {
    func passData(data:String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var delegate:moveDataToBack!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func goToFirstVC(_ sender: Any) {
        delegate.passData(data: textField.text!)
        navigationController?.popViewController(animated: true)
        
    }
    
    

}

extension ViewController:moveDataToBack{
    func passData(data: String) {
        dataLabel.text = data
    }
    
    
}
