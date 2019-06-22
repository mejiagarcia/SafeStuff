//
//  SS+Array+Extensions.swift
//  Pods-SafeStuff_Example
//
//  Created by Carlos Mejia on 22/06/19.
//

import Foundation

extension Array {
    public func safePosition(_ index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
