
import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults()
    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
   
       
    }


    @IBAction func play(_ sender: Any) {
        
        performSegue(withIdentifier: "ikinciAdım", sender: self)
    }
    @IBAction func rules(_ sender: Any) {
        
        performSegue(withIdentifier: "ToRulesVC", sender: self)
        
    }
}

