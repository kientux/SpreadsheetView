//
//  SpreadsheetView+Utils.swift
//  SpreadsheetView
//
//  Created by Kien Nguyen on 7/29/20.
//  Copyright © 2020 Kishikawa Katsumi. All rights reserved.
//

import Foundation

public extension SpreadsheetView {
    var isFrozenRowShadowEnabled: Bool {
        get {
            rowHeaderView.isDropShadowEnabled
        }
        set {
            rowHeaderView.isDropShadowEnabled = newValue
            cornerView.isDropShadowEnabled = newValue
            rowHeaderView.layer.masksToBounds = !newValue
            cornerView.layer.masksToBounds = !newValue
            
            if !newValue {
                frozenRowShadowOpacity = 0
            } else {
                frozenRowShadowOpacity = 0.5
                frozenRowShadowRadius = 4
            }
        }
    }
    
    var frozenRowShadowOpacity: Float {
        get {
            rowHeaderView.layer.shadowOpacity
        }
        set {
            rowHeaderView.layer.shadowOpacity = newValue
            cornerView.layer.shadowOpacity = newValue
        }
    }
    
    var frozenRowShadowRadius: CGFloat {
        get {
            rowHeaderView.layer.shadowRadius
        }
        set {
            rowHeaderView.layer.shadowRadius = newValue
            cornerView.layer.shadowRadius = newValue

            rowHeaderView.layer.shadowOffset = CGSize(width: -newValue, height: 0)
            cornerView.layer.shadowOffset = CGSize(width: -newValue, height: 0)
        }
    }
    
    var frozenRowShadowColor: CGColor? {
        get {
            rowHeaderView.layer.shadowColor
        }
        set {
            rowHeaderView.layer.shadowColor = newValue
            cornerView.layer.shadowColor = newValue
        }
    }
}
