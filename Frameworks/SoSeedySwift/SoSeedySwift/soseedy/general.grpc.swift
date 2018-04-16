//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: general.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

public protocol Soseedy_SeedyGeneralGetHealthCheckCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyGeneralGetHealthCheckCallBase: ClientCallUnaryBase<Soseedy_HealthCheckRequest, Soseedy_HealthCheck>, Soseedy_SeedyGeneralGetHealthCheckCall {
  override class var method: String { return "/soseedy.SeedyGeneral/GetHealthCheck" }
}

public protocol Soseedy_SeedyGeneralSeedDataCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyGeneralSeedDataCallBase: ClientCallUnaryBase<Soseedy_SeedDataRequest, Soseedy_SeededData>, Soseedy_SeedyGeneralSeedDataCall {
  override class var method: String { return "/soseedy.SeedyGeneral/SeedData" }
}


/// Instantiate Soseedy_SeedyGeneralServiceClient, then call methods of this protocol to make API calls.
public protocol Soseedy_SeedyGeneralService: ServiceClient {
  /// Synchronous. Unary.
  func getHealthCheck(_ request: Soseedy_HealthCheckRequest) throws -> Soseedy_HealthCheck
  /// Asynchronous. Unary.
  func getHealthCheck(_ request: Soseedy_HealthCheckRequest, completion: @escaping (Soseedy_HealthCheck?, CallResult) -> Void) throws -> Soseedy_SeedyGeneralGetHealthCheckCall

  /// Synchronous. Unary.
  func seedData(_ request: Soseedy_SeedDataRequest) throws -> Soseedy_SeededData
  /// Asynchronous. Unary.
  func seedData(_ request: Soseedy_SeedDataRequest, completion: @escaping (Soseedy_SeededData?, CallResult) -> Void) throws -> Soseedy_SeedyGeneralSeedDataCall

}

public final class Soseedy_SeedyGeneralServiceClient: ServiceClientBase, Soseedy_SeedyGeneralService {
  /// Synchronous. Unary.
  public func getHealthCheck(_ request: Soseedy_HealthCheckRequest) throws -> Soseedy_HealthCheck {
    return try Soseedy_SeedyGeneralGetHealthCheckCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func getHealthCheck(_ request: Soseedy_HealthCheckRequest, completion: @escaping (Soseedy_HealthCheck?, CallResult) -> Void) throws -> Soseedy_SeedyGeneralGetHealthCheckCall {
    return try Soseedy_SeedyGeneralGetHealthCheckCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  public func seedData(_ request: Soseedy_SeedDataRequest) throws -> Soseedy_SeededData {
    return try Soseedy_SeedyGeneralSeedDataCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func seedData(_ request: Soseedy_SeedDataRequest, completion: @escaping (Soseedy_SeededData?, CallResult) -> Void) throws -> Soseedy_SeedyGeneralSeedDataCall {
    return try Soseedy_SeedyGeneralSeedDataCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
public protocol Soseedy_SeedyGeneralProvider {
  func getHealthCheck(request: Soseedy_HealthCheckRequest, session: Soseedy_SeedyGeneralGetHealthCheckSession) throws -> Soseedy_HealthCheck
  func seedData(request: Soseedy_SeedDataRequest, session: Soseedy_SeedyGeneralSeedDataSession) throws -> Soseedy_SeededData
}

public protocol Soseedy_SeedyGeneralGetHealthCheckSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyGeneralGetHealthCheckSessionBase: ServerSessionUnaryBase<Soseedy_HealthCheckRequest, Soseedy_HealthCheck>, Soseedy_SeedyGeneralGetHealthCheckSession {}

public protocol Soseedy_SeedyGeneralSeedDataSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyGeneralSeedDataSessionBase: ServerSessionUnaryBase<Soseedy_SeedDataRequest, Soseedy_SeededData>, Soseedy_SeedyGeneralSeedDataSession {}


/// Main server for generated service
public final class Soseedy_SeedyGeneralServer: ServiceServer {
  private let provider: Soseedy_SeedyGeneralProvider

  public init(address: String, provider: Soseedy_SeedyGeneralProvider) {
    self.provider = provider
    super.init(address: address)
  }

  public init?(address: String, certificateURL: URL, keyURL: URL, provider: Soseedy_SeedyGeneralProvider) {
    self.provider = provider
    super.init(address: address, certificateURL: certificateURL, keyURL: keyURL)
  }

  public init?(address: String, certificateString: String, keyString: String, provider: Soseedy_SeedyGeneralProvider) {
    self.provider = provider
    super.init(address: address, certificateString: certificateString, keyString: keyString)
  }

  /// Start the server.
  public override func handleMethod(_ method: String, handler: Handler, queue: DispatchQueue) throws -> Bool {
    let provider = self.provider
    switch method {
    case "/soseedy.SeedyGeneral/GetHealthCheck":
      try Soseedy_SeedyGeneralGetHealthCheckSessionBase(
        handler: handler,
        providerBlock: { try provider.getHealthCheck(request: $0, session: $1 as! Soseedy_SeedyGeneralGetHealthCheckSessionBase) })
          .run(queue: queue)
      return true
    case "/soseedy.SeedyGeneral/SeedData":
      try Soseedy_SeedyGeneralSeedDataSessionBase(
        handler: handler,
        providerBlock: { try provider.seedData(request: $0, session: $1 as! Soseedy_SeedyGeneralSeedDataSessionBase) })
          .run(queue: queue)
      return true
    default:
      return false
    }
  }
}
