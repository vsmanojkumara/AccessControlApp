//
//  SidebarView.swift
//  output
//
//  Created by V S Manoj Kumar A on 01/11/26.
//

import SwiftUI

struct SidebarView: View {
	
	private let icons = [
		"square.grid.2x2",
		"list.bullet.rectangle",
		"shield.lefthalf.filled",
		"gearshape.fill",
		"person.3.fill"
	]
	
	var body: some View {
		
		VStack(spacing: 0) {
			
			Button(action: {}) {
				Image(systemName: "chevron.right")
					.font(.system(size: 25, weight: .medium))
					.foregroundColor(.white)
					.frame(maxWidth: .infinity)
					.frame(height: 118)
					.background(Color(hex: "0754C8"))
			}
			
			VStack(spacing: 0) {
				
				ForEach(
					Array(icons.enumerated()),
					id: \.offset
				) { index, icon in
					
					Button(action: {}) {
						Image(systemName: icon)
							.font(.system(size: 27))
							.foregroundColor(.white)
							.frame(maxWidth: .infinity)
							.frame(height: 94)
					}
				}
			}
			
			Spacer()
		}
		.frame(width: 97)
		.background(
			LinearGradient(
				colors: [
					Color(hex: "0754CE"),
					Color(hex: "0861D9")
				],
				startPoint: .top,
				endPoint: .bottom
			)
		)
		.clipShape(
			UnevenRoundedRectangle(
				topTrailingRadius: 10
			)
		)
	}
}

