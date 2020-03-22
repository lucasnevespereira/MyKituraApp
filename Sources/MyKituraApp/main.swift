import Foundation
import Application
import Kitura
import LoggerAPI
import HeliumLogger

HeliumLogger.use()

do {
    let app = try App()
    try app.run()
} catch let error {
    print(error.localizedDescription)
}
