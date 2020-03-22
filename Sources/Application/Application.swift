// Application.swift is in charge of starting Kitura server
import Kitura

import LoggerAPI


public class App {
    // Creating an instance of router
    // Routing incoming requests to the correct endpoints
    let router = Router();
    
    public init() throws {
        Log.info("Hello World")
    }
    
    func postInit() throws {
        // setting up router before starting server
        initializeRawRoutes(app: self)
    }
    
    public func run() throws {
        try postInit()
        Kitura.addHTTPServer(onPort: 8080, with: router)
        Kitura.run()
    }
}
