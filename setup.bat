:: To run on Windows
:: Setup the html/ and css/ folders 
:: (Duplicating the functionality of setup.sh)

@ECHO OFF

cmd /C python3 ./mkpubs > njk/publications.njk

node run_nunj

:: Duplicating the functionality of file run_sass --------------------------------

IF NOT EXIST html\css\ (
  MKDIR html\css
)

cmd /C sass sass/style.scss html/css/style.css

:: End ----------------

ECHO setup.bat has finished running. You now have 2 folders html/ and css/ filled with the website's latest content