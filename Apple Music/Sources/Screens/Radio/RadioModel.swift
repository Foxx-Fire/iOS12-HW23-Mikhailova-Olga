//
//  RadioModel.swift
//  Apple Music
//
//  Created by FoxxFire on 10.06.2024.
//

import Foundation

struct RadioModel: Identifiable, Hashable {
    var id = UUID()
    var describing: [[String]]
    var screensaver: String
    var isChoosed: Bool = false
    
    static func getRadio() -> [RadioModel] {
        [
            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "square.and.arrow.up.circle.fill"),
            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "rectangle.portrait.and.arrow.right.fill"),
            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "pencil"),
            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "eraser"),
            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "fsquare.and.pencil"),
            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "rectangle.and.pencil.and.ellipsis")
//            RadioModel(describing: [[first], [second], [third]], screensaver: "first radio"),
//            RadioModel(describing: [[first], [second], [third]], screensaver: "first radio"),
//            RadioModel(describing: [[first], [second], [third]], screensaver: "first radio"),
//            RadioModel(describing: [[first], [second], [third]], screensaver: "first radio"),
//            RadioModel(describing: [[first], [second], [third]], screensaver: "first radio")
        ]
    }
    
//    static func getStations() -> [RadioModel] {
//        [
//            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "square.and.arrow.up.circle.fill"),
//            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "rectangle.portrait.and.arrow.right.fill"),
//            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "pencil"),
//            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "eraser"),
//            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "fsquare.and.pencil"),
//            RadioModel(describing: [["first"], ["second"], ["third"]], screensaver: "rectangle.and.pencil.and.ellipsis")
//        ]
//    }
}
