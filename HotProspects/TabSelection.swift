//
//  TabSelection.swift
//  HotProspects
//
//  Created by Mayur on 17/09/24.
//

import Foundation

@Observable
final class TabSelection{
    static let shared = TabSelection()
    private init(){}
    static var selectedTab = 2
    static var a = "mayur"
}
