//
//  ContentView.swift
//  StateDemo
//
//  Created by Bhushan Mokal on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    var body: some View {
        HStack(alignment: .center){
            Button(action: { increment() },
                   label: { Image(systemName: "plus")
                    .frame(width: 70,height: 70)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.red,lineWidth: 2)
                    }
                
            })
            Text("\(counter)")
                .frame(width: 100, alignment: .center)
            Button(action: { decrement() },
                   label: { Image(systemName: "minus")
                    .frame(width: 70,height: 70)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.red,lineWidth: 2)
                    }
                   })
            
        }
        .padding()
    }
    
    func increment(){
        self.counter += 1
    }
    
    func decrement(){
        self.counter -= 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
