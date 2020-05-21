//
//  CommentCell.swift
//  MVC
//
//  Created by Alex Tregubov on 21.05.2020.
//  Copyright © 2020 Alex Tregubov. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
