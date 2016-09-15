@ECHO OFF
setlocal enabledelayedexpansion
set /a counter=0
                                                                         
for /f "delims=" %%a in ('dir /b *.xml') do (

  set currentXaml=%%a
  set strippedName=!currentXaml:~0,-4!
                                              
  echo ^<ResourceDictionary > !strippedName!.xaml
  echo xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" >> !strippedName!.xaml
  echo  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"^> >> !strippedName!.xaml     
  
  for /f delims^=^"^ tokens^=2 %%i  in ('type !currentXaml!') do (
  if !counter! GEQ 1 (
  REM.
  ) ELSE (
  set /a counter+=1
  
  set imagePath=%%i
  )                                                                          
  )
  
  set /a counter=0
  for /f tokens^=2^,4^,6^,8^,10^ delims^=^" %%a in ('type !currentXaml! ') do (
  if !counter! GEQ 1 (
  set key=%%a
  echo ^<ImageBrush x:Key="!key:~0,-4!" ImageSource="!imagePath!" Viewbox="%%b,%%c,%%d,%%e" ViewboxUnits="Absolute" Stretch="Fill"/^> >> !strippedName!.xaml
  ) ELSE (
  set /a counter+=1
  )
  )
  echo ^</ResourceDictionary^> >> !strippedName!.xaml
  )


