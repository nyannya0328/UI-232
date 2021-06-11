//
//  Home.swift
//  UI-232
//
//  Created by にゃんにゃん丸 on 2021/06/11.
//

import SwiftUI

struct Home: View {
    @State var selected = "Help"
    @Namespace var animation
    var body: some View {
        VStack{
            
            HStack(spacing:15){
                
                TabButton(title: "Help", selected: $selected, animation: animation)
                
                TabButton(title: "Up", selected: $selected, animation: animation)
                
                
            }
            .padding(.horizontal)
           
            .padding(.top,5)
            
            Divider()
                .background(Color.blue)
                .padding(.top,5)
            
            
            Image("box")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            HStack{
                
                Text("Expect Your ArtBoad")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                
                Spacer()
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "gear")
                        .font(.system(size: 20, weight: .heavy))
                        .foregroundColor(.red)
                        
                })
               
                    
                
                
                
            }
            .padding(.horizontal)
            
            
            Divider()
                .background(Color.blue)
                .padding(.top,5)
            
            
            HStack{
                
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("I mentiond back in high scool I was a Cow")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Hey! Thats to me!")
                        .font(.callout)
                        .fontWeight(.light)
                        
                })
                 Spacer(minLength: 0)
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "house.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding(8)
                        .background(
                        
                        RoundedRectangle(cornerRadius: 2)
                            .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .butt, lineJoin: .miter))
                            .foregroundColor(.red)
                        
                        )
                })
                
                
            }
            .padding(.horizontal)
            .padding(.bottom,10)
            .offset(y: 10.0)
            
            
            
            
            
            
            
            
            
            
            
        }
        .buttonStyle(PlainButtonStyle())
        .frame(width: 350, height: 350)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct TabButton : View {
    var title : String
    @Binding var selected : String
    
    var animation : Namespace.ID
    var body: some View{
        
        Button(action: {
            
            withAnimation{
                
                selected = title
            }
            
        }) {
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(selected == title ? .white : .primary)
                .padding(.vertical,10)
                .frame(maxWidth: .infinity)
                .background(
                
                
                    ZStack{
                        
                        
                        if selected == title{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                            
                            
                        }
                        
                        else{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.primary)
                            
                            
                        }
                        
                    }
                
                )
                .contentShape(Rectangle())
            
                
            
            
            
        }
        
        
    }
}
