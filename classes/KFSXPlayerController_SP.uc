/**
 * Custom controller providing compatibility between 
 * ServerPerks v6.0 and KFStatsX
 * @author etsai (Scary Ghost)
 */
class KFSXPlayerController_SP extends KFPCServ;

var bool addedInteraction;
var string interactionName;

simulated event PlayerTick(float DeltaTime) {
    super.PlayerTick(DeltaTime);
    if (!addedInteraction && (Level.NetMode == NM_DedicatedServer && Role < ROLE_Authority || Level.NetMode != NM_DedicatedServer)) {
        Player.InteractionMaster.AddInteraction(interactionName, Player);
        addedInteraction= true;
    }
}

/**
 * Custom console command to bring up the stats menu
 */
exec function InGameStats() {
    ClientOpenMenu("KFStatsX.StatsMenu");
}

defaultproperties {
    PawnClass=Class'KFSXHumanPawn_SP'
    interactionName= "KFStatsX.KFSXInteraction"
}
