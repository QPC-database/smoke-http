// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
//  MockCoreInvocationReporting.swift
//  SmokeHTTPClient
//
import Foundation
import Logging
import NIO

public typealias MockCoreInvocationReporting =
    StandardHTTPClientCoreInvocationReporting<MockInvocationTraceContext>

/**
  A type conforming to the `HTTPClientCoreInvocationReporting` protocol, predominantly for testing.
 */
public extension MockCoreInvocationReporting {
    init(
            logger: Logger = Logger(label: "com.amazon.SmokeHTTPClient.MockCoreInvocationReporting"),
            internalRequestId: String = "internalRequestId",
            eventLoop: EventLoop?,
            outwardsRequestAggregator: OutwardsRequestAggregator? = nil) {
        self.logger = logger
        self.internalRequestId = internalRequestId
        self.traceContext = MockInvocationTraceContext()
        self.eventLoop = eventLoop
        self.outwardsRequestAggregator = outwardsRequestAggregator
    }
}
 
 
    
