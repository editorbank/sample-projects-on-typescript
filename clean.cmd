:main
  @set PROJECT_PATH=%1
  @if defined PROJECT_PATH goto :cleanProject
  @set list_file=.\clean.list
  @if exist %list_file% for /F "usebackq" %%P in ( %list_file% ) do @call :cleanProject %%P
@goto :eof

:cleanProject
  @set PROJECT_PATH=%1
  @set PROJECT_PATH=%PROJECT_PATH:/=\%
  @if not exist %PROJECT_PATH% goto :eof

  @echo cleanProject %PROJECT_PATH% ...
  ::@echo delete Files ...
  @for %%F in (
    %PROJECT_PATH%\package-lock.json
  ) do @if exist %%F (
    ::echo %%F
    del /q %%F
  )

  ::@echo delete Dirs ...
  @for %%D in (
    %PROJECT_PATH%\dist
    %PROJECT_PATH%\node_modules
  ) do @if exist %%D (
    ::echo %%D
    rd /q /s %%D
  )
@goto :eof
