//
//  HCYMediator+Ext.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import HCYMediatorKit

public extension HCYMediator {
    @objc func aiHomeViewController(parameters: [String: Any]?, callback _: @escaping ([String: Any]) -> Void) -> UIViewController? {
        var params: [AnyHashable: Any] = parameters ?? [:]
        params[kHCYMediatorParamsKeySwiftTargetModuleName] = "HCYAIPDSHomeCenterBC"
        if let viewController = performTarget("AIPDSHomeCenterBC", action: "HomeViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
