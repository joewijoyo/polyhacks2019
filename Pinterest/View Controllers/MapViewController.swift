//
//  MapViewController.swift
//  Pinterest
//
//  Created by shelby chen on 1/19/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var mapView: MKMapView!
  
    override func viewDidLoad() {
      
      super.viewDidLoad()
      mapView.delegate = self
      

      let slo = CLLocationCoordinate2D(latitude: 35.2828, longitude: -120.6596)
      
      let span = MKCoordinateSpanMake(0.02, 0.02)
      let region = MKCoordinateRegion(center: slo, span: span)
      mapView.setRegion(region, animated: true)
      
      let locations = [
        ["title": "Viva la Vulva", "latitude": 35.2795, "longitude": -120.6642],
        ["title": "Pussy Power", "latitude": 35.2793, "longitude": -120.6626],
        ["title": "Viva la Vulva",     "latitude": 35.2791, "longitude": -120.6638],
        ["title": "Pussy Power",     "latitude": 35.2819, "longitude": -120.6605],
        ]
      
      for location in locations {
        let annotation = MKPointAnnotation()
        annotation.title = location["title"] as? String
        annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! Double, longitude: location["longitude"] as! Double)
        
        let annotationView = MKPinAnnotationView(annotation:annotation, reuseIdentifier:location["title"] as! String)
        annotationView.isEnabled = true
        annotationView.canShowCallout = true
        let btn = UIButton(type: .detailDisclosure)
        annotationView.rightCalloutAccessoryView = btn
        mapView.addAnnotation(annotation)
        mapView.selectAnnotation(annotation, animated: true)
      }

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
