
import UIKit
import GoogleMobileAds
class ScoreVC: UIViewController {

    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var score: UILabel!
    let defaults = UserDefaults()
    @IBOutlet weak var level: UILabel!
    var interstitial: GADInterstitial!
    override func viewDidLoad() {
        super.viewDidLoad()
interstitial = GADInterstitial(adUnitID: "ca-app-pub-3407628874905272/8601520617") 
        let request = GADRequest()
        interstitial.load(request)
        
        let hs = defaults.integer(forKey: "hs")
        let hs1 = defaults.integer(forKey: "hs1")

        let hs2 = defaults.integer(forKey: "hs2")

        
        let currentScore = defaults.integer(forKey: "score")
        
        
        let key = defaults.integer(forKey: "key")
            
            if key == 1
            {
                highScore.text = "High score: \(hs)"
                level.text = "Easy"
            }
            if key == 2
                   {
                    highScore.text = "High score: \(hs1)"
                    level.text = "Medium"

                   }
            if key == 3
                   {
                    highScore.text = "High score: \(hs2)"
                    level.text = "Hard"

                   }
        
        score.text = "Score: \(currentScore)"
       
    
    }
    

    @IBAction func playAgain(_ sender: Any) {
       
        if interstitial.isReady {
            
          interstitial.present(fromRootViewController: self)
        
            
        }
     
            performSegue(withIdentifier: "FromScoreVC", sender: self)

      
        
       
    }
    
}
