//
//  ViewController.swift
//  AccessibilityiOS
//
//  Created by Larissa on 2018-12-03.
//  Copyright © 2018 Larissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FoodTableViewCell
        
        cell.photoImageView.accessibilityLabel = "Food image"
        
        cell.titleLabel.text = "What is Lorem Ipsum? "
        cell.titleLabel.font = UIFont.preferredFont(forTextStyle: .body)
        cell.titleLabel.adjustsFontForContentSizeCategory = true
        
        cell.subtitleLabel.text =  "\(indexPath.row + 1)"
        cell.subtitleLabel.font = UIFont.preferredFont(forTextStyle: .body)
        cell.subtitleLabel.adjustsFontForContentSizeCategory = true

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailFoodSegue", sender: indexPath)
    }
}

