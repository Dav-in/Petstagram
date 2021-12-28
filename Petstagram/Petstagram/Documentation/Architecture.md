#  Architecture


ARCHITECTURE

Personas:

    represents a group of people with a specific personality
    
    Type of people?, Wants or desired actions?, Interests?
    
    Group by themes/personalities
    
    
    
User Stories:

    As a "_persona_" I want to "_desired action_", so I can "_desired outcome_".
    
    Create a New User will help you understand the user. 
    
    Why the users' want a feature or desired action/outcome
    
    
Prioritization:

    MVP Minimum Viable Product - 
        
        Smallest developed app that includes features to meet the Users' needs. Dev Team will recieve reviews from the Users'.
        
        
    Prioritize features from reviewing the backlog. 
        
        P0 - Must have
        P1 - Should have
        P2 - Nice to have
        P3 - Not for this release
        
        
    
UX Design:

    What elements? Where? How they interact?
    
    Beginning, Middle, & End of a project
    
    First - sketches and black/white coloring
    
    "Acceptance Criteria" - Steps to pass for the Product Manager to accept the User Story as complete. 
    
        i.e. - input fields, navigation, buttons look/behavior, etc...
        

UI Design:

    Work openly along-side a designer.
    - If screens completed early, ask to walkthrough the design w/designer. 
    
    HIG - Human Interface Guidelines
    Development Cost - Alternatives in development for $ savings. 
    
    Team Environment 
    
        (Dev) - Provide input but PM owns the final call and our support. 
    
        (Leader) - Balance the Team's input and make a decision that's best for the product/users'. 
        

    Zeplin to review images (design) made on Sketch. 
    
    
Technical Decisions:

    Languages?, Back-end?, Technologies?, Third-Party Dependencies?, etc...
    
    Stay Updated - Apple releases, popular 3rd-party options
    
    Backend - CloudKit?, Firebase?, Server-Side Swift?
    
        Server-Side Swift Versions
            1. Kitura (open-source) 
            2. Vapor 
            3. Perfect
            
    UIKit or SwiftUI - 
        1. SwiftUI requires iOS 13 or higher
        2. Users' won't notice the difference


Architecture:

    Caching System - for images
    Image Compression - ""
    Machine learning - Too early to deside
    
    YAGNI - You aren't gonna need it. 
    
    Overview of System - 
    
        Kitura/PostgreSQL (backend)
        Swift Package Manager (dependency mgr)
        Layered Architecture (seperation UI/Networking)
        Networking using URLSession
        Combine Framework (structured code)
        Notifications 
        AVFoundation (camera capture)
        Core Image (image processing)
        

Iterating:

    Change is constant and natural. 
    
    Business Needs - Cost each Dev phase, coordinate app release w/ advertising, features to advertise?
    
    2 weeks iteration length. 
    
    Estimating:
    
        Identify features within priorities by "shirt size".
        
        PO: F0 = Small, F1 = Large, F2 = Small, F3 = X-Large
        
        PO: = Large
        
        # of team members, beta testing?, etc...
        
        
    
    
    
        
