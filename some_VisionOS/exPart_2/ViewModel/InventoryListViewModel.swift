//
//  InventoryListViewModel.swift
//  some_VisionOS
//
//  Created by Maksim Ponomarev on 11/20/24.
//

import SwiftUI

actor InventoryListViewModel: ObservableObject {
	@Published var items: [InventoryItem] = []
	
	
}
