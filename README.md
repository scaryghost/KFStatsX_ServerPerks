## Author
Scary Ghost

## Version
2.0.1

## About
Enables compatibility between ServerPerksV6 and KFStatsX

## Install 
Copy the .u file into your system folder.  Add the following line in the KFStatsX.ini file:

    compatibleControllers=KFStatsX_ServerPerks.KFSXPlayerController_SP;Server Perks v6.0

## Usage 
Select the ServerPerks and KFStatsX mutators as normal.  In the mutator configuration window, check the advanced options 
box and a "Compatibility" selection box will appear in the KStatsX section. Switch it to "ServerPerks V6.0". If you are 
using the web admin page, the "Compatibility" box will automatically be there.  Alternatively, you can change the 
"PlayerController" directly in the ini to be:

    PlayerController=KFStatsX_ServerPerks.KFSXPlayerController_SP
