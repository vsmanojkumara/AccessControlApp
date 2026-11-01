//
//  BreadcrumbView.swift
//  output
//
//  Created by V S Manoj Kumar A on 01/11/26.
//

import SwiftUI

struct BreadcrumbView: View {
	
	var body: some View {
		
		HStack(spacing: 12) {
			
			Text("Home")
				.foregroundColor(Color(hex: "0757CE"))
			
			Image(systemName: "chevron.right")
				.font(.system(size: 15))
			
			Text("Admin")
				.foregroundColor(Color(hex: "0757CE"))
			
			Image(systemName: "chevron.right")
				.font(.system(size: 15))
			
			Text("Access Control")
				.foregroundColor(Color(hex: "34415B"))
		}
		.font(.system(size: 23))
	}
}
