

import UIKit

class PlayVC: UIViewController {
let defaults = UserDefaults()
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but1: UIButton!
    
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var but3: UIButton!
    
    @IBOutlet weak var but9: UIButton!
    @IBOutlet weak var but8: UIButton!
    @IBOutlet weak var but7: UIButton!
    @IBOutlet weak var but6: UIButton!
    @IBOutlet weak var but5: UIButton!
    @IBOutlet weak var but4: UIButton!
    
    var timer : Timer?
    var timer2 : Timer?
    var score = 0
    var highScore = 0
    var timeLeft = 30
  
  
 var  timeInt = 1.0
  
  
   
    
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        let key = defaults.integer(forKey: "key")
        
        if key == 1
        {
            timeInt = 1.0
            let highscore = defaults.integer(forKey: "hs")
            highScore = highscore
            highScoreLabel.text = "High score: \(highscore)"

            
        }
        if key == 2
               {
                timeInt = 0.5
                let highscore1 = defaults.integer(forKey: "hs1")
                           highScore = highscore1
                           highScoreLabel.text = "High score: \(highscore1)"
               }
        if key == 3
               {
                timeInt = 0.2
                let highscore2 = defaults.integer(forKey: "hs2")
                           highScore = highscore2
                           highScoreLabel.text = "High score: \(highscore2)"
               }
     
        
       
