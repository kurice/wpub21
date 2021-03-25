# Cvičenia

## Cvičenie 5 (25.3.) ##
**[XSLT pokračovanie](zdroje/cv6.pdf)**   

Rozšírte XSLT skript z predošlého cvičenia:

1. Vytvorte usporiadaný zoznam miestností. Nahraďte `ID` a `NAME` zodpovedajúcimi hodnotami. Vytvorte nepomenovanú šablónu pre `room` elementy (nevytvárajte žiadnu inú šablónu). Použite inštrukcie `xsl:element`, `xsl:attribute` a `xsl:text`. 
```html
<h2>List of Rooms</h2>
<ol>
<li id="room-ID">Room ID: NAME</li>
...
</ol>
```
[RIEŠENIE](zdroje/xslt-p1.xsl)

2. Pridajte nový stĺpec do tabuľky "Table of Departments". Pre každé oddelenie `Department` vytvorte neusporiadaný zoznam referencií na izby `Rooms`. Použite nepomenovanú šabĺonu spolu s atribútom `mode`.
```html
...
<td>
  <ul>
   <li><a href="#room-ID">NAME</a></li>
   ...
  </ul>
</td>
...
```

3. Integrujte nasledujúci kaskádový štýl (CSS) do `head` elementu:
```html
<style>
th { background-color: #AAAAAA; }
tr.even td { background-color: #DDDDDD; }
</style>
```
Upravte "Table of Departments". Pridajte stĺpec s poradovým číslom oddelenia. Použite inštrukcie podmienky `xsl:if`.
```html
<tr><td>1</td>...</tr>
<tr><td>2</td>...</tr>
...
```
Nastavte farbu pozadania všetkým nepárnym riadkom.
```html
<tr class="even">...</tr>
```

4. Upravte "Table of Departments". Nahraďte stĺpec `Head ID` stĺpcom `Head name`, a teda ku každému oddeleniu uveďte meno vedúceho. Ak oddelenie nemá vedúceho, alebo meno vedúceho chýba, vypíšte `<i>Neznámy<i>`. 
Pre tento účel vytvorte pomenovanú šablónu. 
	* Pri volaní použite parameter `xsl:with-param` na špecifikovanie vstupného identifikátora vedúceho oddelenia. 
	* Ak je šablóna volaná bez parametra, vyberte identifikátor vedúceho z predmetných údajov oddelenia.

5. Upravte "Table of Departments". Pridajte stĺpec, v ktorom bude zoznam vybavenia, a teda čiarkou oddelené `features`, napr.: "CO2 laser, Endoskop, Pulzomer". Usporiadajte položky zoznamu v abecednom poradí. Nevytvárajte nové šablóny, použite inštrukciu `xsl:for-each`.

6. Pridajte v XML súbore k elementom `feature` v oddeleniach atribút `type` s náhodne priradenými hodnotami z množiny ["t1", "t2", "t3"], pričom niektoré vybavenia môžu mať viacero typov, napr.: `<feature type="t1 t3">Endoskop</feature>`. Upravte spôsob, akým sú vypísané vybavenia:
	* všetky vybavenia, ktoré majú priradený `type="t1"`a žiaden iný typ sú vypísané modrou farbou, a teda `<span style="color: blue;">...</span>` (príp. si definujte triedu),
	* všetky vybavenia, ktoré majú 1 a viac typov, pričom aspoň jeden z nich  je `type="t2"`sú vypísané červenou farbou,
	* v ostatných prípadoch je pôvodná farba.
Použite inštrukciu `xsl:choose`, napomocná bude funkcia `contains()`.
	
	

## Cvičenie 4 (18.3.) ## 
**[XSLT - úvod](zdroje/cv3.pdf)**   

* Vyberte si jazyk/framework a rozbehajte si runtime prostredie, v ktorom budete realizovať XSL transformácie (XSLT). Vyskúšajte si transformáciu XML dokumentu do HTML dokumentu: [dáta](zdroje/data.xml), [xslt](zdroje/hello.xsl)

## Cvičenie 3 (11.3.) ## 

