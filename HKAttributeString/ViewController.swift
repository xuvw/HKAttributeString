//
//  ViewController.swift
//  HKAttributeString
//
//  Created by heke on 16/8/9.
//  Copyright © 2016年 mhk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let rt = view.bounds
        
        let scrollView = UIScrollView(frame: rt)
        scrollView.contentSize = CGSizeMake(rt.size.width, rt.size.height * 1.4)
        view.addSubview(scrollView)
        
        var label = UILabel(frame: CGRectMake(10, 30, 200, 30))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        var mattributeString = NSMutableAttributedString(string: "fifl --连字符")
        
        mattributeString.setFont(UIFont(name: "futura", size: 30)!, range: NSMakeRange(0, 4))
        mattributeString.setLigature(1, range: NSMakeRange(0, 4))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 65, 200, 30))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "ijLj --调整字距")
        mattributeString.setKern(-1, range: NSMakeRange(0, 4))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 100, 200, 30))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整文字颜色")
        mattributeString.setForegroundColor(UIColor.redColor(), range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 135, 200, 30))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整背景色")
        mattributeString.setBackgroundColor(UIColor.redColor(), range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 170, 200, 30))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整字体")
        mattributeString.setFont(UIFont(name: "futura", size: 30)!, range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 205, 200, 30))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整删除线样式")
        mattributeString.setStrikethroughStyle(NSUnderlineStyle.StyleSingle.rawValue, range: NSMakeRange(0, 9))
        mattributeString.setStrikethroughColor(UIColor.greenColor(), range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 240, 200, 30))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整底线样式")
        mattributeString.setUnderLineStyle(NSUnderlineStyle.StyleSingle.rawValue, range: NSMakeRange(0, 9))
        mattributeString.setUnderlineColor(UIColor.greenColor(), range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 275, rt.size.width - 10, 50))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整描边样式")
        mattributeString.setFont(UIFont(name: "futura", size: 49)!, range: NSMakeRange(0, 9))
        mattributeString.setForegroundColor(UIColor.whiteColor(), range: NSMakeRange(0, 9))
        mattributeString.setStrokeColor(UIColor.redColor(), range: NSMakeRange(0, 9))
        mattributeString.setStrokeWidth(2, range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 330, rt.size.width - 10, 40))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整文字阴影")
        mattributeString.setFont(UIFont(name: "futura", size: 30)!, range: NSMakeRange(0, 9))
        mattributeString.setForegroundColor(UIColor.whiteColor(), range: NSMakeRange(0, 9))
        var shadow = NSShadow.shadowWith(CGSizeMake(0, 0), BlurRadius: 6, Color: UIColor.grayColor())
        mattributeString.setShadow(shadow, range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 375, rt.size.width - 10, 40))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整文字效果")
        mattributeString.setFont(UIFont(name: "futura", size: 30)!, range: NSMakeRange(0, 9))
        mattributeString.setForegroundColor(UIColor.grayColor(), range: NSMakeRange(0, 9))
        mattributeString.setTextEffect(NSTextEffectLetterpressStyle, range: NSMakeRange(0, 9))
        shadow = NSShadow.shadowWith(CGSizeMake(0, 0), BlurRadius: 6, Color: UIColor.grayColor())
        mattributeString.setShadow(shadow, range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 420, rt.size.width - 10, 40))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --添加图片")
        mattributeString.setFont(UIFont(name: "futura", size: 30)!, range: NSMakeRange(0, 9))
        
        mattributeString.setAttachment(UIImage(named: "attachment")!, size: CGSizeMake(30, 30), index: 5)
        
        mattributeString.setAttachment(UIImage(named: "attachment")!, size: CGSizeMake(30, 30), index: 2)
        
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 465, rt.size.width - 10, 40))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整偏移量")
        mattributeString.setFont(UIFont(name: "futura", size: 30)!, range: NSMakeRange(0, 9))
        mattributeString.setForegroundColor(UIColor.grayColor(), range: NSMakeRange(0, 9))
        mattributeString.setBaselineOffset(-5, range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 510, rt.size.width - 10, 40))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整倾斜度")
        mattributeString.setFont(UIFont(name: "futura", size: 30)!, range: NSMakeRange(0, 9))
        mattributeString.setForegroundColor(UIColor.grayColor(), range: NSMakeRange(0, 9))
        mattributeString.setObliqueness(-0.5, range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
        
        //
        label = UILabel(frame: CGRectMake(10, 555, rt.size.width - 10, 40))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollView.addSubview(label)
        
        mattributeString = NSMutableAttributedString(string: "textColor --调整字形大小")
        mattributeString.setFont(UIFont(name: "futura", size: 30)!, range: NSMakeRange(0, 9))
        mattributeString.setForegroundColor(UIColor.grayColor(), range: NSMakeRange(0, 9))
        mattributeString.setExpansion(0.1, range: NSMakeRange(0, 9))
        label.attributedText = mattributeString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

