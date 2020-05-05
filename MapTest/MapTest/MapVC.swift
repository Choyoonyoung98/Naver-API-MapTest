//
//  MapVC.swift
//  MapTest
//
//  Created by 조윤영 on 05/05/2020.
//  Copyright © 2020 조윤영. All rights reserved.
//

import UIKit
import NMapsMap

public let primaryColor = UIColor(red: 25.0/255.0, green: 192.0/255.0, blue: 46.0/255.0, alpha: 1)

class MapVC: UIViewController {

    @IBOutlet weak var naverMapView: NMFNaverMapView!
    
    //위치 더미 데이터
    let pathString = NMGLineString(points: [
        NMGLatLng(lat: 37.5594084, lng: 126.9745830),
        NMGLatLng(lat: 37.5599980, lng: 126.9748245),
        NMGLatLng(lat: 37.5601083, lng: 126.9748951),
        NMGLatLng(lat: 37.5601980, lng: 126.9749873),
        NMGLatLng(lat: 37.5601998, lng: 126.9749896),
        NMGLatLng(lat: 37.5602478, lng: 126.9750492),
        NMGLatLng(lat: 37.5603158, lng: 126.9751371),
        NMGLatLng(lat: 37.5604241, lng: 126.9753616),
        NMGLatLng(lat: 37.5604853, lng: 126.9755401),
        NMGLatLng(lat: 37.5605225, lng: 126.9756157),
        NMGLatLng(lat: 37.5605353, lng: 126.9756405),
        NMGLatLng(lat: 37.5605652, lng: 126.9756924),
        NMGLatLng(lat: 37.5606143, lng: 126.9757679),
        NMGLatLng(lat: 37.5606903, lng: 126.9758432),
        NMGLatLng(lat: 37.5608510, lng: 126.9758919),
        NMGLatLng(lat: 37.5611353, lng: 126.9759964),
        NMGLatLng(lat: 37.5611949, lng: 126.9760186),
        NMGLatLng(lat: 37.5612383, lng: 126.9760364),
        NMGLatLng(lat: 37.5615796, lng: 126.9761721),
        NMGLatLng(lat: 37.5619326, lng: 126.9763123),
        NMGLatLng(lat: 37.5621502, lng: 126.9763991),
        NMGLatLng(lat: 37.5622776, lng: 126.9764492),
        NMGLatLng(lat: 37.5624374, lng: 126.9765137),
        NMGLatLng(lat: 37.5630911, lng: 126.9767753),
        NMGLatLng(lat: 37.5631345, lng: 126.9767931),
        NMGLatLng(lat: 37.5635163, lng: 126.9769240),
        NMGLatLng(lat: 37.5635506, lng: 126.9769351),
        NMGLatLng(lat: 37.5638061, lng: 126.9770239),
        NMGLatLng(lat: 37.5639153, lng: 126.9770605),
        NMGLatLng(lat: 37.5639577, lng: 126.9770749),
        NMGLatLng(lat: 37.5640074, lng: 126.9770927),
        NMGLatLng(lat: 37.5644783, lng: 126.9771755),
        NMGLatLng(lat: 37.5649229, lng: 126.9772482),
        NMGLatLng(lat: 37.5650330, lng: 126.9772667),
        NMGLatLng(lat: 37.5652152, lng: 126.9772971),
        NMGLatLng(lat: 37.5654569, lng: 126.9773170),
        NMGLatLng(lat: 37.5655173, lng: 126.9773222),
        NMGLatLng(lat: 37.5656534, lng: 126.9773258),
        NMGLatLng(lat: 37.5660418, lng: 126.9773004),
        NMGLatLng(lat: 37.5661985, lng: 126.9772914),
        NMGLatLng(lat: 37.5664663, lng: 126.9772952),
        NMGLatLng(lat: 37.5668827, lng: 126.9773047),
        NMGLatLng(lat: 37.5669467, lng: 126.9773054),
        NMGLatLng(lat: 37.5670567, lng: 126.9773080),
        NMGLatLng(lat: 37.5671360, lng: 126.9773097),
        NMGLatLng(lat: 37.5671910, lng: 126.9773116),
        NMGLatLng(lat: 37.5672785, lng: 126.9773122),
        NMGLatLng(lat: 37.5674668, lng: 126.9773120),
        NMGLatLng(lat: 37.5677264, lng: 126.9773124),
        NMGLatLng(lat: 37.5680410, lng: 126.9773068),
        NMGLatLng(lat: 37.5689242, lng: 126.9772871),
        NMGLatLng(lat: 37.5692829, lng: 126.9772698),
        NMGLatLng(lat: 37.5693829, lng: 126.9772669),
        NMGLatLng(lat: 37.5696659, lng: 126.9772615),
        NMGLatLng(lat: 37.5697524, lng: 126.9772575),
        NMGLatLng(lat: 37.5698659, lng: 126.9772499),
        NMGLatLng(lat: 37.5699671, lng: 126.9773070),
        NMGLatLng(lat: 37.5700151, lng: 126.9773395),
        NMGLatLng(lat: 37.5700748, lng: 126.9773866),
        NMGLatLng(lat: 37.5701164, lng: 126.9774373),
        NMGLatLng(lat: 37.5701903, lng: 126.9776225),
        NMGLatLng(lat: 37.5701905, lng: 126.9776723),
        NMGLatLng(lat: 37.5701897, lng: 126.9777006),
        NMGLatLng(lat: 37.5701869, lng: 126.9784990),
        NMGLatLng(lat: 37.5701813, lng: 126.9788591),
        NMGLatLng(lat: 37.5701770, lng: 126.9791139),
        NMGLatLng(lat: 37.5701741, lng: 126.9792702),
        NMGLatLng(lat: 37.5701743, lng: 126.9793098),
        NMGLatLng(lat: 37.5701752, lng: 126.9795182),
        NMGLatLng(lat: 37.5701761, lng: 126.9799315),
        NMGLatLng(lat: 37.5701775, lng: 126.9800380),
        NMGLatLng(lat: 37.5701800, lng: 126.9804048),
        NMGLatLng(lat: 37.5701832, lng: 126.9809189),
        NMGLatLng(lat: 37.5701845, lng: 126.9810197),
        NMGLatLng(lat: 37.5701862, lng: 126.9811986),
        NMGLatLng(lat: 37.5701882, lng: 126.9814375),
        NMGLatLng(lat: 37.5701955, lng: 126.9820897),
        NMGLatLng(lat: 37.5701996, lng: 126.9821860)
    ])
    
