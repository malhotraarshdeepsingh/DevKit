@echo off
setlocal

:mainMenu
echo Select the type of app you want to create:
echo 1. Next.js
echo 2. React.js
echo 3. Vite
echo 4. HTML/CSS/JS
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto nextjs
if "%choice%"=="2" goto reactjs
if "%choice%"=="3" goto vite
if "%choice%"=="4" goto htmlcssjs

echo Invalid choice. Please enter a number between 1 and 4.
pause
goto mainMenu

:nextjs
@echo off

REM Prompt for the path
set /p appPath="Enter the path where the Next.js app should be created: "

REM Check if the path exists
if not exist "%appPath%" (
    echo The specified path does not exist.
    pause
    exit /b 1
)

REM Prompt for the app name
set /p appName="Enter the name of the Next.js app: "

REM Create the Next.js app
echo Creating Next.js app...
npx create-next-app@latest "%appPath%\%appName%"
if %errorlevel% neq 0 (
    echo Failed to create the Next.js app.
    pause
    exit /b 1
)

echo Next.js app created successfully at %appPath%\%appName%.

pause
exit /b 0

:reactjs
@echo off

REM Prompt for the path
set /p appPath="Enter the path where the React.js app should be created: "

REM Check if the path exists
if not exist "%appPath%" (
    echo The specified path does not exist.
    exit /b 1
)

REM Prompt for the app name
set /p appName="Enter the name of the React.js app: "

REM Check if the app name is empty
if "%appName%"=="" (
    echo App name cannot be empty.
    exit /b 1
)

REM Create the React.js app
echo Creating React.js app...
npx create-react-app "%appPath%\%appName%"

REM Check if create-react-app command was successful
if %errorlevel% neq 0 (
    echo Failed to create the React.js app.
    exit /b 1
)

echo React.js app created successfully at %appPath%\%appName%
pause
exit /b 0

:vite
@echo off

REM Prompt for the path
set /p appPath="Enter the path where the Vite app should be created: "

REM Check if the path exists
if not exist "%appPath%" (
    echo The specified path does not exist.
    exit /b 1
)

REM Prompt for the app name
set /p appName="Enter the name of the Vite app: "

REM Check if the app name is empty
if "%appName%"=="" (
    echo App name cannot be empty.
    exit /b 1
)

REM Navigate to the specified path
cd /d "%appPath%"

REM Create the Vite app
echo Creating Vite app...
npm create vite@latest "%appName%"

REM Check if npm create vite command was successful
if %errorlevel% neq 0 (
    echo Failed to create the Vite app.
    exit /b 1
)

echo Vite app created successfully at %appPath%\%appName%
pause
exit /b 0

:htmlcssjs
@echo off

REM Prompt for the location path
set /p location="Enter the location path where you want to save the files: "

REM Prompt for the new folder name
set /p folder="Enter the new folder name: "

REM Create the new folder
mkdir "%location%\%folder%"

REM Create index.html
echo ^<!DOCTYPE html^> > "%location%\%folder%\index.html"
echo ^<html lang="en"^> >> "%location%\%folder%\index.html"
echo ^<head^> >> "%location%\%folder%\index.html"
echo     ^<meta charset="UTF-8"^> >> "%location%\%folder%\index.html"
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> "%location%\%folder%\index.html"
echo     ^<title^>Follow on GitHub^</title^> >> "%location%\%folder%\index.html"
echo     ^<link rel="stylesheet" href="styles.css"^> >> "%location%\%folder%\index.html"
echo ^</head^> >> "%location%\%folder%\index.html"
echo ^<body^> >> "%location%\%folder%\index.html"
echo     ^<div class="container"^> >> "%location%\%folder%\index.html"
echo         ^<h1^>Thanks!^</h1^> >> "%location%\%folder%\index.html"
echo         ^<button id="followButton"^>Please follow me on GitHub!^</button^> >> "%location%\%folder%\index.html"
echo     ^</div^> >> "%location%\%folder%\index.html"
echo     ^<script src="script.js"^>^</script^> >> "%location%\%folder%\index.html"
echo ^</body^> >> "%location%\%folder%\index.html"
echo ^</html^> >> "%location%\%folder%\index.html"

