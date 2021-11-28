//
//  ContentView.swift
//  TestArtistraz
//
//  Created by Соколов Михаил on 28.11.2021.
//

import SwiftUI







struct ContentView: View {
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                VStack(spacing: 20){
                    
                CreatCat(labelCat: "cat0", scale: 1, tapedImage: false)
                    
                CreatCat(labelCat: "cat1", scale: 1, tapedImage: false)
                    
                CreatCat(labelCat: "cat2", scale: 1, tapedImage: false)
                    
                CreatCat(labelCat: "cat3", scale: 1, tapedImage: false)
                    
                CreatCat(labelCat: "cat4", scale: 1, tapedImage: false)
                    
                CreatCat(labelCat: "cat5", scale: 1, tapedImage: false)
                }
                .frame(width: 583.0)
            }
        .navigationBarTitle("Cats", displayMode: .inline)
                }
                
    }
}

struct CreatCat: View {
    
    @State var labelCat: String
    @State var scale: CGFloat = 1
    @State var tapedImage = false
    
    
    var body: some View{
        
        VStack{
            
            Button(action: {
                self.tapedImage.toggle()
                if tapedImage == false{
                    self.scale -= 0.6

                    tapedImage = false
                }else{
                    self.scale += 0.6
                    tapedImage = true
                }
            }, label: {
                VStack{
                Image(labelCat)
                        .resizable()
                        .frame(width: 150, height: 150)
                    .aspectRatio(contentMode: .fit)
                    .padding(1)
                if tapedImage {
                    
                    NavigationLink(
                        destination: Image("\(labelCat)"))
                            {
                                Text("Zoom")
                            }
                    .animation(.linear)
                    .padding(.leading, 100)

                        }
                }
            })
            .scaleEffect(scale)
            .animation(.linear)
            .padding(20)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }

        }

