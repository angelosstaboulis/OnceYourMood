//
//  ViewSite.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/4/22.
//

import UIKit
import WebKit
class ViewSite: UIViewController {
    var magazine:String!
    @IBOutlet var webView: WKWebView!
    func viewMagazineSite(){
        if magazine.contains("OK"){
            webView.load(URLRequest(url: URL(string: "https://okmagazine.com/")!))
        }
        if magazine.contains("Marie Claire"){
            webView.load(URLRequest(url: URL(string: "https://www.marieclaire.com/")!))
        }
        if magazine.contains("Elle"){
            webView.load(URLRequest(url: URL(string: "https://www.elle.com/")!))
        }
        if magazine.contains("Vanity Fair"){
            webView.load(URLRequest(url: URL(string: "https://www.vanityfair.com/")!))
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        viewMagazineSite()
      
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
