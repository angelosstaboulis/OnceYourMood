//
//  TiredViewController.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 6/2/22.
//

import UIKit

class TiredViewController: UIViewController {

    @IBOutlet var exantlimeni: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView()
        // Do any additional setup after loading the view.
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
extension TiredViewController {
    func initialView(){
        exantlimeni.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(openVideoClip))
        gesture.numberOfTapsRequired = 1
        exantlimeni.addGestureRecognizer(gesture)
    }
    @objc func openVideoClip(){
        UIApplication.shared.open(URL(string:"https://www.youtube.com/watch?v=u-qYMl9T9wQ")!, options: [:], completionHandler: nil)
    }
}
