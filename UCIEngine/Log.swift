//
//  Log.swift
//  Rhack Chess Engine
//
//  Created by Admin on 10/24/20.
//

import os.log

/// If set `true`, then write messages to log.
var isLogEnabled = false

let logSubsystem = "com.ronielrhack.rhackchessengine"

/// Log for main.swift
let mainLog = OSLog(subsystem: logSubsystem, category: "main")

/// Log for the UCIEngine.
let uciLog = OSLog(subsystem: logSubsystem, category: "uci")

/// Log for parse errors.
let parseLog = OSLog(subsystem: logSubsystem, category: "parse")
