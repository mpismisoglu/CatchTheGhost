
import UIKit
let defaults = UserDefaults()
class DifficultyVC: UIViewController {
    var dfc = 0
    override func viewDidLoad() {
        super.viewDidLoad()
      

    }
   
    @objc func change()
    {
         dfc += 1
        defaults.set(dfc, forKey: "key")
    }

 
    @IBAction func easy(_ sender: Any) {
   change()
        
        performSegue(withIdentifier: "ToPlayVC", sender: self)
        
        
    }
    
    @IBAction func medium(_ sender: Any) {
       change()
        change()
        performSegue(withIdentifier: "ToPlayVC", sender: self)
    }
    @IBAction func hard(_ sender: Any) {
      change()
        change()
        change()
        performSegue(withIdentifier: "ToPlayVC", sender: self)
    }
}
