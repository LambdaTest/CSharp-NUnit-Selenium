
# CSharp NUnit NMake

This code is provided on an "AS-IS” basis without warranty of any kind, 
either express or implied, including without limitation any implied warranties of condition, 
uninterrupted use, merchantability, fitness for a particular purpose, or non-infringement.
Your tests and testing environments may require you to modify this framework. 
Issues regarding this framework should be submitted through GitHub.
For questions regarding LambdaTest integration,
please see the this documentation at https://docs.lambdatest.com/. 
This framework is not maintained by LambdaTest Support.

It helps you to understand that how to use NUnit to run parallel tests on LambdaTest platfrom 
using nmake as the build system. 

Uses [NuGet](http://docs.nuget.org/) as package manager.

###Dependencies:

* MS Visual Studio 2013 or later.
* [NUnit3.0](https://www.nunit.org/)
* [NuGet](https://dist.nuget.org/index.html) Plugin for Visual Studio
* [NuGet](https://dist.nuget.org/index.html) CLI executable installed in your path.


### Setup:

* Install NuGet packages for the project: <br>
```cd Packages```<br>
```nuget.exe install ..\NUnitSelenium\packages.config```<br>

* Clean and rebuild project:<br>
```nmake clean build```

### Set Credentials:<br>
```set LT_USERNAME=<YOUR USERNAME>```<br>
```set LT_ACCESS_KEY=<YOUR ACCESSKEY>```

### Run Tests in parallel on [LambdaTest](https://automation.lambdatest.com) using a Developer Console:<br>
```nmake test``` <br>
**or**<br>
```nmake all```<br>

## About LambdaTest

[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. LambdaTest supports all programming languages and frameworks that are supported with Selenium, and have easy integrations with all popular CI/CD platforms. It's a perfect solution to bring your [selenium automation testing](https://www.lambdatest.com/selenium-automation) to cloud based infrastructure that not only helps you increase your test coverage over multiple desktop and mobile browsers, but also allows you to cut down your test execution time by running tests on parallel.

### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)

##### [NUnit Documentation](https://github.com/nunit/nunit/wiki)

