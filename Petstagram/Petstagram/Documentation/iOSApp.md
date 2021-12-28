#  iOS App

Model & Network

    Seperate UI from Networking.


    Model needs to reflect the information to be viewed in the UI. (Post.swift)
    
    Network System to get model data from the network. 
    
    1. Request
    
        Protocol setting the structure of each request. 
    
    2. Client
    
        Recieves the request parameters, translates for URLSession, performs the actual network request, 
        recieves the requested data, packages it together, sends packaged data to the request object for parsing. 

        Division of Labor - 
        
            APIRequest.Swift - Model for base case url plus extension for variations.
            PostRequest.Swift - Model for the requested data and creating an array of objects from the data.
            APIClient.Swift - 
            APIEnvironment.Swift - 
