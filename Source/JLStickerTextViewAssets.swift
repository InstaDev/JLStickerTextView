//
//  JLStickerTextViewAssets.swift
//  JLStickerTextView
//
//  Created by Артем  Емельянов  on 02.11.2021.
//

import UIKit

/// PKHUDAssets provides a set of default images, that can be supplied to the PKHUD's content views.
open class JLStickerTextViewAssets: NSObject {

    open class var crossImage: UIImage { return JLStickerTextViewAssets.bundledImage(named: "cross") }
    open class var checkmarkImage: UIImage { return JLStickerTextViewAssets.bundledImage(named: "checkmark") }

    internal class func bundledImage(named name: String) -> UIImage {
        let primaryBundle = Bundle(for: JLStickerTextViewAssets.self)
        if let image = UIImage(named: name, in: primaryBundle, compatibleWith: nil) {
            // Load image in cases where PKHUD is directly integrated
            return image
        }
        return UIImage()
    }
}
