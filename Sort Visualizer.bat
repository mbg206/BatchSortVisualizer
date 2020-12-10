@echo off
echo Setting up. If you can read this text, then you have a slow computer :p

title Batch Sort Visualizer - Setting Up

set drawFull=[]
set drawEmpty=  

set var1=1
set var2=2
set var3=3
set var4=4
set var5=5
set var6=6
set var7=7
set var8=8
set var9=9
set var10=10
set var11=11
set var12=12
set var13=13
set var14=14
set var15=15
set var16=16
set var17=17
set var18=18
set var19=19
set var20=20
set var21=21
set var22=22
set var23=23
set var24=24
set var25=25
set comparisons=0
set accesses=0
set auxiliary=0
set drawValue=25
set shuffleValue=1

cls
echo Welcome to Batch Sort Visualizer!

:main
title Batch Sort Visualizer
echo Please type the sort, or type sorts for a list of valid sorts.
set /p selection=Select: 

if %selection% == sorts goto sorts
if %selection% == draw goto draw
if %selection% == shuffle goto shuffle

echo Unknown sort or command.
echo Press any key to go back to the main screen.
pause >nul
cls
goto main



:sorts
cls
echo Name of sort		Value
echo.
echo Bubble sort		bubble
echo Selection sort		selection
echo Merge sort		merge
echo Heap sort		heap
echo.
echo Press any key to go back to the main screen.
pause >nul
cls
goto main



:draw
cls
echo Comparisons: %comparisons%
echo Array Accesses: %accesses%
echo Auxiliary Array Accesses: %auxiliary%
echo.
echo.
goto drawlines

:drawlines
	if %var1% geq %drawValue% (set draw1=%drawFull%) ELSE (set draw1=%drawEmpty%)
	if %var2% geq %drawValue% (set draw2=%drawFull%) ELSE (set draw2=%drawEmpty%)
	if %var3% geq %drawValue% (set draw3=%drawFull%) ELSE (set draw3=%drawEmpty%)
	if %var4% geq %drawValue% (set draw4=%drawFull%) ELSE (set draw4=%drawEmpty%)
	if %var5% geq %drawValue% (set draw5=%drawFull%) ELSE (set draw5=%drawEmpty%)
	if %var6% geq %drawValue% (set draw6=%drawFull%) ELSE (set draw6=%drawEmpty%)
	if %var7% geq %drawValue% (set draw7=%drawFull%) ELSE (set draw7=%drawEmpty%)
	if %var8% geq %drawValue% (set draw8=%drawFull%) ELSE (set draw8=%drawEmpty%)
	if %var9% geq %drawValue% (set draw9=%drawFull%) ELSE (set draw9=%drawEmpty%)
	if %var10% geq %drawValue% (set draw10=%drawFull%) ELSE (set draw10=%drawEmpty%)
	if %var11% geq %drawValue% (set draw11=%drawFull%) ELSE (set draw11=%drawEmpty%)
	if %var12% geq %drawValue% (set draw12=%drawFull%) ELSE (set draw12=%drawEmpty%)
	if %var13% geq %drawValue% (set draw13=%drawFull%) ELSE (set draw13=%drawEmpty%)
	if %var14% geq %drawValue% (set draw14=%drawFull%) ELSE (set draw14=%drawEmpty%)
	if %var15% geq %drawValue% (set draw15=%drawFull%) ELSE (set draw15=%drawEmpty%)
	if %var16% geq %drawValue% (set draw16=%drawFull%) ELSE (set draw16=%drawEmpty%)
	if %var17% geq %drawValue% (set draw17=%drawFull%) ELSE (set draw17=%drawEmpty%)
	if %var18% geq %drawValue% (set draw18=%drawFull%) ELSE (set draw18=%drawEmpty%)
	if %var19% geq %drawValue% (set draw19=%drawFull%) ELSE (set draw19=%drawEmpty%)
	if %var20% geq %drawValue% (set draw20=%drawFull%) ELSE (set draw20=%drawEmpty%)
	if %var21% geq %drawValue% (set draw21=%drawFull%) ELSE (set draw21=%drawEmpty%)
	if %var22% geq %drawValue% (set draw22=%drawFull%) ELSE (set draw22=%drawEmpty%)
	if %var23% geq %drawValue% (set draw23=%drawFull%) ELSE (set draw23=%drawEmpty%)
	if %var24% geq %drawValue% (set draw24=%drawFull%) ELSE (set draw24=%drawEmpty%)
	if %var25% geq %drawValue% (set draw25=%drawFull%) ELSE (set draw25=%drawEmpty%)
	echo %draw1%%draw2%%draw3%%draw4%%draw5%%draw6%%draw7%%draw8%%draw9%%draw10%%draw11%%draw12%%draw13%%draw14%%draw15%%draw16%%draw17%%draw18%%draw19%%draw20%%draw21%%draw22%%draw23%%draw24%%draw25%
	set /a drawvalue-=1
	if %drawvalue% gtr 0 goto drawlines
	set drawvalue=25
	echo.
	echo %var1% %var2% %var3% %var4% %var5% %var6% %var7% %var8% %var9% %var10% %var11% %var12% %var13% %var14% %var15% %var16% %var17% %var18% %var19% %var20% %var21% %var22% %var23% %var24% %var25%
	echo.
	pause
	cls
	goto main

