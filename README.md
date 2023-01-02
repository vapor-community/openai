# OpenAI

![Swift](http://img.shields.io/badge/swift-5.7-brightgreen.svg)
![Vapor](http://img.shields.io/badge/vapor-4.0-brightgreen.svg)


### OpenAI is a Vapor helper to use [OpenAIKit](https://github.com/dylanshine/openai-kit)

## Usage guide
In your `Package.swift` file, add the following

~~~~swift
.package(url: "https://github.com/dylanshine/openai.git", from: "1.0.0")
~~~~


To use OpenAI in your Vapor application, set the environment variable for you OpenAI API key and optional Organization

~~~
export OPENAI_API_KEY="YOUR-KEY"
export OPENAI_ORGANIZATION="YOUR-ORGANIZATION"      
~~~

Now you can access a `OpenAI.Client` via `Request`.

~~~~swift

    func generatePoem(req: Request) async throws -> HTTPStatus {
        let completion = try await req.openai.completions.create(
            model: Model.GPT3.davinci,
            prompts: ["Write a haiku about dogs."]
        )
        ...
    }
~~~~

## License

OpenAI is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

## Want to help?
Feel free to submit a pull request whether it's a clean up, a new approach to handling things, adding a new part of the API, or even if it's just a typo. All help is welcomed! 😀
