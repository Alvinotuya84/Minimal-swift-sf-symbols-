//
//  ContentView.swift
//  AirBnB Clone
//
//  Created by Alvin on 17/04/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var batteryLevel = 0.9
    @State private var showingAlert = false


    var body: some View {

        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color("lightBlueAir")]), startPoint: UnitPoint.topLeading, endPoint: UnitPoint.bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 8 ){
                Text("Testing").font(.system(size: 30,weight: .medium,design: .serif)).foregroundColor(.white).padding()
                VStack{
                    Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(
                            width: 100,
                            height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/
                        )
                    Text("75").font(.system(size: 70,design: .serif)).foregroundColor(.white)
                }.padding(.bottom,50)
                    
                    Spacer()
                Button{
                    showingAlert=true
                }label: {
                    Text("Mark X").frame(
                    width: 280,
                    height: 50
                    
                    ).background(Color.white).font(.system(size: 20,design: .serif)).cornerRadius(20).alert(isPresented: $showingAlert) {
                        Alert(title: Text("Test alert"), message: Text("Shukran"), dismissButton: .default(Text("Close")))
                    }
                }
                Spacer()
                
                }
                HStack(){
                    WeatherDayView(
                    dayOfWeek: "Mon", imageName: "cloud.sun.fill", temperature: 70
                    )
                    WeatherDayView(
                    dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 70
                    )
                    WeatherDayView(
                    dayOfWeek: "Wed", imageName: "cloud.sun.fill", temperature: 70
                    )
                    WeatherDayView(
                    dayOfWeek: "Thur", imageName: "cloud.sun.fill", temperature: 70
                    )
                    WeatherDayView(
                    dayOfWeek: "Fri", imageName: "cloud.sun.fill", temperature: 70
                    )
                   

                  
                   
                }
                
                
            
        }

    }

    
}








#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

struct WeatherDayView: View {
    var dayOfWeek :String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 2){
            Text("\(dayOfWeek)").foregroundColor(.white).font(.system(size: 30,design: .serif))
            Image(systemName: "\(imageName)").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(
                width: 50,
                height: 50
            )
            Text("\(temperature)").foregroundColor(.white).font(.system(size: 30,design: .serif))
        }
    }
}
