//
//  ContentView.swift
//  ValueTypeVSReferenceType
//
//  Created by ramil on 14.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var ref1: String = ""
    @State private var ref2: String = ""
    @State private var val1: String = ""
    @State private var val2: String = ""
    
    var body: some View {
        VStack {
            Text("Value type vs reference type")
                .font(.title)
                .padding()
            VStack(alignment: .leading) {
                Group {
                    Text("e.g. Class:")
                    Text(self.ref1)
                    Text(self.ref2)
                }
                Divider()
                Group {
                    Text("e.g. Struct:")
                    Text(self.val1)
                    Text(self.val2)
                }
            }.padding(50)
        }.onAppear() {
            self.reference()
            self.value()
        }
    }
    
    func reference() {
        let firstBird = ReferenceType()
        let secondBird = firstBird
        
        secondBird.bird = "Falcon"
        
        self.ref1 = "Reference type of firstBird: \(firstBird.bird)"
        self.ref2 = "Reference type of secondBird: \(secondBird.bird)"
    }
    
    func value() {
        let firstBird = ValueType()
        var secondBird = firstBird
        
        secondBird.bird = "Falcon"
        
        self.val1 = "Value type of firstBird: \(firstBird.bird)"
        self.val2 = "Value type of secondBird: \(secondBird.bird)"
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