**Úlohy:**  

7. Vyberte miestnosti (rooms) s podpriemerným hodnotením (`rate` < ako priemer).

8. Vyberte mená vedúcich oddelení (head), ktorí majú na oddelení (department) izbu (room) s vybavením (feature) "televízor". 

9. Vyberte sumu z hodnotení (rate) miestností (rooms) s komfortom (atribút `comfort`) C alebo D z oddelení, ktorých vedúcim je "h1".

10. Vyberte názvy (name) prvej a poslednej miestnosti v dokumente vrátane rekurzívne vnorených miestností.

11. K danému identifikátoru (ako vstup) konkrétnej miestnosti, vyberte miestnosť, ktorá je v zmysle hierarchie na najvyššej úrovni od danej miestnosti. Napr.: vyberiete element `room` s názvom "A4" k identifikátoru "r4a1".

12. Vyberte zoznam hodnôt `comfort` z miestností (rooms), ktoré neobsahujú iné miestnosti.


## Cvičenie 2 (4.3.) ## 

**Pokračovanie XML + DTD úlohy:** 

9. Upravte a rozšírte DTD aj XML. Pridajte unikátne identifikátory k `heads`, `departments` a `rooms`, napr. element `head` bude mať identifikátor idHead="h1". Transformujte všetky existujúce referencie z mien (names) na tieto nové identifikátory, použite údajové typy `ID` a `IDREF`. Vyskúšajte narušiť referenčnú integritu.

