#!/usr/bin/env python3
CVIOLET = '\33[35m'
CGREENBG2  = '\33[102m'
CRED = '\033[91m'
CBLUE = '\33[94m' 
CYELLOW = '\33[33m'
CEND = '\033[0m'

def showbanner():
        print(CVIOLET + '''
                 ____.__  ________         __ _________  ______
           _____/_   |  | \_____  \  _____/  |\______  \/  __  \\
  ______  /  ___/|   |  |   _(__  < /    \   __\  /    />      <   ______
 /_____/  \___ \ |   |  |__/       \   |  \  |   /    //   --   \ /_____/
         /____  >|___|____/______  /___|  /__|  /____/ \______  /
              \/    ''' + CGREENBG2 + "AdamantiuM" + CEND + " " + CVIOLET + '''  \/     \/    ''' + CYELLOW + "Ver:" + CBLUE + "5" + CRED + "_|_" + CYELLOW + "Rev:" + CBLUE + "1" + CVIOLET + '''   \/    ''' + CEND)
        
        exit
showbanner()
