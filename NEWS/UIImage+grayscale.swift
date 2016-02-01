//
//  UIImage+grayscale.swift
//  NEWS
//
//  https://github.com/devxoul/Hippo-iOS/blob/master/Hippo/Extensions/UIImage%2BGrayScale.swift
//

import UIKit

extension UIImage {
    func grayscale() -> UIImage {
        let imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
        let colorSpace = CGColorSpaceCreateDeviceGray();
        
        let width = Int(self.size.width)
        let height = Int(self.size.height)
        let context = CGBitmapContextCreate(nil, width, height, 8, 0, colorSpace, .allZeros);
        CGContextDrawImage(context, imageRect, self.CGImage!);
        
        let imageRef = CGBitmapContextCreateImage(context);
        let newImage = UIImage(CGImage: imageRef!)
        return newImage
    }
}
