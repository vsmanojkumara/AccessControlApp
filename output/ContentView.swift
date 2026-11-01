//
//  ContentView.swift
//  output
//
//  Created by V S Manoj Kumar A on 01/11/26.
//

import SwiftUI

struct ContentView: View {
	
	var body: some View {
		GeometryReader { geometry in
			
			HStack(spacing: 0) {
				
				SidebarView()
				
				VStack(spacing: 0) {
					
					TopNavigationView()
					
					ScrollView {
						
						VStack(alignment: .leading, spacing: 26) {
							
							BreadcrumbView()
							
							AccessControlView()
						}
						.padding(.horizontal, 38)
						.padding(.top, 24)
						.padding(.bottom, 30)
					}
					.background(Color(hex: "F0F3FC"))
				}
			}
			.frame(
				width: geometry.size.width,
				height: geometry.size.height
			)
			.background(Color(hex: "F0F3FC"))
		}
		.preferredColorScheme(.light)
	}
}
