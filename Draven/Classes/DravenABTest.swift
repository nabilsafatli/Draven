import Foundation

public class DravenABTest: DravenABTestProtocol {
    
    var tests: [DravenTest]
    
    public init() {
        tests = [DravenTest]()
    }
    
    public func register(test: DravenTest) {
        tests.append(test)
    }
    
    public func execute(with abTestName: String, completionHandler: @escaping (DravenVersion) -> ()) {
        if let abTest = tests.first(where: {
            $0.name == abTestName
        }) {
            var selectedNumber = generateRandomNumber()
            for version in abTest.versions {
                
            }
        }
    }
    
    private func generateRandomNumber() -> Int {
        return Int(arc4random_uniform(1000) + 1)
    }
}

protocol DravenABTestProtocol {
    
    func register(test: DravenTest)
    func execute(with abTestVariable: String, completionHandler: @escaping (DravenVersion) -> ())
}

public struct DravenTest {
    
    var name: String
    var versions: [DravenVersion]
    
    public init(name: String, versions: [DravenVersion]) {
        self.name = name
        self.versions = versions
    }
}

public struct DravenVersion {
    
    var name: String
    var percentage: Double
    
    public init (name: String, percentage: Double) {
        self.name = name
        self.percentage = percentage
    }
}
