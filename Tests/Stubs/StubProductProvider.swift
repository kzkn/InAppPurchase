//
//  StubProductProvider.swift
//  InAppPurchase
//
//  Created by Jin Sasaki on 2017/04/11.
//  Copyright © 2017年 Jin Sasaki. All rights reserved.
//

import Foundation
import StoreKit
@testable import InAppPurchase

final class StubProductProvider: ProductProvidable {
    private let _result: Result<[SKProduct], InAppPurchase.Error>

    init(result: Result<[SKProduct], InAppPurchase.Error> = .success([])) {
        self._result = result
    }

    func fetch(productIdentifiers: Set<String>, requestId: String, handler: @escaping ProductHandler) {
        handler(_result)
    }
}
