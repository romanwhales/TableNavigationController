//
//  DetailViewController.swift
//  TableViewNavControllers
//
//  Created by Wale on 17/01/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var titleItem: UILabel!
    
    @IBOutlet weak var nutritionItem: UITextView!
    var selected: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if selected != nil{
            let item = appData.items[selected]
            if let data = appData.details[item]{
                titleItem.text = item
                imageItem.image = UIImage(named: data[0])
                nutritionItem.text = data[1]
            }
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
