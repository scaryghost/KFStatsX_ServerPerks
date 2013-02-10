/**
 * Custom controller providing compatibility between 
 * ServerPerks v6.0 and KFStatsX
 * @author etsai (Scary Ghost)
 */
class KFSXPlayerController_SP extends KFPCServ;

var bool addedInteraction;
var string interactionName;

function EnterStartState() {
    Super.EnterStartState();
    if (!addedInteraction && Viewport(Player) != None) {
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
