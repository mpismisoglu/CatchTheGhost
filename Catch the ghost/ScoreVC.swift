
import UIKit
import GoogleMobileAds
class ScoreVC: UIViewController {

    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var score: UILabel!
    let defaults = UserDefaults()
    var interstitial: GADInterstitial!
    override func viewDidLoad() {
        super.viewDidLoad()
interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
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
       
        if interstitial.isReady {
            
          interstitial.present(fromRootViewController: self)
        
            
        }
     
            performSegue(withIdentifier: "FromScoreVC", sender: self)

      
        
       
    }
    
}
