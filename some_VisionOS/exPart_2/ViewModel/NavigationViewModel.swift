//
//  NavigationViewModel.swift
//  some_VisionOS
//
//  Created by Maksim Ponomarev on 11/20/24.
//

import SwiftUI


actor NavigationViewModel: ObservableObject {
	
	@Published var selectedItem: InventoryItem?
	
	init(selectedItem: InventoryItem? = nil) {
		self.selectedItem = selectedItem
	}
}
