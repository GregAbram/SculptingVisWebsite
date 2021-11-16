:: To run on Windows
:: Setup the html/ and css/ folders 
:: (Duplicating the functionality of setup.sh)

@ECHO OFF

:: Compile publications --------------------

cmd /C python3 ./mkpubs > njk/publications.njk


:: run_nunj --------------------------------

node run_nunj


:: run_sass --------------------------------

:: Create css/ if the folder doesn't exist
IF NOT EXIST css\ (
  MKDIR css
)

:: Run Sass
cmd /C sass sass/style.scss css/style.css

ECHO setup.bat has finished running. You now have 2 folders html/ and css/ filled with the website's latest content