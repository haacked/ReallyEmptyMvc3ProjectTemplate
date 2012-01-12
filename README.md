# ReallyEmptyMvcProjectTemplate
This is a much emptier project template for ASP.NET MVC 3. The concepts here are adapted from my blog post, 
[Creating a Custom ASP.NET MVC 3 Project Template](http://haacked.com/archive/2011/06/05/creating-a-custom-asp-net-mvc-project-template.aspx).

# Installation
* __MAKE SURE ALL INSTANCES OF VISUAL STUDIO ARE CLOSED!__
* Run the 'build.cmd' batch file to make the VSIX installer for the template.  Then copy that file to your Visual Studio installation and double-click the .vsix file to install.

The batch file:

* Creates the project package (a zip file).
* Packages the template up in the Visual Studio installer extensible package (VSIX).

# DISCLAIMER
I've tested this on my machine, but not yours. I make no guarantees that it'll work fine. See the license at the end. 
This code is being made available to you under the [MIT license](http://www.opensource.org/licenses/mit-license.php)

# Credits
* [7-Zip](http://www.7-zip.org/) used to archive the template into a zip file. 
* [Tim Heuer](http://timheuer.com/blog/) or the VSIX installer.

# License
Copyright (c) 2012 Phil Haack

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.