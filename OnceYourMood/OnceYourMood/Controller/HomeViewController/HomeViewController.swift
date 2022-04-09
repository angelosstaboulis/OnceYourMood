//
//  HomeViewController.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 5/2/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var fonto: UIImageView!
    var y:CGFloat!=30.0
    var images:[UIImage] = []
    var imageViewArray:[UIImageView] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    
      
        
    }
    override func viewWillAppear(_ animated: Bool) {
        Timer.scheduledTimer(withTimeInterval:3, repeats: true) { [self] timer in
            if self.y > 800 {
                self.y = 0
                self.randomHearts()
               
            }
            else{
                self.randomHearts()
            }
        }

       
        
    }
    
    
    // Do any additional setup after loading the view.
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
extension HomeViewController {
    func initialView(){
        fonto.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(openVideoClip))
        gesture.numberOfTapsRequired = 1
        fonto.addGestureRecognizer(gesture)
    }
    func randomHearts(){
        for item in 0..<30 {
            self.images.append(UIImage(named: "heart")!)
            self.imageViewArray.append(UIImageView(image:self.images[item]))
            self.imageViewArray[item].frame = CGRect(x: Int.random(in: 0...450), y: Int.random(in: 0...450), width: 50, height: 45)
            self.view.addSubview(self.imageViewArray[item])
        }
        for item in 0..<30 {
            self.imageViewArray[item].frame.origin.y =  self.imageViewArray[item].frame.origin.y  + self.y
            self.y =  self.y + 5.0
        }
    }
   
    @objc func openVideoClip(){
        UIApplication.shared.open(URL(string:"https://youtu.be/CGyEd0aKWZE")!, options: [:], completionHandler: nil)
    }
}
