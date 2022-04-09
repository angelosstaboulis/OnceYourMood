//
//  UngryViewController.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 6/2/22.
//

import UIKit

class UngryViewController: UIViewController {
    var opacity:Float!=0.0
    var convertOpacity:String!="0.0"
    @IBOutlet var ungry: UIImageView!
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
extension UngryViewController {
    func increaseOpacity(){
        self.ungry.layer.opacity = self.opacity
        self.opacity = self.opacity + 0.1
      
    }
    func startAnimating(){
        Timer.scheduledTimer(withTimeInterval:1, repeats: true) { [self] timer in
            if self.convertOpacity.contains("1.00") {
                self.opacity = 0.0
                increaseOpacity()
            }
            else{
                increaseOpacity()
            }
            convertOpacity = String(format:"%.2f", self.opacity)
        }
    }
}
