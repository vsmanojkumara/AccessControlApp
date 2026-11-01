//
//  TopNavigationView.swift
//  output
//
//  Created by V S Manoj Kumar A on 01/11/26.
//


import SwiftUI

struct TopNavigationView: View {
	
	@State private var searchText = ""
	@State private var selectedOption = "Choose"
	
	var body: some View {
		
		HStack {
			
			Text("Logo")
				.font(.system(size: 35, weight: .bold))
				.foregroundColor(Color(hex: "092F73"))
			
			Spacer()
			
			HStack(spacing: 15) {
				
				Menu {
					
					Button("All") {
						selectedOption = "All"
					}
					
					Button("Users") {
						selectedOption = "Users"
					}
					
					Button("Cases") {
						selectedOption = "Cases"
					}
					
				} label: {
					
					HStack(spacing: 15) {
						Text(selectedOption)
						Image(systemName: "chevron.down")
					}
					.font(.system(size: 19))
					.foregroundColor(Color(hex: "33394B"))
				}
				
				Rectangle()
					.fill(Color(hex: "8992A6"))
					.frame(width: 1, height: 30)
				
				TextField("Search", text: $searchText)
					.font(.system(size: 20))
					.frame(width: 220)
				
				Image(systemName: "magnifyingglass")
					.font(.system(size: 25))
					.foregroundColor(Color(hex: "34415A"))
			}
			.padding(.horizontal, 16)
			.frame(height: 59)
			.background(Color.white)
			.overlay(
				RoundedRectangle(cornerRadius: 10)
					.stroke(
						Color(hex: "C9D1E2"),
						lineWidth: 1.5
					)
			)
			
			Spacer()
			
			Button(action: {}) {
				Image(systemName: "bell")
					.font(.system(size: 27))
					.foregroundColor(Color(hex: "17376E"))
			}
			
			Button(action: {}) {
				Text("S")
					.font(.system(size: 23))
					.foregroundColor(.white)
					.frame(width: 54, height: 54)
					.background(Color(hex: "73A9EC"))
					.clipShape(Circle())
			}
			.padding(.leading, 20)
		}
		.padding(.horizontal, 40)
		.frame(height: 102)
		.background(Color.white)
		.overlay(alignment: .bottom) {
			Rectangle()
				.fill(Color(hex: "E4E8F0"))
				.frame(height: 1)
		}
	}
}

