
# CSharp-NUnit-NMake

This code is provided on an "AS-IS” basis without warranty of any kind, 
either express or implied, including without limitation any implied warranties of condition, 
uninterrupted use, merchantability, fitness for a particular purpose, or non-infringement.
Your tests and testing environments may require you to modify this framework. 
Issues regarding this framework should be submitted through GitHub.
For questions regarding Sauce Labs integration,
please see the LambdaTest documentation at https://docs.lambdatest.com/. 
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
[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. All test data generated during testing including Selenium command logs, screenshots generated in testing, video logs, selenium logs, network logs, console logs, and metadata logs can be extracted using [LambdaTest automation APIs](https://www.lambdatest.com/support/docs/api-doc/). This data can then be used for creating custom reports.

### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)

##### [NUnit Documentation](https://github.com/nunit/nunit/wiki)

