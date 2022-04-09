//
//  MagazinesViewController.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/4/22.
//

import UIKit

class MagazinesViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let magazines = ["OK","Marie Claire","Elle","Vanity Fair"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magazines.count
    }
    func viewMagazineSite(magazine:String){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewSite:ViewSite = storyboard.instantiateViewController(withIdentifier: "ViewSite") as! ViewSite
        viewSite.magazine = magazine
        viewSite.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(viewSite, animated: true)
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        viewMagazineSite(magazine: magazines[indexPath.row])
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row < magazines.count {
            cell.textLabel?.text = magazines[indexPath.row]
        }
        return cell
    }
    
    @IBOutlet var magazinesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initialTableView()
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
extension MagazinesViewController{
    func initialTableView(){
        magazinesTableView.delegate = self
        magazinesTableView.dataSource = self
        self.navigationItem.title = "Γυναικεία Περιοδικά"
        
    }
}
