# Semestrálne zadania
Na cvičeniach budú študenti riešiť 3 zadania.
* Prvé zadanie za 11 bodov
* Druhé zadanie za 10 bodov
* Tretie zadanie za 10 bodov

## Zadanie 2 (10 bodov)
Pre XML dokument z 1. zadania vytvorte XSLT skript, ktorý bude obsahovať:
	* aspoň 5 zmysluplných šablón, ktoré sa navzájom volajú inštrukciami `xsl:apply-templates` alebo `xsl:call-template`,
	* nepomenované aj pomenované šablóny (`xsl:template match="..."`, `xsl:template name="..."`),
	* použitie režimov (atribút `mode`),
	* inštrukcie podmienok (`xsl:if`, `xsl:choose` + `xsl:when`),
	* cykly (`xsl:for-each`),
	* premenné: (`xsl:variable`),
    * parametre: (`xsl:param`, `xsl:with-param`),
	* inštrukcie pre generovanie výstupu (`xsl:element`, `xsl:attribute`, `xsl:value-of`, `xsl:text`),
	* inštrukcie pre kopírovanie (`xsl:copy`, `xsl:copy-of`),
	
Aspoň dva XPath výrazy použité pri volaní základných šablón cez inštrukciu `xsl:apply-templates select=""` musia spĺňať podmienku pre XPath výrazy z 2. časti 1. zadania, a teda pojde o netriviálne XPath výrazy.  

Výstupným formátom transformácie je HTML dokument. Všetky transformácie musia byť podrobne okomentované.

Pre výstupný HTML dokument definujte kaskádové štýly (CSS), zvlášť pre media "screen" a pre media "print". Tieto výstupy majú svoje špecifiká.
	* Dokument v režime "screen" musí byť responzívny, dobre sa čítať ako na malom displeji mobilného telefónu, tak aj na veľkom monitore. 
	* Musia byť použité základné vlastnosti: veľkosť písma, farba písma/pozadia, štýl a akcent písma (weight), zarovnanie textu. 
	* Musíte vhodne pracovať s bielym priestorom (white space) pre lepšiu čitateľnosť (napr. medzera medzi riadkami, dĺžka riadkov), zoskupenie logických častí (border, margin, padding). 
	* Vizuálna reprezentácia musí podporovať logickú štruktúru dokumentov.
	
**Termín odovzdania druhého zadania:** 14.4. 2021 23:59 AIS. 
Odovzdáva sa XML súbor s údajmi, XSLT skript a CSS súbor(y).


## Zadanie 1 (spolu za 11 bodov)
### Prvá časť (5 bodov)
Každý študent si vymyslí originálnu tému - reálny systém (napr. knižnica, databáza filmov).
Vytvorte si (ako pomôcku) model systému reprezentovaný class diagramom (min. 5 entít). 

Pre daný model definujte DTD (Document Type Definition) alebo XSD (XML Schema). Vytvorte XML dokument, ktorý reprezentuje danú schému (model). Vaše riešenie musí zmysluplne modelovať zvolenú realitu. XML dokument musí byť validný voči DTD (XSD).

**DTD musí obsahovať všetky tieto konštrukcie:**
* elementy (prázdné, textové),
* atribúty,
* dátové typy (textové, vymenované),
* kľúče a referencie na ne,
* operátory,
* obmedzenia výskytu pre elementy a atribúty.

**XML dokument musí byť dostatočne zložitý:**
* využitie elementov, atribútov, kľúčov a referencií na ne, textového i zmiešaného obsahu,
* hĺbka dokumentu bude minimálne 5,
* počet podelementov (aspoň jedného z elementov) bude minimálne 10.

**Termín odovzdania prvej časti prvého zadania:** 10.3. 2021 23:59 AIS. 
Odovzdajte 2 súbory DTD/XSD a XML. Ak ste si vytvorili ako pomôcku class diagram, odovzdajte aj ten (class diagram sa nehodnotí).

### Druhá časť (6 bodov)
Nad XML dokumentom z prvej časti prvého zadania naformulujte 6 výrazov netriviálnych dopytov v jazyku XPath:  

* predikát testujúci hodnotu atribútu,
* predikát testujúci existenciu podriadeného elementu,
* predikát testujúci neexistenciu podriadeného elementu,
* predikát testujúci pozíciu,
* predikát testujúci počet,
* použijete niektorú z os: ancestor[-or-self], preceding[-sibling], following[-sibling].

**Termín odovzdania druhej časti prvého zadania:** 24.3. 2021 23:59 AIS. 
Odovzdáva sa jeden textový súbor so všetkými dopytmi + XML a DTD z prvej časti.
Pri každom dopyte bude textové vysvetlenie/komentár (čo predmetný dopyt robí, čo je jeho výsledkom). 



## Autorstvo
Je zakázané používať programy alebo časti projektov od iných študentov, alebo z minulého ročníka.
Všetky použité materiály z odbornej literatúry alebo z internetu musia byť citované. Ak
použijete cudzí materiál a neuvediete zdroj, práca môže byť považovaná za plagiát.


## Spôsob odovzdávania
Výstupy všetkých zadaní sa odovzdávajú do AISu. 
Odovzdáva sa ZIP alebo RAR archív.


## Oneskorenie odovzdania
Odovzdanie sa môže oneskoriť maximálne o 3 dni. Za každý deň oneskoreného odovzdania je študentovi odobratých 25% bodov z pôvodného maxima (deň po termíne študent získa 3/4 bodov, dva dni po termíne 1/2, atď.) 

Neskoršie odovzdanie nie je možné. Neodovzdanie niektorej časti projektu znamená nesplnenie podmienok absolvovania predmetu.

**Každý študent musí vedieť vysvetliť ktorúkoľvek časť svojho riešenia.**
