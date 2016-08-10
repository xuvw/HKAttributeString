//
//  NSMutableAttributedString+HKExts.swift
//  HKAttributeString
//
//  Created by heke on 16/8/9.
//  Copyright © 2016年 mhk. All rights reserved.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    
    /**
     设置字体
     */
    func setFont(font: UIFont, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSFontAttributeName, value: font, range: range)
        return self
    }
    
    /**
     设置文字颜色
     */
    func setForegroundColor(fColor: UIColor, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSForegroundColorAttributeName, value: fColor, range: range)
        return self
    }
    
    /**
     设置背景颜色
     */
    func setBackgroundColor(bColor: UIColor, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSBackgroundColorAttributeName, value: bColor, range: range)
        return self
    }
    
    /**
     设置连字符
     其中：LigatureNum只能取值：0：不实用连字符；1使用默认连字符
     */
    func setLigature(LigatureNum: Int, range: NSRange) -> NSMutableAttributedString {
        
        self.addAttribute(NSLigatureAttributeName, value: NSNumber(integer: LigatureNum), range: range)
        return self
    }
    
    /**
     设置字距kerning
     其中：LigatureNum只能取值：0：不实用连字符；1使用默认连字符
     */
    func setKern(KernValue: Float, range: NSRange) -> NSMutableAttributedString {
        
        self.addAttribute(NSKernAttributeName, value: NSNumber(float: KernValue), range: range)
        return self
    }
    
    /**
     设置删除线
     */
    func setStrikethroughStyle(styleValue: Int, range: NSRange) -> NSMutableAttributedString {
        
        self.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: styleValue), range: range)
        return self
    }
    
    /**
     设置底线
     */
    func setUnderLineStyle(styleValue: Int, range: NSRange) -> NSMutableAttributedString {
        
        self.addAttribute(NSUnderlineStyleAttributeName, value: NSNumber(integer: styleValue), range: range)
        return self
    }
    
    /**
     设置文字描边颜色
     */
    func setStrokeColor(bColor: UIColor, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSStrokeColorAttributeName, value: bColor, range: range)
        return self
    }
    
    /**
     设置描边宽度
     */
    func setStrokeWidth(KernValue: Float, range: NSRange) -> NSMutableAttributedString {
        
        self.addAttribute(NSStrokeWidthAttributeName, value: NSNumber(float: KernValue), range: range)
        return self
    }
    
    /**
     NSShadowAttributeName
     */
    func setShadow(shadow: NSShadow, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSShadowAttributeName, value: shadow, range: range)
        return self
    }
    
    /**
     NSTextEffectAttributeName
     目前只有：NSTextEffectLetterpressStyle可用
     */
    func setTextEffect(shadow: String, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSTextEffectAttributeName, value: shadow, range: range)
        return self
    }
    
    /**
     NSAttachmentAttributeName
     */
    func setAttachment(imageAttachment: UIImage, size: CGSize, index: Int) ->NSMutableAttributedString {
        let attachment = NSTextAttachment()
        attachment.image = imageAttachment
        attachment.bounds = CGRectMake(0, 0, size.width, size.height)
        let attachmentAttribute = NSAttributedString(attachment: attachment)
        self.insertAttributedString(attachmentAttribute, atIndex: index)
        
        return self
    }
    
    /**
     NSLinkAttributeName
     只支持NSTextView,需实现如下代理
     - (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange{
     return YES;
     }
     */
    func setLink(linkURL: NSURL, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSLinkAttributeName, value: linkURL, range: range)
        return self
    }
    
    /**
     NSBaselineOffsetAttributeName
     */
    func setBaselineOffset(offsetValue: Float, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSBaselineOffsetAttributeName, value:NSNumber(float: offsetValue) , range: range)
        return self
    }
    
    /**
     NSUnderlineColorAttributeName
     */
    func setUnderlineColor(bColor: UIColor, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSUnderlineColorAttributeName, value: bColor, range: range)
        return self
    }
    
    /**
     NSStrikethroughColorAttributeName
     */
    func setStrikethroughColor(bColor: UIColor, range: NSRange) -> NSMutableAttributedString {
        self.addAttribute(NSStrikethroughColorAttributeName, value: bColor, range: range)
        return self
    }
    
    /**
     NSObliquenessAttributeName
     设置文字倾斜度
     */
    func setObliqueness(ObliquenessValue: Float, range: NSRange) -> NSMutableAttributedString {
        
        self.addAttribute(NSObliquenessAttributeName, value: NSNumber(float: ObliquenessValue), range: range)
        return self
    }
    
    /**
     NSExpansionAttributeName
     */
    func setExpansion(ExpansionValue: Float, range: NSRange) -> NSMutableAttributedString {
        
        self.addAttribute(NSExpansionAttributeName, value: NSNumber(float: ExpansionValue), range: range)
        return self
    }
    
    /**
     NSWritingDirectionAttributeName
     */
