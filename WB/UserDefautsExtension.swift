//
//  UserDefautsExtension.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 10/06/24.
//

import Foundation

extension UserDefaults {
    var isOnboardingShown: Bool {
        get {
            return (UserDefaults.standard.value(forKey: "isOnboardingShown") as? Bool) ?? false
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "isOnboardingShown")
        }
    }
}
