# Documentation generation from .feature files

## Installing the CLI tool

### Prerequisites
[LivingDoc.CLI](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Using-the-command-line-tool.html) requires the .NET Core SDK 3.1 or higher to be installed. Information on setting up the .NET Core SDK can be found in the [official Microsoft guide](https://www.microsoft.com/net/download).
### Installing SpecFlow.Plus.LivingDoc.CLI
To install SpecFlow.Plus.LivingDoc.CLI:
1. Open a command prompt.
1. Run the following command:
   `dotnet tool install --global SpecFlow.Plus.LivingDoc.CLI`
1. Add `livingdoc` to the PATH, instruction will be printed after the previous command.
## Adding Specification
1. Specification should follow [Gherkin systax](https://cucumber.io/docs/gherkin/reference/)
1. Files should be in the `./features` folder or subfolder (?).
1. Files should have `.feature` extension.
## Generating Documentation
1. Run the following command:
   `npm run make`
1. Review Documentation at ./doc/index.html.
1. Push/merge to main.
## Viewing Documentation
Navigate to [Documentation Page](https://base86inc.github.io/specs/)
