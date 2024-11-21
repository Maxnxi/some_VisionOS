//
//  String+extension.swift
//  some_VisionOS
//
//  Created by Maksim Ponomarev on 11/21/24.
//

import Foundation

extension String: Error, LocalizedError {
	
	public var errorDescription: String? { self }
}
