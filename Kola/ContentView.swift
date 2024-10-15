//
//  ContentView.swift
//  Kola
//
//  Created by student on 15/10/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
	@State var opacity: Double = 0.5
	@State var color1 = Color.red
	@State var color2 = Color.blue
	// Tablica kolorow
	@State var colorDatas: [ColorData] = [
		.init(colorName: "red", colorValue: Color.red, count: 1),
		.init(colorName: "blue", colorValue: Color.blue, count: 1),
		.init(colorName: "green", colorValue: Color.green, count: 1),
		.init(colorName: "yellow", colorValue: Color.yellow, count: 0),
		.init(colorName: "black", colorValue: Color.black, count: 0),
		.init(colorName: "purple", colorValue: Color.purple, count: 0),
		.init(colorName: "gray", colorValue: Color.gray, count: 0)
	]
	
	var body: some View{
		NavigationStack{
			VStack(spacing: 20){
				Circle()
					.fill(color1)
					.opacity(opacity)
					.frame(width: 200)
				Circle()
					.fill(color2)
					.opacity(opacity)
					.frame(width: 200)
			}
			HStack{
				Button("Losuj kolor 1"){
					color1 = randColor()
				}
				Spacer()
				Button("Losuj kolor 2"){
					color2 = randColor()
				}
			}
			.padding()
			NavigationLink("Pokaz statystyke", destination: SwiftUIView(colors: colorDatas))
			
		}
	}
	
	// Funkcja do losowania koloru
	func randColor() -> Color{
		let i = Int.random(in:
							0..<colorDatas.count)
		colorDatas[i].count += 1
		return colorDatas[i].colorValue
	}
}


#Preview {
    ContentView()
}
