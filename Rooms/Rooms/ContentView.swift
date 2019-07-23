//
//  ContentView.swift
//  Rooms
//
//  Created by Tim Miller on 7/23/19.
//  Copyright © 2019 Tim Miller. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []
    
    var body: some View {
        NavigationView {
            List(rooms) { room in
                RoomCell(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
#endif

struct RoomCell: View {
    let room: Room
    
    var body: some View {
        NavigationLink(destination: RoomDetail(room: room)) {
            Image(systemName: "photo")
            //Image(room.thumbnailName)
            //.cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
