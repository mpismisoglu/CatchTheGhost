
import UIKit

class ScoreVC: UIViewController {

    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var score: UILabel!
    let defaults = UserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()

        let hs = defaults.integer(forKey: "hs")
        let hs1 = defaults.integer(forKey: "hs1")

        let hs2 = defaults.integer(forKey: "hs2")

        
        let currentScore = defaults.integer(forKey: "score")
        
        
        let key = defaults.integer(forKey: "key")
            
            if key == 1
            {
                highScore.text = "High score: \(hs)"
            }
            if key == 2
                   {
                    highScore.text = "High score: \(hs1)"
                   }
            if key == 3
                   {
                    highScore.text = "High score: \(hs2)"
                   }
        
        score.text = "Score: \(currentScore)"
       
    
    }
    

    @IBAction func playAgain(_ sender: Any) {
        
        performSegue(withIdentifier: "FromScoreVC", sender: self)
    }
    
}
