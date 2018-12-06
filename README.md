# SimpleRequestManager
A system to send http requests as simple as it gets

## Usage

```swift
// Defining the request
struct SimpleGetRequest: RequestProtocol {
    
    typealias ResponseType = MyDecodableResponse
    
    var method: HTTPMethod = .get
    
    var url: URL? = Endpoints.getUserInfo.url
    
    var body: Data? = nil
    
    var completion: ((Result<MyDecodableResponse>) -> Void)?
    
    var queryString: [String : String]? = nil
}

// Sending the request
	var getUserRequest = SimpleGetRequest()
    getUserRequest.completion = { result in
         switch result {
            case .success(let response):
                completion(response)
            case .failure(let error):
                print(error.localizedDescription)
                // Handle errr cases
         }
     }
     requestManager.send(request: getUserRequest)
```