//
//  MainTabarController.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 5/2/22.
//

import UIKit

class MainTabarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        initalView()
        // Do any additional setup after loading the view.
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if tabBar.selectedItem?.title?.contains("Περιοδικά") == true{
            tabBar.backgroundColor = UIColor.init(red: 227/255, green: 227/255, blue: 224/255, alpha: 1)
        }
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
extension MainTabarController {
    func initalView(){
        tabBar.backgroundColor = UIColor.init(red: 227/255, green: 227/255, blue: 224/255, alpha: 1)
     
    }
}
