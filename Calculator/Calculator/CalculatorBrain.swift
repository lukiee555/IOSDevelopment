//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Lokesh Soni on 14/12/17.
//  Copyright © 2017 nothing. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    private var accumulator = 0.0
    private var internalProgram = [AnyObject]()
    
    func setOperand(operand:Double)  {
        accumulator = operand
        internalProgram.append(operand as AnyObject)
    }
    private var operations: Dictionary<String,Operation> = [
        "π" : Operation.Constant(.pi),
        "e" : Operation.Constant(M_E),
        "√" : Operation.UnaryOperation(sqrt),
        "cos": Operation.UnaryOperation(cos),
        "X" : Operation.BinaryOperation({$0 * $1}),
        "+" : Operation.BinaryOperation({$0 + $1}),
        "-" : Operation.BinaryOperation({$0 - $1}),
        "/" : Operation.BinaryOperation({$0 / $1}),
        "=": Operation.Equals
        
        
    ]
    
    private enum Operation {
        
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double,Double)-> Double)
        case Equals
        
    }
    
    func performOperation(symbol:String){
        internalProgram.append(symbol as AnyObject)
        if let operation = operations[symbol]{
            switch operation{
            case .Constant(let associatatedConstantValue): accumulator = associatatedConstantValue
            case .UnaryOperation(let function): accumulator = function(accumulator)
            case .BinaryOperation(let function):
                executePendingBinaryOperation()
                pending = PendingBinaryOperationInfo(binaryFunction: function, firstOperand: accumulator)
            case .Equals: executePendingBinaryOperation()
                
            }
        }
    }
    func executePendingBinaryOperation(){
        if pending != nil{
            accumulator = pending!.binaryFunction(pending!.firstOperand,accumulator)
            pending = nil
        }
        
    }
    
    private var pending: PendingBinaryOperationInfo?
    private struct  PendingBinaryOperationInfo {
        var binaryFunction: (Double,Double)->Double
        var firstOperand: Double
    }
    

    
    typealias PropertyList = AnyObject
    
    var program : PropertyList {
        
        get{
            return internalProgram as CalculatorBrain.PropertyList
        }
        set{
            clear()
            
            if let arrayOfOps = newValue as? [AnyObject]{
                for op in arrayOfOps {
                    if let operand = op as? Double {
                        setOperand(operand: operand)
                    }
            }
        }
        
    }
    }
    func clear(){
        accumulator = 0.0
        pending = nil
        internalProgram.removeAll()
    }
    var  result: Double{
        get{
            return accumulator
        }
    }
    
}
