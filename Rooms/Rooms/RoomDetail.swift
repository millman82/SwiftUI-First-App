//
//  RoomDetail.swift
//  Rooms
//
//  Created by Tim Miller on 7/23/19.
//  Copyright © 2019 Tim Miller. All rights reserved.
//

import SwiftUI

struct RoomDetail: View {
    let room: Room
    
    var body: some View {
        Image(systemName: "photo")
//        Image(room.imageName)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
            .navigationBarTitle(Text(room.name), displayMode: .inline)
    }
}

#if DEBUG
struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RoomDetail(room: testData[0])
        }
    }
}
#endif
