//
//  Environment.swift
//  JWeather
//
//  Created by Joao Marcos Ribeiro Araujo on 23/02/23.
//

import Foundation

protocol EnvironmentProtocol {
    var baseURL: String { get }
}

struct Environment: EnvironmentProtocol {
    var baseURL: String {
        #error("Fill it")
    }
}
