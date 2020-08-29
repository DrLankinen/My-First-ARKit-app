//
//  ARUIView.swift
//  My First AR app
//
//  Created by Elias Lankinen on 8/29/20.
//  Copyright © 2020 Elias Lankinen. All rights reserved.
//

import SwiftUI

struct ARUIView: View {
    @EnvironmentObject var data: DataModel
    var body: some View {
        List {
            Toggle(isOn: $data.enableAR) {
                Text("AR")
            }
            Stepper("X: \(Int(data.xTranslation))", value: $data.xTranslation, in: -100...100)
            Stepper("Y: \(Int(data.yTranslation))", value: $data.yTranslation, in: -100...100)
            Stepper("Z: \(Int(data.zTranslation))", value: $data.zTranslation, in: -100...100)
        }
    }
}

struct ARUIView_Previews: PreviewProvider {
    static var previews: some View {
        ARUIView()
    }
}
