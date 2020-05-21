//
//  ViewController.swift
//  MVC
//
//  Created by Alex Tregubov on 21.05.2020.
//  Copyright © 2020 Alex Tregubov. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {

    var comments = [Comment]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CommentNetworkService.getComments { (response) in
            self.comments = response.comments
            self.tableView.reloadData()
        }
    }

}

extension CommentsViewController: UITableViewDelegate {
    
}

extension CommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CommentCell
        let comment = comments[indexPath.row]
        cell.configure(with: comment)
        
        return cell
    }
    
}
