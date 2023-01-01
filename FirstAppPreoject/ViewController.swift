//
//  ViewController.swift
//  FirstAppPreoject
//
//  Created by Manuel Reyes on 12/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameText: UITextField!
    
    @IBOutlet weak var LastNameText: UITextField!
    
    @IBOutlet weak var SchoolText: UITextField!
    
    @IBOutlet weak var YearSegementedControl: UISegmentedControl!
    
    @IBOutlet weak var NumberOfPetsLabel: UILabel!
    
    @IBOutlet weak var MorePetsStepper: UIStepper!
    
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    @IBOutlet weak var Majortext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func PetStep(_ sender: UIStepper) {
        NumberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func IntroSelf(_ sender: UIButton) {
        let year = YearSegementedControl.titleForSegment(at: YearSegementedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstNameText.text!) \(LastNameText.text!) and I attend \(SchoolText.text!) and I major in \(Majortext.text!). It is \(MorePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
}

