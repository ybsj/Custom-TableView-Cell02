//
//  TotaltMapViewController.swift
//  Custom TableView Cell
//
//  Created by D7703_02 on 2018. 6. 11..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit
import MapKit

class TotaltMapViewController: UIViewController {

    @IBOutlet weak var totaltMapView: MKMapView!
    //주소받는곳
    var loctions = [String]()
    var names = [String]()
    var count = 0
    //핀 저장 배열
    var annotations = [MKPointAnnotation]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(loctions)
        //geoocoding
        viewMap(loction: loctions, names: names)
        
        
        
    
    }

    func viewMap(loction: [String], names: [String]) {
        for addr in loctions {
            let geoCoder = CLGeocoder()
            geoCoder.geocodeAddressString(addr , completionHandler: {
                (placemarks: [CLPlacemark]?, error: Error?) -> Void in
                if let error = error {
                    print(error)
                    return
                }
                if placemarks != nil {
                    let placemark = placemarks![0]
                    print(placemarks![0])
                    
                    // pin point 을 저장
                    let annotation = MKPointAnnotation()
                    if let location = placemark.location {
                        // Add annotation
                        annotation.title = names[self.count]
                        annotation.subtitle = addr
                        self.count = self.count + 1
                        annotation.coordinate = location.coordinate
                        self.annotations.append(annotation)
                        self.totaltMapView.addAnnotations(self.annotations)
                    }
                }
                self.totaltMapView.showAnnotations(self.annotations, animated: true)
            })
        }
        
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