:shuffle
title Batch Sort Visualizer - Shuffling
set swapA=%shuffleValue%
set /a swapB=%RANDOM% * 25 / 32768 + 1
call :swapItems
set /a shuffleValue+=1
if %shuffleValue% leq 25 goto shuffle
set shuffleValue=1
cls
goto main



rem Standard Functions.

:getItemWithIndex
	if %getItemIndex%==1 set returnedItemValue=%var1%
	if %getItemIndex%==2 set returnedItemValue=%var2%
	if %getItemIndex%==3 set returnedItemValue=%var3%
	if %getItemIndex%==4 set returnedItemValue=%var4%
	if %getItemIndex%==5 set returnedItemValue=%var5%
	if %getItemIndex%==6 set returnedItemValue=%var6%
	if %getItemIndex%==7 set returnedItemValue=%var7%
	if %getItemIndex%==8 set returnedItemValue=%var8%
	if %getItemIndex%==9 set returnedItemValue=%var9%
	if %getItemIndex%==10 set returnedItemValue=%var10%
	if %getItemIndex%==11 set returnedItemValue=%var11%
	if %getItemIndex%==12 set returnedItemValue=%var12%
	if %getItemIndex%==13 set returnedItemValue=%var13%
	if %getItemIndex%==14 set returnedItemValue=%var14%
	if %getItemIndex%==15 set returnedItemValue=%var15%
	if %getItemIndex%==16 set returnedItemValue=%var16%
	if %getItemIndex%==17 set returnedItemValue=%var17%
	if %getItemIndex%==18 set returnedItemValue=%var18%
	if %getItemIndex%==19 set returnedItemValue=%var19%
	if %getItemIndex%==20 set returnedItemValue=%var20%
	if %getItemIndex%==21 set returnedItemValue=%var21%
	if %getItemIndex%==22 set returnedItemValue=%var22%
	if %getItemIndex%==23 set returnedItemValue=%var23%
	if %getItemIndex%==24 set returnedItemValue=%var24%
	if %getItemIndex%==25 set returnedItemValue=%var25%
	exit /b 0

:setItemWithIndex
	if %setItemIndex%==1 set var1=%setItemValue%
	if %setItemIndex%==2 set var2=%setItemValue%
	if %setItemIndex%==3 set var3=%setItemValue%
	if %setItemIndex%==4 set var4=%setItemValue%
	if %setItemIndex%==5 set var5=%setItemValue%
	if %setItemIndex%==6 set var6=%setItemValue%
	if %setItemIndex%==7 set var7=%setItemValue%
	if %setItemIndex%==8 set var8=%setItemValue%
	if %setItemIndex%==9 set var9=%setItemValue%
	if %setItemIndex%==10 set var10=%setItemValue%
	if %setItemIndex%==11 set var11=%setItemValue%
	if %setItemIndex%==12 set var12=%setItemValue%
	if %setItemIndex%==13 set var13=%setItemValue%
	if %setItemIndex%==14 set var14=%setItemValue%
	if %setItemIndex%==15 set var15=%setItemValue%
	if %setItemIndex%==16 set var16=%setItemValue%
	if %setItemIndex%==17 set var17=%setItemValue%
	if %setItemIndex%==18 set var18=%setItemValue%
	if %setItemIndex%==19 set var19=%setItemValue%
	if %setItemIndex%==20 set var20=%setItemValue%
	if %setItemIndex%==21 set var21=%setItemValue%
	if %setItemIndex%==22 set var22=%setItemValue%
	if %setItemIndex%==23 set var23=%setItemValue%
	if %setItemIndex%==24 set var24=%setItemValue%
	if %setItemIndex%==25 set var25=%setItemValue%
	exit /b 0

:swapItems
	set getItemIndex=%swapA%
	call :getItemWithIndex
	set itemAvalue=%returnedItemValue%
	set getItemIndex=%swapB%
	call :getItemWithIndex
	set itemBvalue=%returnedItemValue%

	set setItemValue=%itemAvalue%
	set setItemIndex=%swapB%
	call :setItemWithIndex
	set setItemValue=%itemBvalue%
	set setItemIndex=%swapA%
	call :setItemWithIndex
	exit /b 0

rem Function Templates-
rem
rem getItemWithIndex - input getItemIndex and outputs returnedItemValue
rem
rem setItemWithIndex - input setItemIndex and setItemValue
rem
rem swapItems - input swapA and swapB (indexes, not values)