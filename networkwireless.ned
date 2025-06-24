import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
//
// TODO documentation
//

network networkwireless
{
    @display("bgb=649,343");
    submodules:
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            parameters:
                @display("p=38,312;is=s");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                assignDisjunctSubnetAddresses = false;
                @display("p=38,209;is=s");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            parameters:
                @display("p=37,263;is=s");
        }
        wirelessHost1: WirelessHost {
            parameters:
                @display("p=59,84");
        }
        wirelessHost2: WirelessHost {
            parameters:
                @display("p=59,26");
        }
        wirelessHost3: WirelessHost {
            parameters:
                @display("p=59,156");
        }
        wiredHost1: StandardHost {
            parameters:
                @display("p=415,156");
        }
        wiredHost2: StandardHost {
            parameters:
                @display("p=552,75");
        }
        router: Router {
            parameters:
                @display("p=415,40");
        }
        accessPoint: AccessPoint {
            parameters:
                @display("p=289,99");
        }
        accessPoint1: AccessPoint {
            parameters:
                @display("p=195,39");
        }
        accessPoint2: AccessPoint {
            parameters:
                @display("p=214,199");
        }
    connections:
        accessPoint.ethg++ <--> Eth100M <--> router.ethg++;
        wiredHost1.ethg++ <--> Eth100M <--> accessPoint.ethg++;
        wiredHost2.ethg++ <--> Eth100M <--> router.ethg++;
        accessPoint.ethg++ <--> Eth100M <--> accessPoint1.ethg++;
        accessPoint.ethg++ <--> Eth100M <--> accessPoint2.ethg++;
}

