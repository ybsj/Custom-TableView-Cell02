//
//  DetailViewController.swift
//  Custom TableView Cell
//
//  Created by D7703_17 on 2018. 5. 28..
//  Copyright © 2018년 황지성. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


      @IBOutlet weak var ImgView: UIImageView!
      var cellImage : String = ""
      
      @IBOutlet weak var loca: UILabel!
      var location = ""
      
      @IBOutlet weak var Tel: UILabel!
      var Tell = ""
      override func viewDidLoad() {
        super.viewDidLoad()
            ImgView.image = UIImage(named : cellImage)
            loca.text = location
            Tel.text = Tell

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
