*** Settings ***
Library    RPA.Windows
Library    RPA.Desktop

*** Tasks ***
Use Desktop app
    Open the Calculator
*** Keywords ***

Open the Calculator
    # Windows Search    Access 2016
    # Sleep    5s
    # Windows Search    Word 2016
    # Sleep    5s
    Windows Search    Excel 2016
    Sleep    5s
    Close Window    name=Excel 2016