//
//  ContentView.swift
//  HW5-3_UIBezier
//
//  Created by Dawei Hao on 2023/1/16.
//

import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let path = UIBezierPath()
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 100, y: 0))
                path.addLine(to: CGPoint(x: 100, y: 100))
                path.close()
        
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
