//
//  Cells.swift
//  twitter-clone
//
//  Created by Justin Wyatt on 12/3/18.
//  Copyright © 2018 Justin Wyatt. All rights reserved.
//

import Foundation
import LBTAComponents

class UserFooter: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.green
    }
}

class UserHeader: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.blue
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any?{
        didSet {
//            nameLabel.text = datasourceItem as? String
        }
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.red
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.backgroundColor = UIColor.green
        return label
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "username"
        label.backgroundColor = UIColor.purple
        return label
    }()
    
    let bioTextView: UITextView = {
       let textView = UITextView()
        textView.backgroundColor = UIColor.yellow
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.cyan
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(userNameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        userNameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        bioTextView.anchor(userNameLabel.bottomAnchor, left: userNameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        followButton.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
    }
}
