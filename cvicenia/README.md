# Cvičenia

## Cvičenie 1 (25.2.) ## 

**[[Prezentácia]](zdroje/cv1.pdf)**
    
**Úlohy:**  

1. Vytvorte (well-formed) XML dokument s nasledujúcou štruktúrou. Koreňový element `world-of-heatlh` bude obsahovať sekvenciu elementov: `hospitals`, `heads` (head of deparment), `departments`, `rooms`, všetky s prázdnym obsahom.

2. Vytvorte interné DTD (alebo XSD) pre predmetný dokument. Zaistite jeho platnosť (validity), vyskúšajte platnosť narušiť.

3. Rozšírte predošlé DTD tak, aby elementy `hospitals`, `heads`, `departments` a `rooms` obsahovali konkrétne elementy `hospital`, `head`, `department` a `room`:
* `hospital`: `name`, `e-mail`, `phone`
* `head`: `name`
* `department`: `name`, `description`, `numberOfRooms`, `features`, `head` reference
* `room`: `name`, `description`, `features`, `department` reference
Atribúty použite iba na referencie. Inak použite elementy.
Použite iba `CDATA` a `#PCDATA` pre hodnoty a obsah.
Rozšírte zodpovedajúci XML dokument, tak aby obsahoval: 1x hospital, 1x head, 1x department a 2x room.

4. Upravte oboje, DTD aj XML tak, aby opis (`description`) oddelenia (`department`) obsahoval referenciu na `room`, napr.: ... `<roomReference roomName="C5">…</roomReference>` ... Ďalej, premenujte element `description` v elementoch `room` na `data`. Element `data` bude obsahovať štruktúrovaný opis (description) - ľubovoľné XML fragmenty.

5. Rozšírte DTD aj XML: `hospitals`, `heads` (bydlisko lekára) a `departments` musia mať práve jednu adresu: (priamo po `name`). Každá adresa pozostáva zo:  
* `street` a `number`
* `postalCode`
* `state`
* `country`  
Rešpektujte poradie, `country` je nepovinné. Ak nie je `country` uvedené, potom `postalCode` musí byť ako posledné (po `state`, nie pred).

6. Upravte DTD aj XML: `address`, `email` a `phone` v `hospitals` smú byť v ľubovoľnom poradí. Ak `features` (v `departments` a `rooms`) sú špecifikované, potom musia byť aspoň 2, najviac však 5. 

7. Rozšírte DTD aj XML tak, aby `rooms` mohli obsahovať `records`. Každý `record` obsahuje `date` a `text` (ďalšiu textovú informáciu, napr. `<date>2021-02-28</date><text>Dezinfekcia vykonaná</text>`), alebo sekvenciu aspoň jedného vnoreného záznamu (nested `record`).

8. Upravte a rozšírte DTD aj XML. Pridajte atribút `language` koreňovému elementu. Hodnota musí byť fixná, a to 'EN' alebo 'SK' (podľa toho, aký jazyk ste zvolili pre obsah vášho XML dokumentu). Miestnostiam `room` pridajte atribút `comfort`, pričom povolené hodnoty sú `A`, `B`, `C`, `D`, `E`, alebo `F`. Predovlená hodnota je `F`. Ďalej, referencia `head` v `department` bude odteraz nepovinná. 



**Nástroje**:
* VS Code rozšírenie: https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml  
* Online nástroj pre (DTD): https://www.xmlvalidation.com/  