# ReallyEmptyMvcProjectTemplate
This is a much emptier project template for ASP.NET MVC 3. The concepts here are adapted from my blog post, 
[Creating a Custom ASP.NET MVC 3 Project Template](http://haacked.com/archive/2011/06/05/creating-a-custom-asp-net-mvc-project-template.aspx).

# Installation
* __MAKE SURE ALL INSTANCES OF VISUAL STUDIO ARE CLOSED!__
* Run the `install.cmd` batch file to install the project template. This will run the `Install-ProjectTemplate.ps1` powershell script.

The batch file:
* Creates the project package (a zip file).
* Copies the file to the correct Visual Studio project templates directory.
* Adds a registry entry for the project template that ASP.NET MVC 3 picks up. The script handles x86 and x64 cases.
* Registers it with Visual Studio using `devenv /installvstemplates`. This can take a while.

# DISCLAIMER
I've tested this on my machine, but not yours. I make no guarantees that it'll work fine. See the license at the end. 
This code is being made available to you under the [MIT license](http://www.opensource.org/licenses/mit-license.php)

# Credits
* [7-Zip](http://www.7-zip.org/) used to archive the template into a zip file. 

# TODO
Hey, if you'd like to help make this better, consider one of the following. :)

* Make script auto-detect whether VS is running or not and do the right thing.
* Single install script that detects environment and makes the correct registry settings (perhaps in PowerShell)
* Write an installer for this.

# License
Copyright (c) 2012 Phil Haack

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.