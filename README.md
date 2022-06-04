# Run Selenium Tests With NUnit On LambdaTest

![image](https://user-images.githubusercontent.com/70570645/171429042-610e8f3d-d2a4-4896-8bdb-8aeed87e0ce7.png)

*Learn how to run C# scripts using NUnit framework.*


<p align="center">
  <a href="https://www.lambdatest.com/blog/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium" target="_bank">Blog</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.lambdatest.com/support/docs/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium" target="_bank">Docs</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.lambdatest.com/learning-hub/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium" target="_bank">Learning Hub</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.lambdatest.com/newsletter/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium" target="_bank">Newsletter</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.lambdatest.com/certifications/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium" target="_bank">Certifications</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.youtube.com/c/LambdaTest" target="_bank">YouTube</a>
</p>
&emsp;
&emsp;
&emsp;

[<img height="58" width="200" src="https://user-images.githubusercontent.com/70570645/171866795-52c11b49-0728-4229-b073-4b704209ddde.png">](https://accounts.lambdatest.com/register)

## Table of Contents:


* [Prerequisites](#prerequisites)
* [Run Your First Test](#run-your-first-test)
* [Parallel Testing With NUnit](#running-your-parallel-tests-using-nunit-testing-framework)
* [Local Testing With NUnit](#testing-locally-hosted-or-privately-hosted-projects)


## Prerequisites


Before you can start performing **C#** automation testing with **Selenium**, you would need to:

* Download and install **Selenium WebDriver** from its [official website](https://www.selenium.dev/downloads/).
* Make sure you have the latest version of C#.
* **.Net** framework to deliver guidelines while developing a range of application using C#.
* Download [Selenium WebDriver Language Binding](https://www.selenium.dev/downloads/) for C# and extract them to appropriate folder. A [.NET Core SDK](https://dotnet.microsoft.com/en-us/download) of 2.1 or greater version.

### Installing Selenium Dependencies And Tutorial Repo

**Step 1:** Clone the LambdaTest CSharp-NUnit-Selenium GitHub repository and navigate to the code directory as shown below:

```
git clone https://github.com/LambdaTest/CSharp-NUnit-Selenium
cd CSharp-NUnit-Selenium
```

### Setting up Your Authentication

Make sure you have your LambdaTest credentials with you to run C# automation scripts. You can obtain these credentials from the [LambdaTest Automation Dashboard](https://automation.lambdatest.com/login) or by your LambdaTest Profile.

**Step 2:** Set LambdaTest Username and Access Key in environment variables.

 **For Linux/macOS**:
 
 `export LT_USERNAME="YOUR_USERNAME" export LT_ACCESS_KEY="YOUR ACCESS KEY"`
 
 **For Windows**:
 
 `set LT_USERNAME="YOUR_USERNAME" set LT_ACCESS_KEY="YOUR ACCESS KEY"`

## Run Your First Test

>**Test Scenario**: Checkout sample NUnitSeleniumTests.cs file. This NUnit Selenium script tests a sample to-do list app by marking couple items as done, adding a new item to the list and finally displaying the count of pending items as output.

**Step 3:** Navigate to [NUnitSeleniumTests.cs](https://github.com/LambdaTest/CSharp-NUnit-Selenium/blob/master/NUnitSelenium/NUnitSeleniumTests.cs) using VSCode. Copy and replace this code in the NUnitSeleniumTests.cs file in the project you opened in the previous step.

### Configuration of Your Test Capabilities

**Step 4:** In the test script, you need to update your test capabilities. In this code, we are passing browser, browser version, and operating system information, along with LambdaTest Selenium grid capabilities via capabilities object. 

The capabilities object in the above code are defined as:

```
DesiredCapabilities capabilities = new DesiredCapabilities();
            capabilities.SetCapability(CapabilityType.BrowserName, "Chrome");
            capabilities.SetCapability(CapabilityType.Version, "96");
            capabilities.SetCapability(CapabilityType.Platform, "Windows 10");
```

**Note:** You can generate capabilities for your test requirements with the help of **[Desired Capabilitiy Generator](https://www.lambdatest.com/capabilities-generator/)**.

### Executing the Test

**Step 5:** Build the solution by clicking on **Build > Build Solution**.

**Step 6:** As shown below click on Test Explorer on your MS Visual Studio:

<img height ="300" src="https://user-images.githubusercontent.com/70570645/171259137-307144a3-e0b0-4b45-865b-38f69b2b6776.png"/>

**Step 7:** Click on **Run** from the Test Explorer to run the sample test as shown below:

<img height ="300" src="https://user-images.githubusercontent.com/70570645/171259718-1828f238-bec0-483a-954a-d7153958a6d0.png"/>

### Executing in Linux/macOS

 * Install NuGet Packages for the project.
 
```
cd Packages
nuget.exe install ..\NUnitSelenium\packages.config
```

 * Clean and rebuild project.
 
```csharp
nmake clean build
```
Your results would be displayed on the test console and on the LambdaTest Automation Dashboard.

## Running Your Parallel Tests Using NUnit Testing Framework


 **Executing Parallel tests in Windows**

 To run parallel tests, go to **Test Explorer** on Visual Studio as mentioned above and click **Run All** tests to execute the tests. 
 
 **Executing  parallel tests in Linux/MacOS**
 
```
nmake test OR nmake all
```
Your results would be displayed on the test console and on the LambdaTest Automation Dashboard.

## Testing Locally Hosted Or Privately Hosted Projects

You can test your locally hosted or privately hosted projects with LambdaTest Selenium grid using LambdaTest Tunnel. All you would have to do is set up an SSH tunnel using tunnel and pass toggle `tunnel = True` via desired capabilities. LambdaTest Tunnel establishes a secure SSH protocol based tunnel that allows you in testing your locally hosted or privately hosted pages, even before they are live.

Refer our [LambdaTest Tunnel documentation](https://www.lambdatest.com/support/docs/testing-locally-hosted-pages/) for more information.

Here’s how you can establish LambdaTest Tunnel.

Download the binary file of:
* [LambdaTest Tunnel for Windows](https://downloads.lambdatest.com/tunnel/v3/windows/64bit/LT_Windows.zip)
* [LambdaTest Tunnel for macOS](https://downloads.lambdatest.com/tunnel/v3/mac/64bit/LT_Mac.zip)
* [LambdaTest Tunnel for Linux](https://downloads.lambdatest.com/tunnel/v3/linux/64bit/LT_Linux.zip)

Open command prompt and navigate to the binary folder.

Run the following command:

```bash
LT -user {user’s login email} -key {user’s access key}
```
So if your user name is lambdatest@example.com and key is 123456, the command would be:

```bash
LT -user lambdatest@example.com -key 123456
```
Once you are able to connect **LambdaTest Tunnel** successfully, you would just have to pass on tunnel capabilities in the code shown below :

**Tunnel Capability**

```java
DesiredCapabilities capabilities = new DesiredCapabilities();        
        capabilities.setCapability("tunnel", true);
```

## Tutorials 📙

Check out our latest tutorials on Selenium NUnit 👇

* [NUnit Environment Setup](https://www.lambdatest.com/blog/setup-nunit-environment-with-visual-studio/)
* [NUnit With Selenium](https://www.lambdatest.com/blog/nunit-testing-tutorial-for-selenium-csharp/)
* [Selenium WebDriver Commands in NUnit](https://www.lambdatest.com/blog/top-28-selenium-webdriver-commands-in-nunit-for-test-automation/)
* [NUnit Parameterized Unit Tests](https://www.lambdatest.com/blog/nunit-parameterized-test-examples/)
* [NUnit Asserts](https://www.lambdatest.com/blog/asserts-in-nunit/)
* [NUnit Annotations](https://www.lambdatest.com/blog/nunit-annotations-for-selenium-automation/)
* [Generating Test Reports In NUnit](https://www.lambdatest.com/blog/report-in-nunit/)
* [Parallel Execution In NUnit](https://www.lambdatest.com/blog/parallel-execution-with-specflow-nunit-and-selenium/)

For video tutorials on Selenium NUnit, please refer to our [NUnit Tutorial Playlist](https://www.youtube.com/playlist?list=PLZMWkkQEwOPkg_-aMxUHDUp5DF_zQ5xxK). ▶️

Subscribe To Our [LambdaTest YouTube Channel 🔔](https://www.youtube.com/c/LambdaTest) and keep up-to-date on the latest video tutorial around software testing world.

## Documentation & Resources :books:

Visit the following links to learn more about LambdaTest's features, setup and tutorials around test automation, mobile app testing, responsive testing, and manual testing.

* [LambdaTest Documentation](https://www.lambdatest.com/support/docs/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium)
* [LambdaTest Blog](https://www.lambdatest.com/blog/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium)
* [LambdaTest Learning Hub](https://www.lambdatest.com/learning-hub/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium)     

## LambdaTest Community :busts_in_silhouette:

The [LambdaTest Community](https://community.lambdatest.com/) allows people to interact with tech enthusiasts. Connect, ask questions, and learn from tech-savvy people. Discuss best practises in web development, testing, and DevOps with professionals from across the globe 🌎

## What's New At LambdaTest ❓

To stay updated with the latest features and product add-ons, visit [Changelog](https://changelog.lambdatest.com/) 
      
## About LambdaTest

[LambdaTest](https://www.lambdatest.com/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium) is a leading test execution and orchestration platform that is fast, reliable, scalable, and secure. It allows users to run both manual and automated testing of web and mobile apps across 3000+ different browsers, operating systems, and real device combinations. Using LambdaTest, businesses can ensure quicker developer feedback and hence achieve faster go to market. Over 500 enterprises and 1 Million + users across 130+ countries rely on LambdaTest for their testing needs.    

### Features

* Run Selenium, Cypress, Puppeteer, Playwright, and Appium automation tests across 3000+ real desktop and mobile environments.
* Real-time Cross browser testing on 3000+ environments.
* Test on Real device cloud
* Blazing fast test automation with HyperExecute
* Accelerate testing, shorten job times and get faster feedback on code changes with Test At Scale.
* Smart Visual Regression Testing on cloud
* 120+ third-party integration with your favourite tool for CI/CD, Project Management, Codeless Automation, and more.
* Automated Screenshot testing across multiple browsers in a single click.
* Local testing of web and mobile apps.
* Online Accessibility Testing across 3000+ desktop and mobile browsers, browser versions, and operating systems.
* Geolocation testing of web and mobile apps across 53+ countries.
* LT Browser - for responsive testing across 50+ pre-installed mobile, tablets, desktop, and laptop viewports.

    
[<img height="58" width="200" src="https://user-images.githubusercontent.com/70570645/171866795-52c11b49-0728-4229-b073-4b704209ddde.png">](https://accounts.lambdatest.com/register)

 ## We are here to help you :headphones:

* Got a query? we are available 24x7 to help. [Contact Us](support@lambdatest.com)
* For more info, visit - [LambdaTest](https://www.lambdatest.com/?utm_source=github&utm_medium=repo&utm_campaign=CSharp-NUnit-Selenium)
