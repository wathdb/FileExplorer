::Plz start on GitHub :)
@cd ../../../
@dir
:main
@echo Commands list: del, cd, start, back, exit, create, move, rename. (For more help, read the READ.ME on the GitHub)
@set /p command=Command : 
@IF %command%==exit (exit)
@IF %command%==back (cd ../)
@cls
@dir
@IF %command%==back (@goto main)
@set /p file=File name : 
@IF %command%==move (@goto move)
@IF %command%==rename (@goto rename)
@IF %command%==cd (@cd %file%)
@IF %command%==del (@del %file%)
@IF %command%== (@echo Veuillez entrer une commande)
@IF %command%==start (start "" "%file%")
@IF %command%==create (type nul > %file%)
@cls
@dir
@goto main
:move
@set /p destination=Destination :
@move %file% %destination%
@cls
@dir
@goto main
:rename
@set /p rename=Rename :
@rename %file% %rename%
@cls
@dir
@goto main
