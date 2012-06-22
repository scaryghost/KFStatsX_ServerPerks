/**
 * Custom controller providing compatibility between 
 * ServerPerks v5.5 and KFStatsX
 * @author etsai (Scary Ghost)
 */
class KFSXPlayerController_V5SP extends KFPCServ;

/**
 * Custom console command to bring up the stats menu
 */
exec function InGameStats() {
    ClientOpenMenu("KFStatsX.StatsMenu");
}

defaultproperties {
    PawnClass=Class'KFSXHumanPawn_V5SP'
}