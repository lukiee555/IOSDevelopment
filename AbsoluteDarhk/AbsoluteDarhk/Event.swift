//
//  Events.swift
//  AbsoluteDarhk
//
//  Created by Lokesh Soni on 04/08/17.
//  Copyright © 2017 Ezorro. All rights reserved.
//

import UIKit


class Event {
    var title = ""
    var decription = ""
    var date = ""
    var featuredImage : UIImage!
    
    init (title:String , decription : String , date:String , featuredImage:UIImage!){
        self.title = title
        self.decription = decription
        self.date = date
        self.featuredImage = featuredImage
    }
    
    static func createEvents() -> [Event]{
        return [ Event(title : "Music Night" , decription : "fewkbfdskzjnf ns",
                date:"22-2-2017",featuredImage:UIImage(named: "splashscreen.png")!),
        Event(title : "Music Night" , decription : "ndjfnljsnfksjfnrjkefnkjrfbfsjefnesibfsiebfseiuewkbfdskzjnf ns",date:"22-2-2017",featuredImage:UIImage(named: "splashscreen.png")!),
        Event(title : "Music Night" , decription : "fewkbfdskzjnf ns",date:"22-2-2017",featuredImage:UIImage(named: "splashscreen.png")!),
        Event(title : "Music Night" , decription : "fewkbfdskzjnf ns",date:"22-2-2017",featuredImage:UIImage(named: "splashscreen.png")!),]
    }
}
