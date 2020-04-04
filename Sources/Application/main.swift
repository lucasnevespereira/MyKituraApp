// Application.swift is in charge of starting Kitura server
import Foundation
import Kitura
import LoggerAPI
import HeliumLogger

HeliumLogger.use()

public class App{
    // Creating an instance of router
    // Routing incoming requests to the correct endpoints
    let router = Router();
        
    public init() throws {
        Log.info("Hello World")
    }
        
    func postInit() throws {
        // setting up router before starting server
        initializeRoutes(app: self)
    }
        
    public func run() throws {
        try postInit()
        Kitura.addHTTPServer(onPort: 8080, with: router)
        Kitura.run()
    }
}


do {
    let app = try App()
    try app.run()
} catch let error {
    print(error.localizedDescription)
}
