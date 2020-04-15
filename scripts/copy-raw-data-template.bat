@echo on
set /P year=[promptString]
for /r "C:\Users\Trevor\Documents\GitHub\rpn\active\exp-srpn\yield-agronomic-raw\%year%" %%i in (.) do @copy "C:\Users\Trevor\Documents\GitHub\rpn\active\exp-srpn\yield-agronomic-raw\%year%\raw-data-template-%year%.csv" "%%i"
pause