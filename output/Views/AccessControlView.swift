//
//  AccessControlView.swift
//  output
//
//  Created by V S Manoj Kumar A on 01/11/26.
//


import SwiftUI

struct AccessControlView: View {
	
	@State private var selectedRecord: AccessControl?
	@State private var showDetails = false
	
	private let columns: [GridItem] = [
		
		GridItem(.flexible(minimum: 130), alignment: .leading),
		GridItem(.flexible(minimum: 150), alignment: .leading),
		GridItem(.flexible(minimum: 150), alignment: .leading),
		GridItem(.flexible(minimum: 120), alignment: .leading),
		GridItem(.flexible(minimum: 180), alignment: .leading),
		GridItem(.fixed(100), alignment: .center)
	]
	
	var body: some View {
		
		VStack(alignment: .leading, spacing: 18) {
			
			// Dashboard Header
			
			HStack {
				
				Text("Access Controls")
					.font(.system(size: 35, weight: .semibold))
					.foregroundColor(Color(hex: "102F65"))
				
				Spacer()
				
				Menu {
					
					Button("Refresh") {}
					Button("Export") {}
					Button("Settings") {}
					
				} label: {
					
					Image(systemName: "ellipsis")
						.font(.system(size: 22, weight: .bold))
						.foregroundColor(Color(hex: "183A78"))
						.frame(width: 48, height: 48)
						.background(Color(hex: "F2F5FD"))
						.clipShape(Circle())
				}
			}
			
			// Underline
			
			VStack(spacing: 0) {
				
				HStack {
					
					RoundedRectangle(cornerRadius: 3)
						.fill(Color(hex: "075BD4"))
						.frame(width: 117, height: 4)
					
					Spacer()
				}
				
				Rectangle()
					.fill(Color(hex: "D8DFEC"))
					.frame(height: 1.5)
			}
			
			// Access Control Table
			
			ScrollView(.horizontal, showsIndicators: true) {
				
				LazyVGrid(columns: columns, spacing: 0) {
					
					// Table Header
					
					tableHeader("Case Category")
					tableHeader("Case Sub-category")
					tableHeader("Field Name")
					tableHeader("Access Type")
					tableHeader("Masking Pattern")
					tableHeader("Actions")
					
					// Table Data
					
					ForEach(AccessControl.sampleData) { item in
						
						tableCell(item.category)
						tableCell(item.subCategory)
						tableCell(item.fieldName)
						tableCell(item.accessType)
						tableCell(item.maskingPattern)
						
						// Action Buttons
						
						HStack(spacing: 15) {
							
							Button {
								
								selectedRecord = item
								showDetails = true
								
							} label: {
								
								Image(systemName: "eye")
									.font(.system(size: 23))
									.foregroundColor(Color(hex: "075CCF"))
							}
							
							Button {
								
								selectedRecord = item
								showDetails = true
								
							} label: {
								
								Image(
									systemName: "arrow.up.right.square"
								)
								.font(.system(size: 23))
								.foregroundColor(Color(hex: "075CCF"))
							}
						}
						.frame(maxWidth: .infinity)
						.frame(height: 62)
						.background(Color.white)
						.overlay(alignment: .bottom) {
							Rectangle()
								.fill(Color(hex: "DCE2EE"))
								.frame(height: 1)
						}
					}
				}
				.frame(minWidth: 1050)
				.overlay {
					RoundedRectangle(cornerRadius: 8)
						.stroke(
							Color(hex: "DCE2EE"),
							lineWidth: 1.5
						)
				}
			}
			.clipShape(RoundedRectangle(cornerRadius: 8))
		}
		.padding(22)
		.background(Color.white)
		.clipShape(RoundedRectangle(cornerRadius: 12))
		.shadow(
			color: Color.black.opacity(0.06),
			radius: 12,
			x: 0,
			y: 3
		)
		.sheet(isPresented: $showDetails) {
			
			if let record = selectedRecord {
				DetailView(record: record)
			}
		}
	}
	
	// MARK: - Table Header
	
	private func tableHeader(_ title: String) -> some View {
		
		Text(title)
			.font(.system(size: 19, weight: .semibold))
			.foregroundColor(Color(hex: "151B2B"))
			.frame(maxWidth: .infinity, alignment: .leading)
			.frame(height: 80)
			.padding(.horizontal, 14)
			.background(Color(hex: "EEF1FA"))
			.overlay(alignment: .trailing) {
				
				Rectangle()
					.fill(Color(hex: "DCE2EE"))
					.frame(width: 1)
			}
			.overlay(alignment: .bottom) {
				
				Rectangle()
					.fill(Color(hex: "DCE2EE"))
					.frame(height: 1)
			}
	}
	
	// MARK: - Table Cell
	
	private func tableCell(_ value: String) -> some View {
		
		Text(value)
			.font(.system(size: 19))
			.foregroundColor(Color(hex: "10131B"))
			.lineLimit(1)
			.minimumScaleFactor(0.8)
			.frame(maxWidth: .infinity, alignment: .leading)
			.frame(height: 62)
			.padding(.horizontal, 14)
			.background(Color.white)
			.overlay(alignment: .trailing) {
				
				Rectangle()
					.fill(Color(hex: "DCE2EE"))
					.frame(width: 1)
			}
			.overlay(alignment: .bottom) {
				
				Rectangle()
					.fill(Color(hex: "DCE2EE"))
					.frame(height: 1)
			}
	}
}

