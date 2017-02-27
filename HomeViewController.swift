//
//  HomeViewController.swift
//  TwitterSimple
//
//  Created by Conny Yang on 27/02/2017.
//  Copyright © 2017 Conny Yang. All rights reserved.
//

import UIKit

private let blogCell = "blogCell"

class BlogCell : UICollectionViewCell{

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let textLabel : UILabel = {
            let label = UILabel()
            label.text = "test"
            return label
        }()
        
        addSubview(textLabel)
        
        backgroundColor = .yellow
        
        // Add constraints for textlabel to stick on bottom, top, left and right
        textLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        textLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        // set translate auto sizing constraints to false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        collectionView?.backgroundColor = .white

        // Register cell classes
        self.collectionView!.register(BlogCell.self, forCellWithReuseIdentifier: blogCell)

        // Do any additional setup after loading the view.
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: blogCell, for: indexPath)
        //cell.backgroundColor = .blue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
