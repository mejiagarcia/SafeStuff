//
//  SafeTexts.swift
//  SafeStuff
//
//  Created by Carlos Mejia on 22/06/19.
//

import UIKit

protocol SafeTextProtocol {
    var safeText: String { get }
}

protocol SafeTitleProtocol {
    var safeTitle: String { get }
}

extension UITextField: SafeTextProtocol {
    public var safeText: String {
        return text ?? ""
    }
}

extension UILabel: SafeTextProtocol {
    public var safeText: String {
        return text ?? ""
    }
}

extension UIButton: SafeTextProtocol {
    public var safeText: String {
        return titleLabel?.text ?? ""
    }
}

extension UIBarButtonItem: SafeTitleProtocol {
    public var safeTitle: String {
        return title ?? ""
    }
}

extension UINavigationBar: SafeTitleProtocol {
    public var safeTitle: String {
        return topItem?.title ?? ""
    }
}

extension UINavigationItem: SafeTitleProtocol {
    public var safeTitle: String {
        return title ?? ""
    }
}

extension UIViewController: SafeTitleProtocol {
    public var safeTitle: String {
        return title ?? ""
    }
}
