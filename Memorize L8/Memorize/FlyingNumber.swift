//
//  FlyingNumber.swift
//  Memorize
//
//  Created by CS193P instructor on 4/03/23.
//

import SwiftUI

struct FlyingNumber: View {
    let number: Int
    
    var body: some View {
        if number != 0 {
            Text (number, format: .number)
        }
    }
}

#Preview {
    FlyingNumber(number: 5)
}
