//
//  RoomStore.swift
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
//    let willChange = PassthroughSubject<Void, Never>()
//
//    var rooms: [Room] {
//        didSet { willChange.send() }
//    }
//
//    init(rooms: [Room] = []) {
//        self.rooms = rooms
//    }

    @Published var rooms: [Room]
    
    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
}
