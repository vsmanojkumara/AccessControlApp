//
//  DetailView.swift
//  output
//
//  Created by V S Manoj Kumar A on 01/11/26.
//

import SwiftUI

struct DetailView: View {
	
	let record: AccessControl
	
	@Environment(\.dismiss) private var dismiss
	
	var body: some View {
		
		NavigationStack {
			
			Form {
				
				Section("Case Information") {
					
					LabeledContent(
						"Category",
						value: record.category
					)
					
					LabeledContent(
						"Sub-category",
						value: record.subCategory
					)
					
					LabeledContent(
						"Field Name",
						value: record.fieldName
					)
				}
				
				Section("Access Configuration") {
					
					LabeledContent(
						"Access Type",
						value: record.accessType
					)
					
					LabeledContent(
						"Masking Pattern",
						value: record.maskingPattern
					)
				}
			}
			.navigationTitle("Access Control Details")
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				
				ToolbarItem(placement: .confirmationAction) {
					
					Button("Done") {
						dismiss()
					}
				}
			}
		}
		.frame(minWidth: 450, minHeight: 400)
	}
}

