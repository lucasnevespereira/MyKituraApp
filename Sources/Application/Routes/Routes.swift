
func initializeRoutes(app: App) {
    // Registering Routes w/handlers
    app.router.post("/api") { request, response, next in
        // Handle post request here
        response.send("post request to api route working")
        next()
    }
    
    app.router.get("/api") {request, response, next in
        // Handle get request here
        response.send("get request working")
        next()
    }
    
    app.router.get("/api/:id") {request, response, next in
        guard let idString = request.parameters["id"],
            let id = Int(idString)
            else {
                let _ = response.send(status: .badRequest)
                return next()
            }
        response.send("Api route has this id : \(id)")
        next()
    }
}