        fire()
        
      
       
      
    
        
    }
    @objc func fire() {
    timer = Timer.scheduledTimer(timeInterval: timeInt, target: self, selector: #selector(Change), userInfo: nil, repeats: true)
           
           timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(time), userInfo: nil, repeats: true)
    }
    
   
    
    @objc func time()
    {
        timeLeft -= 1
        timeLabel.text = "Time left: \(timeLeft)"
        
        
        if timeLeft == 0
        {
            defaults.set(score, forKey: "score")
            
            timer?.invalidate()
            timer2?.invalidate()
            performSegue(withIdentifier: "ToScoreVC", sender: self)
            
            
        }
    }
    
    
    @objc func Change()
    {
        let number = Int.random(in: 1 ... 9)
        
        if but1.tag == number
        {
            but1.isHidden = false
            but2.isHidden = true
            but3.isHidden = true
            but4.isHidden = true
            but5.isHidden = true
            but6.isHidden = true
            but7.isHidden = true
            but8.isHidden = true
            but9.isHidden = true
            
   


        }
        if but2.tag == number
         {
             but2.isHidden = false
            but1.isHidden = true
            but3.isHidden = true
            but4.isHidden = true
            but5.isHidden = true
            but6.isHidden = true
            but7.isHidden = true
            but8.isHidden = true
            but9.isHidden = true
    
         }
        if but3.tag == number
         {
             but3.isHidden = false
            but2.isHidden = true
            but1.isHidden = true
            but4.isHidden = true
            but5.isHidden = true
            but6.isHidden = true
            but7.isHidden = true
            but8.isHidden = true
            but9.isHidden = true
            
       
         }
        if but4.tag == number
         {
             but4.isHidden = false
            but2.isHidden = true
            but3.isHidden = true
            but1.isHidden = true
            but5.isHidden = true
            but6.isHidden = true
            but7.isHidden = true
            but8.isHidden = true
            but9.isHidden = true
            
 
         }
        if but5.tag == number
         {
             but5.isHidden = false
            but2.isHidden = true
            but3.isHidden = true
            but4.isHidden = true
            but1.isHidden = true
            but6.isHidden = true
            but7.isHidden = true
            but8.isHidden = true
            but9.isHidden = true
     
            
         }
        if but6.tag == number
         {
             but6.isHidden = false
            but2.isHidden = true
            but3.isHidden = true
            but4.isHidden = true
            but5.isHidden = true
            but1.isHidden = true
            but7.isHidden = true
            but8.isHidden = true
            but9.isHidden = true
        
            
         }
        if but7.tag == number
         {
             but7.isHidden = false
            but2.isHidden = true
            but3.isHidden = true
            but4.isHidden = true
            but5.isHidden = true
            but6.isHidden = true
            but1.isHidden = true
            but8.isHidden = true
            but9.isHidden = true
            
           
         }
        if but8.tag == number
         {
             but8.isHidden = false
            but2.isHidden = true
            but3.isHidden = true
            but4.isHidden = true
            but5.isHidden = true
            but6.isHidden = true
            but7.isHidden = true
            but1.isHidden = true
            but9.isHidden = true
     
            
         }
        if but9.tag == number
         {
             but9.isHidden = false
            but2.isHidden = true
            but3.isHidden = true
            but4.isHidden = true
            but5.isHidden = true
            but6.isHidden = true
            but7.isHidden = true
            but8.isHidden = true
            but1.isHidden = true
            
        
         }
    }
    
    @IBAction func buttonClicked1(_ sender: Any) {
        score += 1
        if score > highScore
        {
            highScore = score
            let key = defaults.integer(forKey: "key")
                
                if key == 1
                {
                     defaults.set(highScore, forKey: "hs")
                }
                if key == 2
                       {
                        defaults.set(highScore, forKey: "hs1")

                       }
                if key == 3
                       {
                       defaults.set(highScore, forKey: "hs2")

                       }
            
        }
        
        scoreLabel.text = "Score: \(score)"
        highScoreLabel.text = "High score: \(highScore)"
       
    }
    
    @IBAction func buttonClicked2(_ sender: Any) {
        
        score += 1

        
        if score > highScore
               {
                   highScore = score
               let key = defaults.integer(forKey: "key")
                              
                              if key == 1
                              {
                                   defaults.set(highScore, forKey: "hs")
                              }
                              if key == 2
                                     {
                                      defaults.set(highScore, forKey: "hs1")

                                     }
                              if key == 3
                                     {
                                     defaults.set(highScore, forKey: "hs2")

                                     }
               }
               
               scoreLabel.text = "Score: \(score)"
         highScoreLabel.text = "High score: \(highScore)"
              
       
        
        
        

    }
    
    @IBAction func buttonClicked3(_ sender: Any) {
        
        score += 1
        if score > highScore
               {
                   highScore = score
               let key = defaults.integer(forKey: "key")
                              
                              if key == 1
                              {
                                   defaults.set(highScore, forKey: "hs")
                              }
                              if key == 2
                                     {
                                      defaults.set(highScore, forKey: "hs1")

                                     }
                              if key == 3
                                     {
                                     defaults.set(highScore, forKey: "hs2")

                                     }

               }
               
               scoreLabel.text = "Score: \(score)"
             
      
         highScoreLabel.text = "High score: \(highScore)"
        
        
        
    }
    @IBAction func buttonClicked4(_ sender: Any) {
        
        score += 1

          
        if score > highScore
               {
                   highScore = score
               let key = defaults.integer(forKey: "key")
                              
                              if key == 1
                              {
                                   defaults.set(highScore, forKey: "hs")
                              }
                              if key == 2
                                     {
                                      defaults.set(highScore, forKey: "hs1")

                                     }
                              if key == 3
                                     {
                                     defaults.set(highScore, forKey: "hs2")

                                     }

               }
               
               scoreLabel.text = "Score: \(score)"
             
         highScoreLabel.text = "High score: \(highScore)"
        
        
    }
    
    @IBAction func buttonClicked5(_ sender: Any) {
        
        score += 1

          
        if score > highScore
               {
                   highScore = score
               let key = defaults.integer(forKey: "key")
                              
                              if key == 1
                              {
                                   defaults.set(highScore, forKey: "hs")
                              }
                              if key == 2
                                     {
                                      defaults.set(highScore, forKey: "hs1")

                                     }
                              if key == 3
                                     {
                                     defaults.set(highScore, forKey: "hs2")

                                     }

               }
               
               scoreLabel.text = "Score: \(score)"
              
         highScoreLabel.text = "High score: \(highScore)"
        
        
    }
    @IBAction func buttonClicked6(_ sender: Any) {
        
        score += 1

             
        
        if score > highScore
               {
                   highScore = score
         let key = defaults.integer(forKey: "key")
                        
                        if key == 1
                        {
                             defaults.set(highScore, forKey: "hs")
                        }
                        if key == 2
                               {
                                defaults.set(highScore, forKey: "hs1")

                               }
                        if key == 3
                               {
                               defaults.set(highScore, forKey: "hs2")

                               }

               }
               
               scoreLabel.text = "Score: \(score)"
              
        
         highScoreLabel.text = "High score: \(highScore)"
    
        
        
    }
        
    @IBAction func buttonClicked7(_ sender: Any) {
        
        
        score += 1
      
        
        if score > highScore
               {
                   highScore = score
              let key = defaults.integer(forKey: "key")
                             
                             if key == 1
                             {
                                  defaults.set(highScore, forKey: "hs")
                             }
                             if key == 2
                                    {
                                     defaults.set(highScore, forKey: "hs1")

                                    }
                             if key == 3
                                    {
                                    defaults.set(highScore, forKey: "hs2")

                                    }

               }
               
               scoreLabel.text = "Score: \(score)"
               
         highScoreLabel.text = "High score: \(highScore)"
        
    }
    @IBAction func buttonClicked8(_ sender: Any) {
        
        
        score += 1
       
        
        
        if score > highScore
               {
                   highScore = score
          let key = defaults.integer(forKey: "key")
                         
                         if key == 1
                         {
                              defaults.set(highScore, forKey: "hs")
                         }
                         if key == 2
                                {
                                 defaults.set(highScore, forKey: "hs1")

                                }
                         if key == 3
                                {
                                defaults.set(highScore, forKey: "hs2")

                                }

               }
               
               scoreLabel.text = "Score: \(score)"
               highScoreLabel.text = "High score: \(highScore)"
        
    }
    @IBAction func buttonClicked9(_ sender: Any) {
        
        
        score += 1
       
        
        if score > highScore
               {
                   highScore = score
             let key = defaults.integer(forKey: "key")
                            
                            if key == 1
                            {
                                 defaults.set(highScore, forKey: "hs")
                            }
                            if key == 2
                                   {
                                    defaults.set(highScore, forKey: "hs1")

                                   }
                            if key == 3
                                   {
                                   defaults.set(highScore, forKey: "hs2")

                                   }

               }
               
               scoreLabel.text = "Score: \(score)"
               
         highScoreLabel.text = "High score: \(highScore)"
        
    }
    
}
