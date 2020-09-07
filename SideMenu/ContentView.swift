//
//  ContentView.swift
//  SideMenu
//
//  Created by 野澤拓己 on 2020/09/07.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var size = UIScreen.main.bounds.width / 1.6
    
    var body: some View {
        
        
        ZStack {
            
            Color.orange
            
            // main home page components here....
            NavigationView {
                
                List(0..<5) { _ in
                    
                    Text("Hello")
                    
                }.navigationBarTitle("Home")
                .navigationBarItems(leading: Button(action: {
                    
                    self.size = 0
                    
                }, label: {
                    
                    Image("menu").resizable().frame(width: 20, height: 20)
                    
                })).foregroundColor(.black)
            }
            
            HStack {
                
                menu(size: $size)
                    .padding(.leading, -size)
                    .offset(x: -size)
                Spacer()
            }
            
        }.animation(.spring())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct menu : View{
    
    @Binding var size: CGFloat
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Spacer()
                 
                Button(action: {
                    
                    self.size = UIScreen.main.bounds.width / 1.6
                    
                }) {
                    
                    Image("close" ).resizable().frame(width: 15, height: 15).padding()
                    
                }.background(Color.red)
                    .foregroundColor(.white)
                .clipShape(Circle())
//                .padding()
                
            }
            
            HStack {
                
                Image(systemName: "house.fill").resizable().frame(width: 25, height: 25).padding()
                Text("Home").fontWeight(.heavy)
                Spacer()
                 
            }
            
            HStack {
                
                Image(systemName: "folder.fill").resizable().frame(width: 25, height: 25).padding()
                Text("Files").fontWeight(.heavy)
                Spacer()
                 
            }
            
            HStack {
                
                Image(systemName: "paperplane.fill").resizable().frame(width: 25, height: 25).padding()
                Text("Send").fontWeight(.heavy)
                Spacer()
                 
            }
            
            HStack {
                
                Image(systemName: "pencil.circle.fill").resizable().frame(width: 25, height: 25).padding()
                Text("Edit").fontWeight(.heavy)
                Spacer()
                 
            }
            
            Spacer()
            
        }.frame(width: UIScreen.main.bounds.width / 1.6)
            .background(Color.white)
        
        
//        if u want to changge swipe men background color
    }
}

