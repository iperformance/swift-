//===--- Prefix.swift -----------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

////////////////////////////////////////////////////////////////////////////////
// WARNING: This file is manually generated from .gyb template and should not
// be directly modified. Instead, make changes to Prefix.swift.gyb and run
// scripts/generate_harness/generate_harness.py to regenerate this file.
////////////////////////////////////////////////////////////////////////////////

import TestsUtils

let sequenceCount = 4096
let prefixCount = sequenceCount - 1024
let sumCount = prefixCount * (prefixCount - 1) / 2


@inline(never)
public func run_PrefixCountableRange(_ N: Int) {
  let s = 0..<sequenceCount
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixCountableRange: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixSequence(_ N: Int) {
  let s = sequence(first: 0) { $0 < sequenceCount - 1 ? $0 &+ 1 : nil }
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixSequence: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixAnySequence(_ N: Int) {
  let s = AnySequence(sequence(first: 0) { $0 < sequenceCount - 1 ? $0 &+ 1 : nil })
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixAnySequence: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixAnySeqCntRange(_ N: Int) {
  let s = AnySequence(0..<sequenceCount)
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixAnySeqCntRange: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixAnyCollection(_ N: Int) {
  let s = AnyCollection(0..<sequenceCount)
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixAnyCollection: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixArray(_ N: Int) {
  let s = Array(0..<sequenceCount)
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixArray: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixCountableRangeLazy(_ N: Int) {
  let s = (0..<sequenceCount).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixCountableRangeLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixSequenceLazy(_ N: Int) {
  let s = (sequence(first: 0) { $0 < sequenceCount - 1 ? $0 &+ 1 : nil }).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixSequenceLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixAnySequenceLazy(_ N: Int) {
  let s = (AnySequence(sequence(first: 0) { $0 < sequenceCount - 1 ? $0 &+ 1 : nil })).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixAnySequenceLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixAnySeqCntRangeLazy(_ N: Int) {
  let s = (AnySequence(0..<sequenceCount)).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixAnySeqCntRangeLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixAnyCollectionLazy(_ N: Int) {
  let s = (AnyCollection(0..<sequenceCount)).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixAnyCollectionLazy: \(result) != \(sumCount)")
  }
}
@inline(never)
public func run_PrefixArrayLazy(_ N: Int) {
  let s = (Array(0..<sequenceCount)).lazy
  for _ in 1...20*N {
    var result = 0
    for element in s.prefix(prefixCount) {
      result += element
    }
    CheckResults(result == sumCount,
      "IncorrectResults in PrefixArrayLazy: \(result) != \(sumCount)")
  }
}
