# MyKituraApp

A description of this project.

## Project Structure

```
MyKituraApp
├── Package.swift
├── Sources/
│    ├── MyKituraApp/
│    │    └── main.swift
│    ├── Application/
│    │    └── Application.swift
│    └── Routes/
└── Tests/
     └── ApplicationTests/
     
````

⋅⋅* Package.swift – defines packages that the app depends on and their versions
⋅⋅* main.swift - the file that is run to initialize your app and start the Kitura server
⋅⋅* Application.swift - the application that glues everything together
⋅⋅* Routes/ - folder containing the routing logic for how to handle HTTP requests
⋅⋅* ApplicationTests/ – folder containing the Swift tests for the project
