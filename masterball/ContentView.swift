//
//  ContentView.swift
//  masterball
//
//  Created by User16 on 2020/9/23.
//

import SwiftUI

struct ContentView: View {
 var body: some View {

 ZStack {
    
    Image("grass")
    .resizable()
    .scaledToFill()
    .frame(minWidth: 0, maxWidth: .infinity)
    .edgesIgnoringSafeArea(.all)
    
    Group{
    Path { (path) in
        path.move(to: CGPoint(x: 60, y: 280))
        path.addLine(to: CGPoint(x: 260, y: 280))
        path.addArc(center: CGPoint(x: 160, y:280), radius:100, startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
    }
    .foregroundColor(.purple)
    
    Path { (path) in
        path.move(to: CGPoint(x: 60, y: 280))
        path.addLine(to: CGPoint(x: 260, y: 280))
        path.addArc(center: CGPoint(x: 160, y:280), radius:100, startAngle: .degrees(0), endAngle: .degrees(180), clockwise: false)
    }
    .foregroundColor(.white)
    
    
    Path { (path) in
    path.move(to: CGPoint(x: 137, y: 251))
    path.addLine(to: CGPoint(x: 150, y: 214))
    path.addLine(to: CGPoint(x: 160, y: 245))
    path.addLine(to: CGPoint(x: 170, y: 214))
    path.addLine(to: CGPoint(x: 183, y: 251))
    }
    .stroke(Color(red: 1, green: 1, blue: 1), lineWidth: 6)
    }
    
    Ellipse()
    .fill(Color(red: 255/256, green: 0, blue: 144/256))
        .position(x: 54, y:-61)
    .frame(width: 100, height: 40)
    .rotationEffect(.degrees(45))
    
    Ellipse()
    .fill(Color(red: 255/256, green: 0, blue: 144/256))
        .position(x: 55, y:101)
    .frame(width: 100, height: 40)
    .rotationEffect(.degrees(135))
    
    
    
    Path { (path) in
        path.move(to: CGPoint(x: 62, y: 285))
        path.addLine(to: CGPoint(x: 260, y: 285))}
        .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: 20)
    
    Path(ellipseIn: CGRect(x: 135, y: 260, width: 50, height: 50))
    .fill(Color(red: 0, green: 0, blue: 0))
    Path(ellipseIn: CGRect(x: 140, y: 265, width: 40, height: 40))
    .fill(Color(red: 1, green: 1, blue: 1))
    Path(ellipseIn: CGRect(x: 148, y: 272, width: 25, height: 25))
        .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: 2.5)
    
    Path(ellipseIn: CGRect(x: 60, y: 180, width: 200, height: 200))
    .stroke(Color(red: 0, green: 0, blue:0), lineWidth: 10)
    
    Text("Masterball").position(x: 160, y:330)
 }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

