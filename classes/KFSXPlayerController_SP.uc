/**
 * Custom controller providing compatibility between 
 * ServerPerks v6.0 and KFStatsX
 * @author etsai (Scary Ghost)
 */
class KFSXPlayerController_SP extends KFPCServ;

/**
 * Custom console command to bring up the stats menu
 */
exec function InGameStats() {
    ClientOpenMenu("KFStatsX.StatsMenu");
}

defaultproperties {
    PawnClass=Class'KFSXHumanPawn_SP'
}
