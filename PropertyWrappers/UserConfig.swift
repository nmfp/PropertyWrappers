//
//  UserConfig.swift
//  PropertyWrappers
//
//  Created by Nuno Pereira on 07/06/2019.
//  Copyright © 2019 nMfpCoding. All rights reserved.
//

import Foundation

///It is necessary to create this new wrapper because class stored properties are not supported by class extensions.
///So it is not possible to add a property wrapper to a UserDefaults extensions
///
struct UserConfig {
    @UserDefault(key: "has_seen_kyc", defaultValue: false)
    static var hasSeenKYC: Bool
}
