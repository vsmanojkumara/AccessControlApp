//
//  Color+Hex.swift
//  output
//
//  Created by V S Manoj Kumar A on 01/11/26.
//

import SwiftUI

extension Color {
	
	init(hex: String) {
		
		let hex = hex.trimmingCharacters(
			in: CharacterSet.alphanumerics.inverted
		)
		
		let value = UInt64(hex, radix: 16) ?? 0
		
		self.init(
			.sRGB,
			red: Double((value >> 16) & 0xFF) / 255,
			green: Double((value >> 8) & 0xFF) / 255,
			blue: Double(value & 0xFF) / 255,
			opacity: 1
		)
	}
}

