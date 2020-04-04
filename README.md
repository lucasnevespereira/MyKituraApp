# Techoffers App

A description of this project.

## Project Structure

```
TechOffersApp
├── Package.swift
├── Sources/
│    ├── Application/
│    │    │
│    │    ├──Models/
│    │    │──Routes/
│    │    │──main.swift
└── Tests/
     └── ApplicationTests/
     
````

* Package.swift – defines packages that the app depends on and their versions
* main.swift - the file that is run to initialize your app and start the Kitura server , and glues everything together
* Models/ - folder containing a sample Post Model templateb if needed.
* Routes/ - folder containing the routing logic for how to handle HTTP requests
* ApplicationTests/ – folder containing the Swift tests for the project
