//
//  GodEye.swift
//  Pods
//
//  Created by zixun on 16/12/27.
//
//

import Foundation
import AssistiveButton

open class GodEye: NSObject {
    
    open class func makeEye(with window:UIWindow, configuration: Configuration = Configuration()) -> AssistiveButton {
        LogRecordModel.create()
        CrashRecordModel.create()
        NetworkRecordModel.create()
        ANRRecordModel.create()
        CommandRecordModel.create()
        LeakRecordModel.create()
        
        return window.makeEye(with: configuration)
    }
}
