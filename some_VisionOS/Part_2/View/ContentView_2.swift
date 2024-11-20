//
//  ContentView_2.swift
//  some_VisionOS
//
//  Created by Maksim Ponomarev on 11/20/24.
//

import SwiftUI

struct ContentView2: View {
	
	var viewModel = InventoryListViewModel()

	private var gridItems: [GridItem] =
	[
		GridItem(
			.adaptive(
				minimum: 100,
				maximum: 200),
			spacing: 16
		)
	]
	
	var body: some View {
		NavigationStack {
			ScrollView {
				LazyVGrid(columns: gridItems) {
					ForEach(viewModel.items) { item in
						InventoryListItemView(item: item)
							.onDrag {
								guard let usdzURL = item.usdzURL else { return NSItemProvider() }
								return NSItemProvider(object: USDZItemProvider(usdzURL: usdzURL))
							}
					}
				}
			}
		}
    }
}

#Preview {
	@StateObject var navVM = NavigationViewModel()
	
	return NavigationStack {
		InventoryListView()
			.environmentObject(navVM)
	}
}
