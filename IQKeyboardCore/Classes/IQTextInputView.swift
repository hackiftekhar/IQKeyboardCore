//
//  IQTextInputView.swift
//  https://github.com/hackiftekhar/IQKeyboardCore
//  Copyright (c) 2013-24 Iftekhar Qurashi.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

@objc public protocol IQTextInputView where Self: UIView {

    @available(iOS 16.0, *)
    @objc var isFindInteractionEnabled: Bool { get }

    @available(iOS 16.0, *)
    @objc var findInteraction: UIFindInteraction? { get }

    @objc var returnKeyType: UIReturnKeyType { get set }
    @objc var keyboardAppearance: UIKeyboardAppearance { get set }

    @objc var isEnabled: Bool { get }

    @objc var inputAccessoryView: UIView? { get set }
}

extension UITextField: IQTextInputView {

    @available(iOS 16.0, *)
    public var isFindInteractionEnabled: Bool { false }

    @available(iOS 16.0, *)
    public var findInteraction: UIFindInteraction? { nil }
}

extension UITextView: IQTextInputView {
    public var isEnabled: Bool { isEditable }
}
