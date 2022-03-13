//
//  MockURLProtocol.swift
//  Batch 5 DemoTests
//
//  Created by Sheharyar Irfan on 2022-03-11.
//

import Foundation

class MockURLProtocol: URLProtocol {
    
    static var stubResponseData: Data?
    static var error: Error?
    
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    
    
    override func startLoading() {
 
        if let error = MockURLProtocol.error {
            self.client?.urlProtocol(self, didFailWithError: error)
        } else {
            self.client?.urlProtocol(self, didLoad: MockURLProtocol.stubResponseData ?? Data())
        }
 
        self.client?.urlProtocolDidFinishLoading(self)
    }
    
    override func stopLoading() { }
    
}
