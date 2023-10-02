import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var trackNField: UITextField!
    @IBOutlet weak var amountIncrementedField: UITextField!
    @IBOutlet weak var thisManyTimesField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        
        //          tf.delegate = self
        
        super.viewDidLoad()
        
        trackNField.delegate = self
        amountIncrementedField.delegate = self
        thisManyTimesField.delegate = self
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) != nil {
            return true
        } else {
            
            return false
            
        }
    }
    
    func updateUI() {
        
    }
    @IBAction func mainButtonPressed(_ sender: UIButton) {
        if let trackNString = trackNField.text,
           let amountIncrementedString = amountIncrementedField.text,
           let thisManyTimesString = thisManyTimesField.text,
           let trackN = Int(trackNString),
           let amountIncremented = Int(amountIncrementedString),
           let thisManyTimes = Int(thisManyTimesString) {
            
            
            let tally = Tally(trackN)
            
            tally.repetedlyIncrement(amountIncremented, thisManyTimes)
            
            let tallyString = String(tally.number)
            trackNField.text = tallyString
            
        }
    }
    
}