    var markers: [NMFMarker] = []
    
    var circleTimer: CADisplayLink?
    var opacity: Double = 0
    var radius: Double = 10
    var counter: Int = 0
    
    var infoWindow = NMFInfoWindow()
    var defaultInfoWindowImage = NMFInfoWindowDefaultTextSource.data()
    
    var symbolMarker = NMFMarker()
    
    var mapView: NMFMapView {
        return naverMapView.mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMapOptions()
        mapView.touchDelegate = self
    }
    
    func setMapOptions() {
        
        //기본적인 맵 설정 초기화
        setMap()
    
        //한 번에 여러 마커 뿌리기
        setMarkers()
        
        //윈도우 설정 초기화
        infoWindow.dataSource = defaultInfoWindowImage
        defaultInfoWindowImage.title = "인포 윈도우"
        infoWindow.position = NMGLatLng(lat: 37.5666102, lng: 126.9783881)
        infoWindow.touchHandler = { [weak self] (overlay: NMFOverlay) -> Bool in
            self?.infoWindow.close()
            return true
        }
        infoWindow.mapView = mapView

        
        //원형 Layer 그리기(클러스터링을 통한 상위 덩어리 표현
        drawCircleLayer()
        
        
        
        //마커 이벤트
        //TODO - 데모 버전 MarkerViewController 심화적으로 알아보기
        makeMarkerAction()
        
        
        //TODO - 클러스터링 과정에서의 핀들 인터렉티브하게 움직이는 애니메이션 구현
    }
    
    func setMap() {
        mapView.positionMode = .direction
        naverMapView.showScaleBar = true
        naverMapView.showZoomControls = true
        naverMapView.showLocationButton = true
        naverMapView.showIndoorLevelPicker = true
    }
    
    func makeMarkerAction() {
        let sdkBundle = Bundle.naverMapFramework()
           let marker1 = NMFMarker(position: NMGLatLng(lat: 37.57207, lng: 126.97917))
           
        
           marker1.captionText = "이벤트 소비"
           marker1.touchHandler = { (overlay) in
               if let marker = overlay as? NMFMarker {
                   if marker.iconImage.reuseIdentifier == "\(sdkBundle.bundleIdentifier ?? "").mSNormal" {
                       marker.iconImage = NMFOverlayImage(name: "mSNormalNight", in: Bundle.naverMapFramework())
                   } else {
                       marker.iconImage = NMFOverlayImage(name: "mSNormal", in: Bundle.naverMapFramework())
                   }
               }
               return true
           }
           marker1.mapView = mapView

           let marker3 = NMFMarker(position: NMGLatLng(lat: 37.56671, lng: 126.98260))
           marker3.captionText = "이벤트 리스너 없음"
           marker3.mapView = mapView
    }
    
