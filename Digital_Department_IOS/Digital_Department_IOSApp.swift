//
//  Digital_Department_IOSApp.swift
//  Digital_Department_IOS
//
//  Created by user225687 on 11/17/23.
//

import SwiftUI

@main
struct Digital_Department_IOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

struct ContentView: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack {
                    Header()
                    Spacer(minLength: 40)
                    DoctorInfo()
                    Spacer(minLength: 20)
                    Search()
                    Spacer(minLength: 2)
                    InfoButtons()
                    Spacer(minLength: 20)
                    NearDoctors()
                    Spacer(minLength: 100)
                }
            }
            VStack{
                Spacer()
                NavigationButtons()
            }
            .frame(maxHeight: .infinity)
        }
    }
}
