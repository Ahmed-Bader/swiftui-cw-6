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

//        NavigationView(content: {
//            NavigationLink(destination: Text("Destination")) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
//        })
        
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
                    
                    Text("KG")
                        .padding()
                }
                
                Button(action:  {
                                    let h = Double(height) ?? 1.0
                                    let w = Double(weight) ?? 1.0
                                    let bm = (w * (h / h))
                                    calbmi = String(bm)
                                 }
                                    ,label: {Text("Calculate BMI")})
                Text(calbmi)
               
                
            }
    }
}

//struct BMI: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        BMI()
    }
}
