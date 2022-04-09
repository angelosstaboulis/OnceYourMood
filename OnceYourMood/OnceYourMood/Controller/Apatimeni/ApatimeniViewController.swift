//
//  ApatimeniViewController.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 5/2/22.
//

import UIKit

class ApatimeniViewController: UIViewController {
    var opacity:Float!=1
    var convertOpacity:String!="0.0"
    @IBOutlet var heart: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        startAnimating()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
extension ApatimeniViewController {
    func decreaseOpacity(){
        self.heart.layer.opacity = self.opacity
        self.opacity = self.opacity - 0.1
    }
    func startAnimating(){
        Timer.scheduledTimer(withTimeInterval:1, repeats: true) { [self] timer in
            if self.convertOpacity.contains("-0.10")  {
                
                self.opacity = 1
                
            }
            else{
                self.decreaseOpacity()
            }
            convertOpacity = String(format:"%.2f", self.opacity)
            
        }
    }
}
