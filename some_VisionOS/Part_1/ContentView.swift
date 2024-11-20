//
//  ContentView.swift
//  some_VisionOS
//
//  Created by Maksim Ponomarev on 11/18/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView1: View {
	let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
	@State var degrees: Double = 0.0
	
    var body: some View {
        VStack {
			HStack {
				Model3D(named: "Scene", bundle: realityKitContentBundle)
					.padding(.bottom, 50)
					.rotationEffect(.degrees(degrees))
					.rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))
				
				Divider()
				
				ShapesView()
					.rotationEffect(.degrees(degrees))

			}
            Text("Hello, world!")
        }
        .padding()
		.onReceive(timer) { input in
			if degrees >= 360 {
				degrees = 0
			}
			degrees += 20
		}
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
