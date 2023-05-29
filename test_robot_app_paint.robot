*** Settings ***
Library    RPA.Desktop
Library    RPA.JavaAccessBridge
Library    RPA.Browser.Selenium

# Library    RPA.Browser.Selenium

*** Variables ***
${app_name}    
${app_execut}    mspaint.exe
*** Test Cases ***
Automatisation de l'application Paint
    Open Application    mspaint.exe  # Ouvre l'application Paint
    Sleep    2s    # Attend 2 secondes pour que l'application s'ouvre

    
    RPA.JavaAccessBridge.Click Element    class_name=Afx:00007FF6:0    # Clique sur le bouton "Formes" dans la barre d'outils
    RPA.JavaAccessBridge.Click Element    class_name=Afx:00007FF6:8    # Clique sur l'option de forme "Cercle"
    RPA.Desktop.Drag And Drop    class_name=Afx:00007FF6:2    100, 100    # Fait glisser pour dessiner un cercle

    # Exemple 2 : Enregistrer l'image
    RPA.JavaAccessBridge.Click Element    class_name=Afx:00007FF6:0    # Clique sur le bouton "Fichier" dans la barre de menu
    RPA.JavaAccessBridge.Click Element    class_name=Afx:00007FF6:5    # Clique sur l'option de menu "Enregistrer sous"
    Input Text    class_name=Edit    C:\\path\\to\\image.png    # Saisit le chemin de fichier
    RPA.JavaAccessBridge.Click Element    class_name=Afx:00007FF6:1    # Clique sur le bouton "Enregistrer"


    Close Application    app_execut    # Ferme l'application Paint
