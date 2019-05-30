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

extension Group {
    @discardableResult
    public static func make(
        from api: APIGroup = .make(),
        showOnDashboard: Bool = false,
        in context: NSManagedObjectContext = singleSharedTestDatabase.viewContext
    ) -> Group {
        let model = Group.save(api, in: context)
        model.showOnDashboard = showOnDashboard
        try! context.save()
        return model
    }
}
