//
//  HostingController.swift
//  WatchActivityAppReplicating Extension
//
//  Created by Ryan Rauch on 4/13/20.
//  Copyright © 2020 Exyte. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<WatchContentView> {
    override var body: WatchContentView {
        return WatchContentView()
    }
}
