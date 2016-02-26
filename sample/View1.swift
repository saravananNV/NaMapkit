//
//  View1.swift
//  sample
//
//  Created by Saran on 09/02/16.
//  Copyright © 2016 neemtec. All rights reserved.
//

import UIKit
import NAMapKit

class View1: UIViewController{

    var bgImage: UIImageView?
    var dot : NADotAnnotation = NADotAnnotation()
    var mapView : NAMapView = NAMapView()
    
    @IBOutlet var floorMapImage: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewDidLoad() {
       
        mapView = NAMapView(frame: self.view.bounds)
        mapView.backgroundColor = UIColor.whiteColor()
        mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        mapView.minimumZoomScale = 0.5
        mapView.maximumZoomScale = 1.5
        mapView.displayMap(UIImage(named: "floor_map"))
        let melbourne: NAPinAnnotation = NAPinAnnotation.annotationWithPoint(CGPoint(x: 543.0, y: 495.0)) as! NAPinAnnotation
        melbourne.color = NAPinColorPurple
        melbourne.title = "Melbourne"
        melbourne.subtitle = "I have a subtitle"
        melbourne.point = CGPoint(x: 543.0, y: 450.0)
        //melbourne.createViewOnMapView(mapView)
        mapView.addAnnotation(melbourne, animated: true)
        self.view!.addSubview(mapView)
   
        
        
        
        ///pinview.annotation = melbourne
//        dot =  NADotAnnotation.annotationWithPoint(CGPoint(x: 547.0, y: 460.0)) as! NADotAnnotation
//        mapView.addAnnotation(dot, animated: true)
        //updatePositonAutomatically()
        
    }
    
    

}
