//
//  Home.swift
//  Animation Challenge
//
//  Created by Victor on 2023/6/20.
//
//Refer:https://www.youtube.com/watch?v=TTftmkW9N8s&ab_channel=Kavsoft
import SwiftUI

struct Home: View {
    @StateObject var homeData = HomeViewModel()
    var body: some View {
        ZStack(alignment: .bottom){
            VStack(spacing:15){
                
                HStack {
                    Button(action: {}) {
                        Image(systemName: "rectangle.3.offgrid.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "bag.fill")
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.purple)
                            .clipShape(Circle())
                    }
                }
                .overlay(
                    Text("Nike")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                )
                .padding()
                
                ScrollView {
                    
                    VStack(alignment: .leading, spacing: 10,content: {
                        Text("Air Max Exosense `Atomic Powder`")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        Text("Nike")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Image("shoe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal,30)
                        
                        Text("Price")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        Text("$270.0")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.orange)
                    })
                    .padding(.horizontal)
                    .padding(.vertical,20)
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(20)
                    .overlay(
                        Capsule()
                            .fill(Color.purple)
                            .frame(width: 4, height: 45)
                            .padding(.top,25)
                        ,alignment:.topLeading
                    )
                    .padding()
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            homeData.showCart.toggle()
                        }
                    }
                }
            }
            .blur(radius: homeData.showCart ? 50 : 0)
            
            AddToCart()
                .environmentObject(homeData)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


struct AddToCart:View {
    
    
    var body: some View {
        VStack{
            
        }
    }
}
