//
//  SplashScreen.swift
//  KPSSci
//
//  Created by Dilara Acikgoz on 9.09.2022.
//

import SwiftUI

    


struct SplashScreen: View {
    
    @State var isActive : Bool = false
    @State private var size = 0.4
    @State private var opacity = 0.0
    
    var body: some View {
        if isActive {
            ContentView ()
        }else {
            ZStack {
                
                Image("background")
                    .ignoresSafeArea(.all)
                    .scaledToFill()
                
            VStack {
                    
                Image("spicon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.1)) {
                self.size = 0.6
                self.opacity = 1.0
                    }
                }
            }
            .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
