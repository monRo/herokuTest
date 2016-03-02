//
//  main.swift
//  
//
//  Created by Andrey Starostenko on 02.03.16.
//
//

import Blackfish

let app = BlackfishApp()

app.get("/") { request, response in
    response.send(text: "Hello World!")
}


app.listen(port: 4000) { error in
    if error == nil {
        print("App listening on port \(app.port)")
    } else {
        print(error)
    }
}
