//
//  ContentView.swift
//  My First AR app
//
//  Created by Elias Lankinen on 8/29/20.
//  Copyright © 2020 Elias Lankinen. All rights reserved.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @ObservedObject var data: DataModel = DataModel()
    var body: some View {
        HStack {
            ARUIView()
            if data.enableAR { ARDisplayView() }
            else { Spacer() }
        }
        .environmentObject(data)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
