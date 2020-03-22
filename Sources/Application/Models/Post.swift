struct Post: Codable {
    let id: Int
    let title: String
    let content: String
    let category: String
    
    init(id: Int, title: String, content: String, category: String) {
        self.id = id
        self.title = title
        self.content = content
        self.category = category
    }
}
