I was originally going to place these under the MIT license, I've decided on further reflection to just drop them public domain.  Do whatever with them.

Requirements:
* Unity (Any Version)
* Codesmith Generator

Usage:
Start NoesisToUnity.cst in CodeSmith.  

Tell it where your XAML is.

Click Execute.

You'll receive two files for each XAML file, in the same directory as your project.  One file will be named "BaseName.cs" and then the other file will be named "BaseName.g.cs."  On subsequent runs, only the BaseName.g.cs is overwritten, the BaseName.cs is not.  There is a Unity requirement that MonoBehaviour names match the file name they are defined in.

In BaseName.cs, there will be a call to InitializeComponent and that will populate the properties from the XAML.  

There is a checkbox that controls if initialization happens in Start, or if it happens in Awake.  This probably breaks for a lot of complicated
cases -- it should be fine for most simpler cases.  The purpose is to get you a starting point, not to generate perfect code.