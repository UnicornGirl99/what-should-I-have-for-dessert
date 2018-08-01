//
//  recommendtionviewcontroller.swift
//  What Should I Have For Dessert
//
//  Created by Dara Reisner on 7/25/18.
//  Copyright © 2018 Dara Reisner. All rights reserved.
//

import UIKit
import Foundation

    
    

    
class recommendtionviewcontroller: UIViewController {

    @IBOutlet weak var Recommendationlabel: UILabel!
    @IBOutlet weak var recommendatoinimage: UIImageView!
    @IBAction func newrecommendation(_ sender: Any) { getRecommendation()
    }
    
    var currentPosition = 0
    
    func getRecommendation()  {
        let length = desserts.count
        currentPosition = Int(arc4random_uniform(UInt32(length)))
    Recommendationlabel.text = desserts [currentPosition]
    
    recommendatoinimage.image = UIImage(named: dessertsimages[currentPosition])
        
    }
    
    
    var desserts: [String] = ["Apple Pie", "Cheesecake", "Chocolate Cake", "Ice cream","cobbler","Frozen Yogurt","Cookies","Funnel Cake", "Dounuts"]
    
      var dessertsimages: [String] = ["apple pie", "Cheesecake", "Chocolate Cake", "Ice cream","cobbler","Frozen Yogurt","Cookies","Funnel Cake", "Dounuts"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
