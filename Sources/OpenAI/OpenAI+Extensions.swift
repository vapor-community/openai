import Vapor
import OpenAIKit

extension Application {
    public var openai: OpenAIKit.Client {
        guard let apiKey = Environment.get("OPENAI_API_KEY") else {
            fatalError("OPENAI_API_KEY env var required")
        }
        
        let organization = Environment.get("OPENAI_ORGANIZATION")
        
        let configuration = Configuration(apiKey: apiKey, organization: organization)
        
        return .init(
            httpClient: self.http.client.shared,
            configuration: configuration
        )
    }
}

extension Request {
    
    private struct OpenAIKey: StorageKey {
        typealias Value = OpenAIKit.Client
    }
    
    public var openai: OpenAIKit.Client {
        if let client = application.storage[OpenAIKey.self] {
            return client
        } else {
            let client = application.openai
            
            self.application.storage[OpenAIKey.self] = client
            
            return client
        }
    }
}