//    func setWritingDirection(ExpansionValue: Float, range: NSRange) -> NSMutableAttributedString {
//        
//        self.addAttribute(NSWritingDirectionAttributeName, value: NSNumber(float: ExpansionValue), range: range)
//        return self
//    }
}

/**
 
 http://www.jianshu.com/p/6665c088bd01
 http://blog.csdn.net/ys410900345/article/details/25976179
 
 @available(iOS 6.0, *)
 --public let NSFontAttributeName: String // UIFont, default Helvetica(Neue) 12
 @available(iOS 6.0, *)
 --public let NSParagraphStyleAttributeName: String // NSParagraphStyle, default defaultParagraphStyle
 @available(iOS 6.0, *)
 --public let NSForegroundColorAttributeName: String // UIColor, default blackColor
 @available(iOS 6.0, *)
 --public let NSBackgroundColorAttributeName: String // UIColor, default nil: no background
 @available(iOS 6.0, *)
 --public let NSLigatureAttributeName: String // NSNumber containing integer, default 1: default ligatures, 0: no ligatures
 @available(iOS 6.0, *)
 --public let NSKernAttributeName: String // NSNumber containing floating point value, in points; amount to modify default kerning. 0 means kerning is disabled.
 @available(iOS 6.0, *)
 --public let NSStrikethroughStyleAttributeName: String // NSNumber containing integer, default 0: no strikethrough
 @available(iOS 6.0, *)
 --public let NSUnderlineStyleAttributeName: String // NSNumber containing integer, default 0: no underline
 @available(iOS 6.0, *)
 --public let NSStrokeColorAttributeName: String // UIColor, default nil: same as foreground color
 @available(iOS 6.0, *)
 --public let NSStrokeWidthAttributeName: String // NSNumber containing floating point value, in percent of font point size, default 0: no stroke; positive for stroke alone, negative for stroke and fill (a typical value for outlined text would be 3.0)
 @available(iOS 6.0, *)
 --public let NSShadowAttributeName: String // NSShadow, default nil: no shadow
 @available(iOS 7.0, *)
 --public let NSTextEffectAttributeName: String // NSString, default nil: no text effect
 
 @available(iOS 7.0, *)
 --public let NSAttachmentAttributeName: String // NSTextAttachment, default nil
 @available(iOS 7.0, *)
 --public let NSLinkAttributeName: String // NSURL (preferred) or NSString
 @available(iOS 7.0, *)
 --public let NSBaselineOffsetAttributeName: String // NSNumber containing floating point value, in points; offset from baseline, default 0
 @available(iOS 7.0, *)
 --public let NSUnderlineColorAttributeName: String // UIColor, default nil: same as foreground color
 @available(iOS 7.0, *)
 --public let NSStrikethroughColorAttributeName: String // UIColor, default nil: same as foreground color
 @available(iOS 7.0, *)
 --public let NSObliquenessAttributeName: String // NSNumber containing floating point value; skew to be applied to glyphs, default 0: no skew
 @available(iOS 7.0, *)
 --public let NSExpansionAttributeName: String // NSNumber containing floating point value; log of expansion factor to be applied to glyphs, default 0: no expansion
 
 @available(iOS 7.0, *)
 -public let NSWritingDirectionAttributeName: String // NSArray of NSNumbers representing the nested levels of writing direction overrides as defined by Unicode LRE, RLE, LRO, and RLO characters.  The control characters can be obtained by masking NSWritingDirection and NSTextWritingDirection values.  LRE: NSWritingDirectionLeftToRight|NSWritingDirectionEmbedding, RLE: NSWritingDirectionRightToLeft|NSWritingDirectionEmbedding, LRO: NSWritingDirectionLeftToRight|NSWritingDirectionOverride, RLO: NSWritingDirectionRightToLeft|NSWritingDirectionOverride,
 
 @available(iOS 6.0, *)
 public let NSVerticalGlyphFormAttributeName: String // An NSNumber containing an integer value.  0 means horizontal text.  1 indicates vertical text.  If not specified, it could follow higher-level vertical orientation settings.  Currently on iOS, it's always horizontal.  The behavior for any other value is undefined.
 
 // This defines currently supported values for NSUnderlineStyleAttributeName and NSStrikethroughStyleAttributeName. NSUnderlineStyle*, NSUnderlinePattern*, and NSUnderlineByWord are or'ed together to produce an underline style.
 */