10. Upravte a rozšírte DTD aj XML. Vložte nasledujúci fragment do opisu (element `description`) niektorej z miestnosti (element `room`) tak, aby nebol interpretovaný ako XML. Použite pre to existujúce znakové entity (napr. pre znak '<' entitu &lt;).
`<button class="q-btn">Click</button>`
Ďalej, deklarujte novú znakovú entitu pre horný index (superscript) dvojky (Unicode U+00B2 (178)). Použite túto entitu v opise (description) predmetnej miestnosti (room). [XML entities](https://www.w3resource.com/xml/entities.php)

11. Upravte a rozšírte DTD aj XML. Vložte nasledujúci fragment do opisu (element `description`) niektorej z miestností (element `room`) pomocou sekcie `CDATA`:
`<button class="q-btn">Click</button>`
Ďalej, pridajte komentáre na "vizuálne" oddelenie jednotlivých častí
XML dokumentu, napr. `<!-- Zoznam miestností -->`

12. Upravte a rozšírte DTD aj XML. Použitím parametrických entít (parameter entities) a podmienených sekcií (conditional sections) deklarujte dva režimy tak, aby v štandardnom režime (`standardMode`) nebol element `description` súčasťou miestnosti (element `room`), a v podrobnom režime (`verboseMode`) bol súčasťou miestnosti. Aktivujte štandardný režim a upravte primerane XML dokument. [XML parameter entities](https://www.w3resource.com/xml/parameter-entities.php), [conditional sections](https://xmlwriter.net/xml_guide/conditional_section.shtml)


**XPATH úlohy:** 

**[[Prezentácia]](zdroje/cv2.pdf)**  

[Dáta: world-of-health-v1.xml](zdroje/world-of-health-v1.xml), DTD: [world-of-health-v1.dtd](zdroje/world-of-health-v1.dtd)    

Nástroj: [XML Quire](http://qutoric.com/xmlquire/)   
Online nástroj: [XPather](http://xpather.com/)   

1.
	* Vyberte všetkých vedúcich oddelení (`heads`).  
       * napr.: `//head`  
	   * napr.: `//child::head`  
	* Vyberte názvy (names) všetkých nemocníc, iba obsah.
	   * napr.: `/world-of-health/hospitals/hospital/name/text()`
	   * napr.: `//hospital/name/text()`
	* Vyberte všetky krajiny (countries), z ktorých sú vedúci oddelení (heads), bez duplicít.
	   * napr.: `distinct-values(/world-of-health/heads/head/address/country)`
       * napr.: `distinct-values(//head//country)`
	   * napr.: `distinct-values(//head/address/country)`
	* Vyberte meno vedúceho oddelenia s id "h1".
	   * napr.: `//head[@idHead = "h1"]/name/text()`
	   * napr.: `//head[./@idHead = "h1"]/name/text()`
	   * napr.: `//head[self::node()/@idHead = "h1"]/name/text()`
	   * napr.: `//head[attribute::idHead = "h1"]/name/text()`

2. Vyberte poštové smerovacie čísla (postal codes) všetkých vedúcich oddelení zo Slovenskej republiky.  
  * napr.: `//head/address[country/text() = 'Slovenská republika']/postalCode`
  * napr.: `//head/address[.//country = 'Slovenská republika']/postalCode`

3. Vyberte `rate` hodnoty všetkých miestností (rooms) s urovňou komfortu  C (atribút `comfort`) zo všetkých oddelení (departments) okrem `d2`.
  * napr.: `//room[@comfort = "C" and @department != "d2"]/rate/text()`
  * napr.: `//rate[parent::room[@comfort = "C"] and parent::room[@department != "d2"]]/text()`

4. Vyberte 3. vybavenie (`feature`) na 1. oddelení (`department`).
  * napr.: `//department[1]/features/feature[3]`
  * napr.: `//department[position() = 1]//feature[position() = 3]`

5. Vyberte názvy oddelení (names), ktoré majú aspoň dve vybavenia (feature) a súčasne nemajú vedúceho (atribút `head`).
  * napr.: `//department[not(@head) and count(features/feature) >= 2]/name`
  * napr.: `//department[count(@head) = 0 and count(.//feature) >= 2]/name`

6. Vyberte vedúcich oddelení, ktorí nie sú priradení k žiadnemu oddeleniu. 
  * napr.: `//head[not(@idHead = //department/@head)]`


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
Rozšírte zodpovedajúci XML dokument tak, aby obsahoval: 1x hospital, 1x head, 1x department a 2x room.

4. Upravte oboje, DTD aj XML tak, aby opis (`description`) oddelenia (`department`) obsahoval referenciu na `room`, napr.: ... `<roomReference roomName="C5">…</roomReference>` ... Ďalej, premenujte element `description` v elementoch `room` na `data`. Element `data` bude obsahovať štruktúrovaný opis (description) - ľubovoľné XML fragmenty.

5. Rozšírte DTD aj XML: `hospitals`, `heads` (bydlisko lekára) a `departments` musia mať práve jednu adresu: (priamo po `name`). Každá adresa pozostáva zo:  
* `street` a `number`
* `postalCode`
* `state`
* `country`  
Rešpektujte poradie, `country` je nepovinné. Ak nie je `country` uvedené, potom `postalCode` musí byť ako posledné (po `state`, nie pred).

6. Upravte DTD aj XML: `address`, `email` a `phone` v `hospitals` smú byť v ľubovoľnom poradí. Ak `features` (v `departments` a `rooms`) sú špecifikované, potom musia byť aspoň 2, najviac však 5. 

7. Rozšírte DTD aj XML tak, aby element `room` mohol obsahovať elementy `record`. Každý `record` obsahuje `date` a `text` (ďalšiu textovú informáciu, napr. `<date>2021-02-28</date><text>Dezinfekcia vykonaná</text>`), alebo sekvenciu ďalších vnorených (nested) elementov `record` (aspoň jedného).

8. Upravte a rozšírte DTD aj XML. Pridajte atribút `language` koreňovému elementu. Hodnota musí byť fixná, a to 'EN' alebo 'SK' (podľa toho, aký jazyk ste zvolili pre obsah vášho XML dokumentu). Miestnostiam `room` pridajte atribút `comfort`, pričom povolené hodnoty sú `A`, `B`, `C`, `D`, `E`, alebo `F`. Predvolená hodnota je `F`. Ďalej, referencia `head` v `department` bude odteraz nepovinná. 


**Nástroje**:
* VS Code rozšírenie: https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml  
* Online nástroj pre (DTD): https://www.xmlvalidation.com/  
