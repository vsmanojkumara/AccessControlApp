//
//  AccessControl.swift  .swift
//  output
//
//  Created by V S Manoj Kumar A on 01/11/26.
//

import Foundation

struct AccessControl: Identifiable {
	
	let id = UUID()
	
	let category: String
	let subCategory: String
	let fieldName: String
	let accessType: String
	let maskingPattern: String
	
	static let sampleData: [AccessControl] = [
		
		AccessControl(
			category: "NPI",
			subCategory: "Address Update",
			fieldName: "Address",
			accessType: "No Access",
			maskingPattern: "XXXX.XXXX.XXXX. XXXX"
		),
		
		AccessControl(
			category: "NPI",
			subCategory: "Address Update",
			fieldName: "Aadhar Number",
			accessType: "No Access",
			maskingPattern: "XXXX.XXXX.XXXX"
		),
		
		AccessControl(
			category: "NPI",
			subCategory: "Address Update",
			fieldName: "Account Number",
			accessType: "No Access",
			maskingPattern: "XXXX.XXXX.XXXX.XXXX"
		),
		
		AccessControl(
			category: "NPI",
			subCategory: "Address Update",
			fieldName: "Related Party",
			accessType: "No Access",
			maskingPattern: "XXXXXXXXXX"
		),
		
		AccessControl(
			category: "Corporate",
			subCategory: "Step Check",
			fieldName: "Name",
			accessType: "No Access",
			maskingPattern: "XXXX.XXXX.XXXXXX"
		),
		
		AccessControl(
			category: "Corporate",
			subCategory: "Step Check",
			fieldName: "DOB",
			accessType: "No Access",
			maskingPattern: "XX.XX.XXXX"
		),
		
		AccessControl(
			category: "Corporate",
			subCategory: "Step Check",
			fieldName: "Aadhar Number",
			accessType: "No Access",
			maskingPattern: "XXXX.XXXX.XXXX"
		),
		
		AccessControl(
			category: "Corporate",
			subCategory: "Step Check",
			fieldName: "Phone Number",
			accessType: "No Access",
			maskingPattern: "XX.XXXX.XXXXX"
		)
	]
}
