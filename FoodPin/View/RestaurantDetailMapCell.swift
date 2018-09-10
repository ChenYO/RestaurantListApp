//
//  RestaurantDetailMapCell.swift
//  FoodPin
//
//  Created by 陳仲堯 on 2018/9/10.
//  Copyright © 2018年 AppCoda. All rights reserved.
//

import UIKit
import MapKit

class RestaurantDetailMapCell: UITableViewCell {

    @IBOutlet weak var mapView: MKMapView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(location: String) {
        
        let geoCoder = CLGeocoder()
        
        print(location)
        
        geoCoder.geocodeAddressString(location, completionHandler: { (placemarks, error) in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let placemarks = placemarks {
                //取得第一個地圖標記
                let placemark = placemarks[0]
                
                //加上標記
                let annotation = MKPointAnnotation()
                
                if let location = placemark.location {
                    //顯示標記
                    annotation.coordinate = location.coordinate
                    self.mapView.addAnnotation(annotation)
                    
                    //設定縮放程度
                    let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
                    self.mapView.setRegion(region, animated: false)
                }
            }
        })
    }

}