    func setMarkers() {
        if markers.isEmpty {
             let bounds = pathString.bounds as! NMGLatLngBounds
             weak var weakSelf = self
             for index in 1...50 {
                 let marker = NMFMarker(position:
                     NMGLatLng(
                         lat: (bounds.northEastLat - bounds.southWestLat) * drand48() + bounds.southWestLat,
                         lng: (bounds.northEastLng - bounds.southWestLng) * drand48() + bounds.southWestLng
                     )
                 )
                
                //index 10 이하의 것들에 대해서 클러스터로 판단(?)
                 setImportant(marker, index < 10)
                
                 marker.captionText = "Marker #\(index)"
                 marker.touchHandler = { (overlay: NMFOverlay) -> Bool in
                     let important = (marker.tag > 0)
                     weakSelf!.setImportant(marker, !important)
                     return true
                 }
                 marker.mapView = mapView
                 markers.append(marker)
             }
         }
         
        //가려져서 겹쳐지는 마커에 대해서 보이지 않게 처리
        for marker in markers {
             marker.isHideCollidedMarkers = true
         }
    }
    func drawCircleLayer() {
        let circleOverlay = NMFCircleOverlay(NMGLatLng(lat: 37.5666102, lng: 126.9783881), radius: 500)
        circleOverlay.fillColor = primaryColor.withAlphaComponent(31/255)
        circleOverlay.outlineColor = primaryColor
        circleOverlay.outlineWidth = 2
        circleOverlay.mapView = mapView
    }
    
    func setImportant(_ marker: NMFMarker, _ important: Bool) {
        //우선순위가 낮을수록 마커의 노출 레벨? 앞단으로 튀어나오는 레벨이 후순위로 미루어진다.
        marker.iconImage = important ? NMF_MARKER_IMAGE_GREEN : NMF_MARKER_IMAGE_GRAY
        marker.zIndex = important ? 1 : 0
        marker.tag = UInt(truncating: NSNumber(value: important))
        marker.isForceShowIcon = important
    }
    
    func circleAnimation(_ animated: Bool) {
           let locationOverlay = naverMapView.mapView.locationOverlay
           opacity = 1
           radius = 10
           locationOverlay.circleRadius = 0
           
           if animated {
               circleTimer?.isPaused = false
               counter = 0
           } else {
               circleTimer?.isPaused = true
           }
       }
        
    
}

extension MapVC: NMFMapViewTouchDelegate {
    
    func mapView(_ mapView: NMFMapView, didTap symbol: NMFSymbol) -> Bool {//특정 건물을 선택할 경우의 이벤트
        
        /*알림창*/
//        let alertController = UIAlertController(title: symbol.caption, message: symbol.position.positionString(), preferredStyle: .alert)
        
//        present(alertController, animated: true) {
//            DispatchQueue.main.asyncAfter(deadline: (DispatchTime.now() + 0.5), execute: {
//                alertController.dismiss(animated: true, completion: nil)
//            })
//        }
        
        /*윈도우창*/
//        defaultInfoWindowImage.title = symbol.caption
//        infoWindow.position = symbol.position
//        infoWindow.open(with: mapView)
        
        /*마커*/
        
        symbolMarker.mapView = nil
        symbolMarker = NMFMarker(position: symbol.position)

        symbolMarker.captionText = symbol.caption
        symbolMarker.mapView = mapView
        
        
        
        return true
    }
    
    
    func mapView(_ mapView: NMFMapView, didTapMap latlng: NMGLatLng, point: CGPoint) {//일반 지형 선택 시의 이벤트
        infoWindow.close()
        
        let latlngStr = latlng.positionString()
        defaultInfoWindowImage.title = latlngStr
        infoWindow.position = latlng
        infoWindow.open(with: mapView)
    }
}

extension NMGLatLng {//위도와 경도를 string값으로 바꾸어 주는 함수
    func positionString() -> String {
        return String(format: "(%.5f, %.5f)", lat, lng)
    }
    
    
}

