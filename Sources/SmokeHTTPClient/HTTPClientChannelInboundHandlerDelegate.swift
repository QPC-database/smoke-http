// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//  HTTPClientChannelInboundHandlerDelegate.swift
//  SmokeHTTPClient
//

import Foundation
import NIOHTTP1

public protocol HTTPClientChannelInboundHandlerDelegate {
    var specifyContentHeadersForZeroLengthBody: Bool { get }

    func addClientSpecificHeaders(handler: HTTPClientChannelInboundHandler) -> [(String, String)]

    func handleErrorResponses(responseHead: HTTPResponseHead, responseBodyData: Data?) -> HTTPClientError?
}

public struct DefaultHTTPClientChannelInboundHandlerDelegate {
    let specifyContentHeadersForZeroLengthBody: Bool = true

    func addClientSpecificHeaders(handler: HTTPClientChannelInboundHandler) -> [(String, String)] {
        return []
    }

    func handleErrorResponses(responseHead: HTTPResponseHead, responseBodyData: Data?) -> HTTPClientError? {
        return nil
    }
}
