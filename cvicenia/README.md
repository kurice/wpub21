# Cvičenia

**Cvičenie 1 (25.2.)**
[Prezentácia](zdroje/cv1.pdf)

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

4. Upravte oboje, DTD aj XML tak, aby opis oddelenia (department:description) obsahoval referenciu na `room`, napr.: ... `<roomReference roomName="C5">…</roomReference>` ...

5. Rozšírte DTD aj XML: `hospitals`, `heads` (bydlisko lekára) a `departments` musia mať práve jednu adresu: (priamo po `name`). Každá adresa pozostáva z:  
* `street` a `number`
* `postalCode`
* `state`
* `country`
Rešpektujte poradie, `country` je nepovinné. Ak nie je `country` uvedené, potom `postalCode` musí byť ako posledné (po `state`, nie pred).

6. Upravte DTD aj XML: `address`, `email` a `phone` v `hospitals` smú byť v ľubovoľnom poradí. Ak `features` (v `departments` a `rooms`) sú špecifikované, potom musia byť aspoň 2, najviac však 5. 

**Nástroje**:
* VS Code rozšírenie: https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml  
* Online nástroj pre (DTD): https://www.xmlvalidation.com/  