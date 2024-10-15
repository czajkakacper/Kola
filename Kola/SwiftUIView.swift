//
//  SwiftUIView.swift
//  Kola
//
//  Created by student on 15/10/2024.
//

import SwiftUI
import Charts

struct SwiftUIView: View {
	var colors: [ColorData]
    var body: some View {
		Chart{
			ForEach(colors){ item in
				BarMark(
					x: .value("", item.colorName),
					y: .value("", item.count)
				)
				.foregroundStyle(item.colorValue)
			}
		}
    }
}

//#Preview {
//	SwiftUIView(colors: [.init(colorName: "red", colorValue: Color.red, count: 3)])
//}
