//
//  UnitTestDemoTests.swift
//  UnitTestDemoTests
//
//  Created by qwer on 2018/3/29.
//  Copyright © 2018年 qwer. All rights reserved.
//


import XCTest
@testable import UnitTestDemo

class UnitTestDemoTests: XCTestCase {
    
//    setUp是每个测试方法调用前执行
    override func setUp() {
        super.setUp()
        print("开始执行测试")
        
    }
//    tearDown是每个测试方法调用后执行
    override func tearDown() {
        super.tearDown()
        
        print("测试结束")
    }
//    testExample是测试方法，和我们新建的没有差别。不过测试方法必须testXXX的格式，且不能有参数，不然不会识别为测试方法。测试方法的执行顺序是字典序排序。
    func testExample() {
        print("正在测试")
        
        //1.判断某一个表达式或者变量的值是否为true；
         XCTAssertTrue(NSStringFromClass(ViewController.classForCoder()).isEmpty == false ,"文件名称不为空")
        
        //2.判断某个变量或者表达式的值是不是等于true；
        XCTAssertTrue(ViewController.isGirl() == true,"她是女生")
        
        //3.判断变量或者表达式的值是不是nil
        let biys:String? = nil
        XCTAssertNil(biys, "这个变量是nil")
        
        //4.判断某个表达式或者变量的值是否为true；
        XCTAssert(true, "对啊")
        XCTAssert("a" == "a", "显然是对的")
        
        //5.判断某个表达式或者变量的值是否为false；
        XCTAssertFalse("a"=="b", "这个显然是错误的")
        
        //6.判断两个变量或者表达式的值是否相等；
        XCTAssertEqual("a", "a", "这两个值相等")
        XCTAssertEqual("a"=="a", "b"=="b", "这两个表达式的值相等")
        
        //7.判断两个变量或者表达式的值,是否第一个更小；
        XCTAssertLessThan(10, 20, "10小于20")
        
        //8.判断两个变量或者表达式的值,是否第一个小于等于第二个；
        XCTAssertLessThanOrEqual(10, 10.0, "两个数据相等")
        
        //9.判断两个变量或者表达式的值,是否第一个更大；
        XCTAssertGreaterThan(20, 10, "20>10")
        
        //10.判断两个变量或者表达式的值,是否第一个大于等于第二个；
        XCTAssertGreaterThanOrEqual(10.1, 10.0, "第一个大于等于第二个")
        
        //11.判断表达式是否会抛出异常；
        XCTAssertNoThrow(URL.init(string: "卧槽"), "抛出异常")
        
        //12.判断表达式是否会抛出一个异常，以及处理异常;
//        XCTAssertThrowsError(self.getException(), "来了一个异常信息") { (error) in
//            print(error.localizedDescription)
//        }
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
