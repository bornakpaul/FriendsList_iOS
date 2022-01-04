//
//  ViewController.swift
//  FriendsList
//
//  Created by Bornak Paul on 04/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var friendView: UITableView!
    
    let friends = [ "ava", "bornak", "sasha", "harsh", "andrew", "alfred" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        friendView.delegate = self
        friendView.dataSource = self
        friendView.allowsSelection = false
        //friendView.separatorStyle = .none
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = friendView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let friend = friends[indexPath.row]
        cell.avatarImg.image = UIImage(named: friend)
        cell.nameLbl.text = friend
        
        return cell
    }
}
    

