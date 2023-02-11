#!/usr/bin/env swift
import Foundation

// let ls = Process()
// ls.executableURL = URL(fileURLWithPath: "/usr/bin/env")
// ls.arguments = ["ls", "-al"]
// do {
//   try ls.run()
// } catch { }


// let process2 = Process()
// process2.executableURL = URL(fileURLWithPath: "/bin/ls")
// process2.arguments = ["-al"]
// do{
//   try process2.run()
// } catch { }

/// run command
// let p3 = Process()
// p3.executableURL = URL(fileURLWithPath: "/usr/bin/env")
// p3.arguments = ["curl", "mmaultra.com"]
// do{
//   try p3.run()
// } catch { }

// pipe out


let p4 = Process()
p4.executableURL = URL(fileURLWithPath: "/usr/bin/env")
p4.arguments = ["curl", "google.com"]
var pipe = Pipe()

p4.standardOutput = pipe
do {
  try p4.run()
  let data = pipe.fileHandleForReading.readDataToEndOfFile()
  if let output = String(data: data, encoding: String.Encoding.utf8) {
    print("command output:" + output)
  }
} catch {}