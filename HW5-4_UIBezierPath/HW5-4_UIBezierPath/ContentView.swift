//
//  ContentView.swift
//  HW5-4_UIBezierPath
//
//  Created by Dawei Hao on 2023/1/28.
//

import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
       
        // Demo pics
        let view = UIView()   //do not touch
        let imageView = UIImageView(frame: CGRect(x: 0, y: 200, width: 390, height: 218))
        imageView.image = UIImage(named: "swiftui")
        imageView.alpha = 0.0
        view.addSubview(imageView)
        
        // Blue background Rect
        var path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 390, y: 0))
        path.addLine(to: CGPoint(x: 390, y: 218))
        path.addLine(to: CGPoint(x: 0, y: 218))
        path.close()
        
        let blueRectLayer = CAShapeLayer()
        blueRectLayer.path = path.cgPath
        
        //gradientLayer
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [CGColor(red: 136/255, green: 207/255, blue: 221/255, alpha: 1), CGColor(red: 84/255, green: 160/255, blue: 216/255, alpha: 1)]
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 390, height: 218)
        view.layer.addSublayer(gradientLayer)
        gradientLayer.mask = blueRectLayer
        
        //BirdView
        path = UIBezierPath()
        path.move(to: CGPoint(x: 90.5, y: 0))
        path.addLine(to: CGPoint(x: 86.3, y: 0))
        path.addLine(to: CGPoint(x: 111.5, y: 31.2))
        path.addLine(to: CGPoint(x: 135.1, y: 59))
        path.addLine(to: CGPoint(x: 151.6, y: 76.2))
        path.addCurve(to: CGPoint(x: 179.4, y: 101.9), controlPoint1: CGPoint(x: 151.6, y: 76.2), controlPoint2: CGPoint(x: 177.2, y: 99.8))
        path.addLine(to: CGPoint(x: 194.6, y: 114.6))
        path.addCurve(to: CGPoint(x: 145.1, y: 128.4), controlPoint1: CGPoint(x: 194.6, y: 114.6), controlPoint2: CGPoint(x: 182.3, y: 126.5))
        path.addCurve(to: CGPoint(x: 84.7, y: 114.7), controlPoint1: CGPoint(x: 145.1, y: 128.4), controlPoint2: CGPoint(x: 114.1, y: 130))
        path.addCurve(to: CGPoint(x: 53, y: 92.7), controlPoint1: CGPoint(x: 84.7, y: 114.7), controlPoint2: CGPoint(x: 69.3, y: 109))
        path.addCurve(to: CGPoint(x: 87.4, y: 134.7), controlPoint1: CGPoint(x: 53, y: 92.7), controlPoint2: CGPoint(x: 65.3, y: 113.9))
        path.addCurve(to: CGPoint(x: 122.3, y: 158.6), controlPoint1: CGPoint(x: 87.4, y: 134.7), controlPoint2: CGPoint(x: 109.1, y: 152.3))
        path.addCurve(to: CGPoint(x: 174.6, y: 174.3), controlPoint1: CGPoint(x: 122.3, y: 158.6), controlPoint2: CGPoint(x: 143.9, y: 171.1))
        path.addCurve(to: CGPoint(x: 222.8, y: 169.5), controlPoint1: CGPoint(x: 174.6, y: 174.3), controlPoint2: CGPoint(x: 197.4, y: 177.8))
        path.addCurve(to: CGPoint(x: 239.9, y: 161.5), controlPoint1: CGPoint(x: 222.8, y: 169.5), controlPoint2: CGPoint(x: 235.7, y: 164))
        path.addCurve(to: CGPoint(x: 260.6, y: 154.9), controlPoint1: CGPoint(x: 239.9, y: 161.5), controlPoint2: CGPoint(x: 250.8, y: 155.4))
        path.addCurve(to: CGPoint(x: 281, y: 158.6), controlPoint1: CGPoint(x: 260.6, y: 154.9), controlPoint2: CGPoint(x: 272.5, y: 153.3))
        path.addCurve(to: CGPoint(x: 295.9, y: 175.1), controlPoint1: CGPoint(x: 281, y: 158.6), controlPoint2: CGPoint(x: 290.9, y: 164))
        path.addCurve(to: CGPoint(x: 296.3, y: 175.7), controlPoint1: CGPoint(x: 295.9, y: 175.1), controlPoint2: CGPoint(x: 296.1, y: 175.5))
        path.addCurve(to: CGPoint(x: 297.3, y: 175.8), controlPoint1: CGPoint(x: 296.5, y: 175.9), controlPoint2: CGPoint(x: 297, y: 175.9))
        path.addCurve(to: CGPoint(x: 299.3, y: 171.6), controlPoint1: CGPoint(x: 298.9, y: 175.2), controlPoint2: CGPoint(x: 298.8, y: 174.3))
        path.addCurve(to: CGPoint(x: 295.9, y: 142.2), controlPoint1: CGPoint(x: 301, y: 162.4), controlPoint2: CGPoint(x: 295.9, y: 142.2))
        path.addCurve(to: CGPoint(x: 279.2, y: 111.4), controlPoint1: CGPoint(x: 295.9, y: 142.2), controlPoint2: CGPoint(x: 289.7, y: 122))
        path.addCurve(to: CGPoint(x: 282.3, y: 67.1), controlPoint1: CGPoint(x: 279.2, y: 111.4), controlPoint2: CGPoint(x: 286.2, y: 90.8))
        path.addCurve(to: CGPoint(x: 262.3, y: 13.8), controlPoint1: CGPoint(x: 282.3, y: 67.1), controlPoint2: CGPoint(x: 276.9, y: 34.7))
        path.addLine(to: CGPoint(x: 252.7, y: 0))
        path.addLine(to: CGPoint(x: 228, y: 0))
        path.addCurve(to: CGPoint(x: 234.1, y: 28.1), controlPoint1: CGPoint(x: 228, y: 0), controlPoint2: CGPoint(x: 233.9, y: 20.7))
        path.addCurve(to: CGPoint(x: 232.2, y: 62.3), controlPoint1: CGPoint(x: 234.1, y: 28.1), controlPoint2: CGPoint(x: 235.1, y: 53.5))
        path.addCurve(to: CGPoint(x: 228.3, y: 74.2), controlPoint1: CGPoint(x: 232.2, y: 62.3), controlPoint2: CGPoint(x: 230.3, y: 71.7))
        path.addCurve(to: CGPoint(x: 193.7, y: 50.9), controlPoint1: CGPoint(x: 228.3, y: 74.2), controlPoint2: CGPoint(x: 217.9, y: 69.9))
        path.addCurve(to: CGPoint(x: 151.5, y: 17.1), controlPoint1: CGPoint(x: 193.7, y: 50.9), controlPoint2: CGPoint(x: 169, y: 33.2))
        path.addLine(to: CGPoint(x: 132.4, y: 0))
        path.addLine(to: CGPoint(x: 125, y: 0))
        path.addLine(to: CGPoint(x: 135.5, y: 14.3))
        path.addCurve(to: CGPoint(x: 162.2, y: 46.5), controlPoint1: CGPoint(x: 135.5, y: 14.3), controlPoint2: CGPoint(x: 154.9, y: 39))
        path.addCurve(to: CGPoint(x: 178.1, y: 64.9), controlPoint1: CGPoint(x: 162.2, y: 46.5), controlPoint2: CGPoint(x: 172.9, y: 59.8))
        path.addCurve(to: CGPoint(x: 141.3, y: 40), controlPoint1: CGPoint(x: 178.1, y: 64.9), controlPoint2: CGPoint(x: 179.6, y: 67.1))
        path.addCurve(to: CGPoint(x: 103.9, y: 11.3), controlPoint1: CGPoint(x: 141.3, y: 40), controlPoint2: CGPoint(x: 112.7, y: 18.3))
        path.addCurve(to: CGPoint(x: 90.5, y: 0), controlPoint1: CGPoint(x: 99.8, y: 8), controlPoint2: CGPoint(x: 90.5, y: 0))
        path.close()
        
        let birdView = CAShapeLayer()
        birdView.path = path.cgPath
        birdView.fillColor = CGColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        view.layer.addSublayer(birdView)
        
        
        //upSection (1)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 141.6, y: 22.6))
        path.addCurve(to: CGPoint(x: 177.8, y: 65.2), controlPoint1: CGPoint(x: 142, y: 23), controlPoint2: CGPoint(x: 177.8, y: 65.2))
        path.addCurve(to: CGPoint(x: 90, y: 0), controlPoint1: CGPoint(x: 154.3, y: 52.5), controlPoint2: CGPoint(x: 102.7, y: 12.2))
        path.addLine(to: CGPoint(x: 124.5, y: 0))
        path.addLine(to: CGPoint(x: 141.6, y: 22.6))
        path.close()
        path.close()
   
        let upSectionView = CAShapeLayer()
        upSectionView.path = path.cgPath
        let gradientLayer1 = CAGradientLayer()
        gradientLayer1.colors = [CGColor(red: 53/255, green: 164/255, blue: 211/255, alpha: 1), CGColor(red: 48/255, green: 113/255, blue: 184/255, alpha: 1)]
        gradientLayer1.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        view.layer.addSublayer(gradientLayer1)
        gradientLayer1.mask = upSectionView

        
         //rightDownSectionView(2)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 132.4, y: 0))
        path.addCurve(to: CGPoint(x: 228.3, y: 74.2), controlPoint1: CGPoint(x: 132.4, y: 0), controlPoint2: CGPoint(x: 208.9, y: 70.3))
        path.addCurve(to: CGPoint(x: 234.1, y: 31.9), controlPoint1: CGPoint(x: 228.3, y: 74.2), controlPoint2: CGPoint(x: 235.7, y: 66.1))
        path.addCurve(to: CGPoint(x: 227.9, y: 0.1), controlPoint1: CGPoint(x: 234.1, y: 31.9), controlPoint2: CGPoint(x: 235.2, y: 23.6))
        path.addLine(to: CGPoint(x: 132.4, y: 0.1))
        path.close()
        
        let rightDownSectionView = CAShapeLayer()
        rightDownSectionView.path = path.cgPath
        rightDownSectionView.fillColor = CGColor(red: 33/255, green: 71/255, blue: 157/255, alpha: 1)
        view.layer.addSublayer(rightDownSectionView)
        
        // rightUpSection (3)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 140.6, y: 0))
        path.addCurve(to: CGPoint(x: 196.5, y: 42.6), controlPoint1: CGPoint(x: 140.6, y: 0), controlPoint2: CGPoint(x: 170.6, y: 26.3))
        path.addCurve(to: CGPoint(x: 212.1, y: 52.7), controlPoint1: CGPoint(x: 196.5, y: 42.6), controlPoint2: CGPoint(x: 204.2, y: 47.5))
        path.addCurve(to: CGPoint(x: 218.6, y: 15.2), controlPoint1: CGPoint(x: 212.1, y: 52.7), controlPoint2: CGPoint(x: 218.6, y: 39.5))
        path.addCurve(to: CGPoint(x: 217.1, y: 0), controlPoint1: CGPoint(x: 218.6, y: 15.2), controlPoint2: CGPoint(x: 218.4, y: 3.6))
        path.addLine(to: CGPoint(x: 140.6, y: 0))
        path.close()
        
        let rightUpSectionView = CAShapeLayer()
        rightUpSectionView.path = path.cgPath
        rightUpSectionView.fillColor = CGColor(red: 49/255, green: 115/255, blue: 186/255, alpha: 1)
        view.layer.addSublayer(rightUpSectionView)
        
        //rightMiddleUpSectionView (4)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 151.1, y: 0))
        path.addCurve(to: CGPoint(x: 195, y: 30.4), controlPoint1: CGPoint(x: 151.1, y: 0), controlPoint2: CGPoint(x: 182.5, y: 25.7))
        path.addCurve(to: CGPoint(x: 201.3, y: 0), controlPoint1: CGPoint(x: 195, y: 30.4), controlPoint2: CGPoint(x: 201.3, y: 19.7))
        path.addLine(to: CGPoint(x: 151.1, y: 0))
        path.close()
        
        let rightMiddleUpSectionView = CAShapeLayer()
        rightMiddleUpSectionView.path = path.cgPath
        rightMiddleUpSectionView.fillColor = CGColor(red: 45/255, green: 188/255, blue: 228/255, alpha: 1)
        view.layer.addSublayer(rightMiddleUpSectionView)
        
        
        //最左上的顏色 (5)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0.1, y: 23.5))
        path.addCurve(to: CGPoint(x: 39.4, y: 65.2), controlPoint1: CGPoint(x: 0.1, y: 23.5), controlPoint2: CGPoint(x: 19.7, y: 53.5))
        path.addCurve(to: CGPoint(x: 66, y: 76.9), controlPoint1: CGPoint(x: 39.4, y: 65.2), controlPoint2: CGPoint(x: 50.2, y: 71.3))
        path.addCurve(to: CGPoint(x: 122.1, y: 84.3), controlPoint1: CGPoint(x: 81.8, y: 82.5), controlPoint2: CGPoint(x: 102.6, y: 86.9))
        path.addCurve(to: CGPoint(x: 152.2, y: 76.2), controlPoint1: CGPoint(x: 122.1, y: 84.3), controlPoint2: CGPoint(x: 139.9, y: 82.7))
        path.addCurve(to: CGPoint(x: 108.4, y: 27.9), controlPoint1: CGPoint(x: 152.2, y: 76.2), controlPoint2: CGPoint(x: 129.7, y: 53.5))
        path.addLine(to: CGPoint(x: 86.2, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.close()
        

        let leftSectionView = CAShapeLayer()
        leftSectionView.path = path.cgPath
//        leftSectionView.fillColor = CGColor(red: 79/255, green: 192/255, blue: 220/255, alpha: 1)
        let gradientLayer5 = CAGradientLayer()
        gradientLayer5.colors = [CGColor(red: 90/255, green: 194/255, blue: 215/255, alpha: 1), CGColor(red: 45/255, green: 188/255, blue: 235/255, alpha: 1)]
        gradientLayer5.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer5.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer5.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        view.layer.addSublayer(gradientLayer5)
        gradientLayer5.mask = leftSectionView
 
        
        //leftMiddleSection (6)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 19.1, y: 47.6))
        path.addCurve(to: CGPoint(x: 38.3, y: 73.5), controlPoint1: CGPoint(x: 19.1, y: 47.6), controlPoint2: CGPoint(x: 33.1, y: 68.3))
        path.addCurve(to: CGPoint(x: 84.7, y: 100), controlPoint1: CGPoint(x: 38.3, y: 73.5), controlPoint2: CGPoint(x: 54.9, y: 91.1))
        path.addCurve(to: CGPoint(x: 154, y: 103.9), controlPoint1: CGPoint(x: 84.7, y: 100), controlPoint2: CGPoint(x: 117.6, y: 111.4))
        path.addCurve(to: CGPoint(x: 174, y: 96.9), controlPoint1: CGPoint(x: 154, y: 103.9), controlPoint2: CGPoint(x: 171, y: 100.1))
        path.addLine(to: CGPoint(x: 152.2, y: 76.2))
        path.addCurve(to: CGPoint(x: 100.5, y: 84.4), controlPoint1: CGPoint(x: 152.2, y: 76.2), controlPoint2: CGPoint(x: 130.9, y: 87.4))
        path.addCurve(to: CGPoint(x: 55.8, y: 73), controlPoint1: CGPoint(x: 100.5, y: 84.4), controlPoint2: CGPoint(x: 81.6, y: 83.9))
        path.addCurve(to: CGPoint(x: 30.6, y: 58.7), controlPoint1: CGPoint(x: 55.8, y: 73), controlPoint2: CGPoint(x: 36, y: 64.6))
        path.addLine(to: CGPoint(x: 26.2, y: 54.9))
        path.addLine(to: CGPoint(x: 19.1, y: 47.6))
        path.close()

        let leftMiddleSectionView = CAShapeLayer()
        leftMiddleSectionView.path = path.cgPath
//        leftMiddleSectionView.fillColor = CGColor(red: 48/255, green: 115/255, blue: 186/255, alpha: 1)
        let gradientLayer6 = CAGradientLayer()
        gradientLayer6.colors = [CGColor(red: 64/255, green: 190/255, blue: 231/255, alpha: 1), CGColor(red: 51/255, green: 120/255, blue: 190/255, alpha: 1)]
        gradientLayer6.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer6.endPoint = CGPoint(x: 1, y: 0.5)
        gradientLayer6.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        view.layer.addSublayer(gradientLayer6)
        gradientLayer6.mask = leftMiddleSectionView
        
        //leftDownSection (7)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 173.9, y: 96.8))
        path.addLine(to: CGPoint(x: 196, y: 115.1))
        path.addCurve(to: CGPoint(x: 156.1, y: 128.5), controlPoint1: CGPoint(x: 196, y: 115.1), controlPoint2: CGPoint(x: 179.1, y: 127.2))
        path.addCurve(to: CGPoint(x: 107.1, y: 123.7), controlPoint1: CGPoint(x: 156.1, y: 128.5), controlPoint2: CGPoint(x: 129.2, y: 131.4))
        path.addCurve(to: CGPoint(x: 65.5, y: 104), controlPoint1: CGPoint(x: 107.1, y: 123.7), controlPoint2: CGPoint(x: 83.4, y: 117.2))
        path.addCurve(to: CGPoint(x: 38.3, y: 73.4), controlPoint1: CGPoint(x: 65.5, y: 104), controlPoint2: CGPoint(x: 55.8, y: 99.1))
        path.addCurve(to: CGPoint(x: 86.7, y: 100.4), controlPoint1: CGPoint(x: 38.3, y: 73.4), controlPoint2: CGPoint(x: 61, y: 93.8))
        path.addCurve(to: CGPoint(x: 130.1, y: 106.3), controlPoint1: CGPoint(x: 86.7, y: 100.4), controlPoint2: CGPoint(x: 101.1, y: 106.2))
        path.addCurve(to: CGPoint(x: 173.9, y: 96.8), controlPoint1: CGPoint(x: 130.1, y: 106.4), controlPoint2: CGPoint(x: 156.7, y: 106.5))
        path.close()
        
        let leftDownSectionView = CAShapeLayer()
        leftDownSectionView.path = path.cgPath
        
        let gradientLayer7 = CAGradientLayer()
        gradientLayer7.colors = [CGColor(red: 52/255, green: 141/255, blue: 205/255, alpha: 1), CGColor(red: 33/255, green: 67/255, blue: 154/255, alpha: 1)]
        gradientLayer7.startPoint = CGPoint(x: 0, y: 0.7)
        gradientLayer7.endPoint = CGPoint(x: 0.9, y: 1)
        gradientLayer7.frame = CGRect(x: 0, y: 0, width: 200, height: 150)
        view.layer.addSublayer(gradientLayer7)
        gradientLayer7.mask = leftDownSectionView
//        leftDownSectionView.fillColor = CGColor(red: 32/255, green: 79/255, blue: 161/255, alpha: 1)
        
        
        return view
    }
    func updateUIView(_ uiView: UIView, context: Context) {
    
    }
    
}

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
