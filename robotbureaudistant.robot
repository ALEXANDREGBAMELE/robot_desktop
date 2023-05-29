*** Settings ***
Library           RPA.Windows  

#le script utilise la bibliothèque RPA.Windows, qui fournit des fonctionnalités 
#pour automatiser des actions sur des applications Windows.

*** Variables ***
${adresse_ip}        192.168.1.47        #adresse  ipv4 de la machine distante dont on veut acceder au bureau
${username}          ALEXANDRE        #nom d'utilisateur de la machine distante dont on veut acceder au bureau
${password}          9828        #mot de passe de la machine distante dont on veut acceder au bureau

*** Test Cases ***
Ouvrir Bureau à Distance
    Windows Run    mstsc.exe   # exécute l'application "mstsc.exe", qui est l'exécutable pour l'outil Bureau à distance de Windows. 
    Send Keys    id:5012    keys=${adresse_ip}      # envoie les touches contenir dans "adresse_ip" à l'élément avec l'identifiant (id) "5012". 
    Click    id:1    # effectue un clic sur l'élément avec l'identifiant (id) "1"
    Send Keys    id:PasswordField_2     keys=${password}  # envoie les touches contenir dans "password" à l'élément avec l'identifiant (id) "PasswordField_2".
    Click    id:OkButton    #effectue un clic sur l'élément avec l'identifiant (id) "OkButton".
    Control Window    192.168.1.61 - Connexion Bureau à distance    #sélectionne la fenêtre avec le titre "192.168.1.61 - Connexion Bureau à distance" 
    Sleep    5s        #suspend l'exécution du script pendant 5 secondes
    Send Keys    Input Capture Window   keys=RBUTTON  # envoie la touche "RBUTTON" à la fenêtre active. "RBUTTON" est généralement utilisé pour représenter le clic droit de la souris.
