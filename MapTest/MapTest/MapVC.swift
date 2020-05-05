//
//  MapVC.swift
//  MapTest
//
//  Created by 조윤영 on 05/05/2020.
//  Copyright © 2020 조윤영. All rights reserved.
//

import UIKit
import NMapsMap

class MapVC: UIViewController {

    @IBOutlet weak var naverMapView: NMFNaverMapView!
    
    var mapView: NMFMapView {
        return naverMapView.mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMapOptions()
        mapView.touchDelegate = self
        


    }
    
    func setMapOptions() {
        
        mapView.positionMode = .direction
        naverMapView.showScaleBar = true
        naverMapView.showZoomControls = true
        naverMapView.showLocationButton = true
        naverMapView.showIndoorLevelPicker = true

        
        let sdkBundle = Bundle.naverMapFramework()
        
        let marker2 = NMFMarker(position: NMGLatLng(lat: 37.56361, lng: 126.97439))
        marker2.captionText = "이벤트 전파"
        marker2.touchHandler = { (overlay) in
            if let marker = overlay as? NMFMarker {
                if marker.iconImage.reuseIdentifier == "\(sdkBundle.bundleIdentifier ?? "").mSNormal" {
                    marker.iconImage = NMFOverlayImage(name: "mSNormalNight", in: Bundle.naverMapFramework())
                } else {
                    marker.iconImage = NMFOverlayImage(name: "mSNormal", in: Bundle.naverMapFramework())
                }
            }
            return false
        }
        marker2.mapView = mapView
            
        let marker3 = NMFMarker(position: NMGLatLng(lat: 37.56671, lng: 126.98260))
        marker3.captionText = "이벤트 리스너 없음"
        marker3.mapView = mapView
    }
        
    
}

extension MapVC: NMFMapViewTouchDelegate {

    func mapView(_ mapView: NMFMapView, didTapMap latlng: NMGLatLng, point: CGPoint) {
        let alertController = UIAlertController(title: "지도 클릭", message: latlng.positionString(), preferredStyle: .alert)
        present(alertController, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: (DispatchTime.now() + 0.5), execute: {
                alertController.dismiss(animated: true, completion: nil)
            })
        }
    }
    
    func mapView(_ mapView: NMFMapView, didTap symbol: NMFSymbol) -> Bool {
        let alertController = UIAlertController(title: symbol.caption, message: symbol.position.positionString(), preferredStyle: .alert)
        present(alertController, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: (DispatchTime.now() + 0.5), execute: {
                alertController.dismiss(animated: true, completion: nil)
            })
        }
        
        return true
    }
}

extension NMGLatLng {
    func positionString() -> String {
        return String(format: "(%.5f, %.5f)", lat, lng)
    }
}

