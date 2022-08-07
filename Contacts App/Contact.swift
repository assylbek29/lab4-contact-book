//
//  Contact.swift
//  Contacts App
//
//  Created by admin on 07.08.2022.
//

import Foundation
import RealmSwift

class Contact: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var number: String = ""
    @objc dynamic var gender: String = ""
}
