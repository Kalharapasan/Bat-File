@ECHO OFF
XCOPY H: D:\copy_g /E /H /I /Q /Y
ATTRIB +I D:\copy_g
exit