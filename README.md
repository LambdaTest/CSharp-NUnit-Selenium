# CSharp NUnit NMake
![Specflow](https://opengraph.githubassets.com/1f2ceb37da0b837d247679d6ee9dfb1f7018416e5b5e6ce9bc8d96a49e1ae283/LambdaTest/CSharp-NUnit-Selenium)
This code is provided on an "AS-IS” basis without warranty of any kind, 
either express or implied, including without limitation any implied warranties of condition, 
uninterrupted use, merchantability, fitness for a particular purpose, or non-infringement.
Your tests and testing environments may require you to modify this framework. 
Issues regarding this framework should be submitted through GitHub.
For questions regarding LambdaTest integration, please see the this documentation at https://docs.lambdatest.com. 
This framework is not maintained by LambdaTest Support.
It helps you to understand that how to use NUnit to run parallel tests on LambdaTest platfrom 
using nmake as the build system. Uses [NuGet](http://docs.nuget.org/) as package manager.

## Prerequisites
1. Setup Visual Studio with .NET core. 
2. Download Visual studio from [Visual Studio](https://visualstudio.microsoft.com/downloads/) website. 
3. MS Visual Studio 2013 or later.
        * [NUnit3.0](https://www.nunit.org/)
        * [NuGet](https://dist.nuget.org/index.html) Plugin for Visual Studio
        * [NuGet](https://dist.nuget.org/index.html) CLI executable installed in your path.
4. 

## Run your First Test
Step 1. Clone the CSharp-NUnit-Selenium Repo.
```
git clone https://github.com/LambdaTest/CSharp-NUnit-Selenium
```

Step 2. Inside CSharp-NUnit-Selenium, export the Lambda-test Credentials. You can get these from your automation dashboard.

<p align="center">
   <b>For Linux/macOS:</b>
   
```
export LT_USERNAME="YOUR_USERNAME"
export LT_ACCESS_KEY="YOUR ACCESS KEY"
```

<p align="center">
   <b>For Windows:</b>
```
set LT_USERNAME="YOUR_USERNAME"
set LT_ACCESS_KEY="YOUR ACCESS KEY"
```

Step 3. Install NuGet packages for the project.
```
cd Packages
nuget.exe install ..\NUnitSelenium\packages.config
```
Step 4. Clean and rebuild project
```
nmake clean build
```

## Run Your Test
Run your test using the command.
```
nmake test
or
nmake all
``` 

## Results of the Test
You can view your test results on the [Automation Dashboard](https://automation.lambdatest.com/).

## About LambdaTest

[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. LambdaTest supports all programming languages and frameworks that are supported with Selenium, and have easy integrations with all popular CI/CD platforms. It's a perfect solution to bring your [selenium automation testing](https://www.lambdatest.com/selenium-automation) to cloud based infrastructure that not only helps you increase your test coverage over multiple desktop and mobile browsers, but also allows you to cut down your test execution time by running tests on parallel.

### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)

##### [NUnit Documentation](https://github.com/nunit/nunit/wiki)

