// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: api/enrollments.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Soseedy_EnrollUserRequest: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".EnrollUserRequest"

  var courseID: Int64 = 0

  var userID: Int64 = 0

  var enrollmentType: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.courseID)
      case 2: try decoder.decodeSingularInt64Field(value: &self.userID)
      case 3: try decoder.decodeSingularStringField(value: &self.enrollmentType)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.courseID != 0 {
      try visitor.visitSingularInt64Field(value: self.courseID, fieldNumber: 1)
    }
    if self.userID != 0 {
      try visitor.visitSingularInt64Field(value: self.userID, fieldNumber: 2)
    }
    if !self.enrollmentType.isEmpty {
      try visitor.visitSingularStringField(value: self.enrollmentType, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Soseedy_EnrollUserInSectionRequest: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".EnrollUserInSectionRequest"

  var sectionID: Int64 = 0

  var userID: Int64 = 0

  var enrollmentType: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.sectionID)
      case 2: try decoder.decodeSingularInt64Field(value: &self.userID)
      case 3: try decoder.decodeSingularStringField(value: &self.enrollmentType)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.sectionID != 0 {
      try visitor.visitSingularInt64Field(value: self.sectionID, fieldNumber: 1)
    }
    if self.userID != 0 {
      try visitor.visitSingularInt64Field(value: self.userID, fieldNumber: 2)
    }
    if !self.enrollmentType.isEmpty {
      try visitor.visitSingularStringField(value: self.enrollmentType, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Soseedy_Enrollment: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".Enrollment"

  var courseID: Int64 = 0

  var sectionID: Int64 = 0

  var userID: Int64 = 0

  var type: String = String()

  var role: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.courseID)
      case 2: try decoder.decodeSingularInt64Field(value: &self.sectionID)
      case 3: try decoder.decodeSingularInt64Field(value: &self.userID)
      case 4: try decoder.decodeSingularStringField(value: &self.type)
      case 5: try decoder.decodeSingularStringField(value: &self.role)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.courseID != 0 {
      try visitor.visitSingularInt64Field(value: self.courseID, fieldNumber: 1)
    }
    if self.sectionID != 0 {
      try visitor.visitSingularInt64Field(value: self.sectionID, fieldNumber: 2)
    }
    if self.userID != 0 {
      try visitor.visitSingularInt64Field(value: self.userID, fieldNumber: 3)
    }
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 4)
    }
    if !self.role.isEmpty {
      try visitor.visitSingularStringField(value: self.role, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "soseedy"

extension Soseedy_EnrollUserRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "courseId"),
    2: .same(proto: "userId"),
    3: .same(proto: "enrollmentType"),
  ]

  func _protobuf_generated_isEqualTo(other: Soseedy_EnrollUserRequest) -> Bool {
    if self.courseID != other.courseID {return false}
    if self.userID != other.userID {return false}
    if self.enrollmentType != other.enrollmentType {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Soseedy_EnrollUserInSectionRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sectionId"),
    2: .same(proto: "userId"),
    3: .same(proto: "enrollmentType"),
  ]

  func _protobuf_generated_isEqualTo(other: Soseedy_EnrollUserInSectionRequest) -> Bool {
    if self.sectionID != other.sectionID {return false}
    if self.userID != other.userID {return false}
    if self.enrollmentType != other.enrollmentType {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Soseedy_Enrollment: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "courseId"),
    2: .same(proto: "sectionId"),
    3: .same(proto: "userId"),
    4: .same(proto: "type"),
    5: .same(proto: "role"),
  ]

  func _protobuf_generated_isEqualTo(other: Soseedy_Enrollment) -> Bool {
    if self.courseID != other.courseID {return false}
    if self.sectionID != other.sectionID {return false}
    if self.userID != other.userID {return false}
    if self.type != other.type {return false}
    if self.role != other.role {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
