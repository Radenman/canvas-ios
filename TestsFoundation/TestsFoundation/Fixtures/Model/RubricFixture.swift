//
// Copyright (C) 2018-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import CoreData
import Foundation
@testable import Core

extension Rubric {
    @discardableResult
    public static func make(
        from api: APIRubric = .make(),
        in context: NSManagedObjectContext = singleSharedTestDatabase.viewContext
    ) -> Rubric {
        let model = Rubric.save(api, in: context)
        try! context.save()
        return model
    }
}

extension RubricRating {
    @discardableResult
    public static func make(
        from api: APIRubricRating = .make(),
        in context: NSManagedObjectContext = singleSharedTestDatabase.viewContext
    ) -> RubricRating {
        let model = RubricRating.save(api, in: context)
        try! context.save()
        return model
    }
}

extension RubricAssessment {
    @discardableResult
    public static func make(
        from api: APIRubricAssessment = .make(),
        id: String = "1",
        submissionID: String = "1",
        in context: NSManagedObjectContext = singleSharedTestDatabase.viewContext
    ) -> RubricAssessment {
        let model = RubricAssessment.save(api, in: context, id: id, submissionID: submissionID)
        try! context.save()
        return model
    }
}
