//
//  ContentView.swift
//  cw-6-1
//
//  Created by Ahmed Alkhuder on 28/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var height = ""
    @State var weight = ""
    @State var calbmi = ""
    
    
    var body: some View {
        
        VStack{
            Text("مرحباً بك في حاسبة الBMI")
                .font(.largeTitle)
                .padding()
            HStack {
                Text("Height:")
                    .padding()

                TextField("Enter height", text: $height)

                Text("m")
                    .padding()
            }

            HStack{
                Text("Weight:")
                    .padding()

                TextField("Enter weight", text: $weight)

                Text("kg")
                    .padding()
            }

            Button(action:  {
                let h = Double(height) ?? 0.0
                let w = Double(weight) ?? 0.0
                calbmi = String( w / ( h * h ))
            }
            ,label: {Text("Calculate BMI")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .clipShape(Capsule())
            })

            Text(calbmi)


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
