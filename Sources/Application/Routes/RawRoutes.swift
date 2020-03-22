
func initializeRawRoutes(app: App) {
    // Registering Routes w/handlers
    app.router.post("/raw") { request, response, next in
        do {
            let post = try request.read(as: Post.self)
            App.postWall.append(post)
            response.send(post)
        } catch {
            let _ = response.send(status: .badRequest)
        }
        next()
    }
    
    app.router.get("/raw") {request, response, next in
        print("Here: \(App.postWall)")
        response.send(App.postWall)
        next()
    }
    
    app.router.get("/raw/:id") {request, response, next in
        guard let idString = request.parameters["id"],
            let id = Int(idString),
            id >= 0,
            id < App.postWall.count
            else {
                let _ = response.send(status: .badRequest)
                return next()
            }
        response.send(App.postWall[id])
        next()
    }
}

extension App {
    static var postWall = [Post]()
}

// Post Request to test
//curl -X POST \
// http://localhost:8080/raw \
//-H 'content-type: application/json' \
//-d '{
//      "id": 1,
//      "title": "Another kind of post",
//      "content": "This is again contnet here",
//      "category": "Ressources"
//    }'
