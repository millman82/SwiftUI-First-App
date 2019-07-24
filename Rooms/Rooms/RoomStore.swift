//
//  RoomStore.swift
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