REM Create styles.css
echo /* For your project */ > "%location%\%folder%\styles.css"
echo * { >> "%location%\%folder%\styles.css"
echo     margin: 0; >> "%location%\%folder%\styles.css"
echo     padding: 0; >> "%location%\%folder%\styles.css"
echo     box-sizing: border-box; >> "%location%\%folder%\styles.css"
echo     font-family: "gilroy-light"; >> "%location%\%folder%\styles.css"
echo } >> "%location%\%folder%\styles.css"
echo html,body { >> "%location%\%folder%\styles.css"
echo     width: 100%%; >> "%location%\%folder%\styles.css"
echo     height: 100%%; >> "%location%\%folder%\styles.css"
echo } >> "%location%\%folder%\styles.css"
echo body { >> "%location%\%folder%\styles.css"
echo     font-family: 'Arial', sans-serif; >> "%location%\%folder%\styles.css"
echo     display: flex; >> "%location%\%folder%\styles.css"
echo     justify-content: center; >> "%location%\%folder%\styles.css"
echo     align-items: center; >> "%location%\%folder%\styles.css"
echo     height: 100vh; >> "%location%\%folder%\styles.css"
echo     background: linear-gradient(135deg, #ffcc33, #ff33cc); >> "%location%\%folder%\styles.css"
echo     margin: 0; >> "%location%\%folder%\styles.css"
echo } >> "%location%\%folder%\styles.css"
echo .container { >> "%location%\%folder%\styles.css"
echo     text-align: center; >> "%location%\%folder%\styles.css"
echo     background: rgba(255, 255, 255, 0.8); >> "%location%\%folder%\styles.css"
echo     padding: 20px; >> "%location%\%folder%\styles.css"
echo     border-radius: 10px; >> "%location%\%folder%\styles.css"
echo     box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); >> "%location%\%folder%\styles.css"
echo } >> "%location%\%folder%\styles.css"
echo h1 { >> "%location%\%folder%\styles.css"
echo     color: #333; >> "%location%\%folder%\styles.css"
echo } >> "%location%\%folder%\styles.css"
echo #followButton { >> "%location%\%folder%\styles.css"
echo     background-color: #24292e; >> "%location%\%folder%\styles.css"
echo     color: white; >> "%location%\%folder%\styles.css"
echo     border: none; >> "%location%\%folder%\styles.css"
echo     padding: 15px 30px; >> "%location%\%folder%\styles.css"
echo     font-size: 1.2em; >> "%location%\%folder%\styles.css"
echo     border-radius: 5px; >> "%location%\%folder%\styles.css"
echo     cursor: pointer; >> "%location%\%folder%\styles.css"
echo     transition: all 0.3s ease; >> "%location%\%folder%\styles.css"
echo     margin-top: 20px; >> "%location%\%folder%\styles.css"
echo } >> "%location%\%folder%\styles.css"
echo #followButton:hover { >> "%location%\%folder%\styles.css"
echo     background-color: #0366d6; >> "%location%\%folder%\styles.css"
echo     transform: scale(1.1); >> "%location%\%folder%\styles.css"
echo } >> "%location%\%folder%\styles.css"

REM Create script.js
echo document.getElementById('followButton').addEventListener('click', function() { > "%location%\%folder%\script.js"
echo     alert("Awesome! Redirecting you to my GitHub profile..."); >> "%location%\%folder%\script.js"
echo     window.location.href = 'https://github.com/malhotraarshdeepsingh'; >> "%location%\%folder%\script.js"
echo }); >> "%location%\%folder%\script.js"

REM Open index.html in the default web browser
start "" "%location%\%folder%\index.html"

echo Files created successfully in %location%\%folder%.
pause
exit /b 0