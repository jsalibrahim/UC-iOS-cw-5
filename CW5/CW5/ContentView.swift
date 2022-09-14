//
//  ContentView.swift
//  CW5
//
//  Created by Jenan Alibrahim on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var n = " "
    
    let emojies = ["😁", "😂", "😍", "😎", "🥳", "😔", "😡", "😭", "🤗", "🙄", "😵‍💫"]
    
    var body: some View {
        
        VStack{
            
            Text("اختار الايموجي الّي يعبر عنك اليوم")
                .font(.system(size: 20))
            
            Text(n)
                .font(.largeTitle)
                .padding()
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(emojies, id: \.self){ emoji in
                        Text(emoji)
                            .font(.largeTitle)
                            .onTapGesture {
                                n = emoji
                            }
                    }
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
