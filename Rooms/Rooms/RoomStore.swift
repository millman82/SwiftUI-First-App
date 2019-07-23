//
//  RoomStore.swift
//  Rooms
//
//  Created by Tim Miller on 7/23/19.
//  Copyright © 2019 Tim Miller. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore: BindableObject {
    
    var rooms: [Room] {
        didSet { willChange.send() }
    }
    
    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
    
    var willChange = PassthroughSubject<Void, Never>()
}
