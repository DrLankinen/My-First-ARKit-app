//
//  ARDisplayView.swift
//  My First AR app
//
//  Created by Elias Lankinen on 8/29/20.
//  Copyright © 2020 Elias Lankinen. All rights reserved.
//

import SwiftUI
import RealityKit

struct ARDisplayView: View {
    var body: some View {
        ARViewContainer()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    @EnvironmentObject var data: DataModel
    func makeUIView(context: Context) -> ARView {
        data.arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}

struct ARDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        ARDisplayView()
    }
}
