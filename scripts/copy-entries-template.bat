@echo off
for /r "C:\Users\Trevor\Documents\GitHub\rpn\active\exp-srpn\entries" %%i in (.) do @copy "C:\Users\Trevor\Documents\GitHub\rpn\active\exp-srpn\entries\entries-template.csv" "%%i"
pause