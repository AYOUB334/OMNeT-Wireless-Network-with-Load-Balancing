# OMNeT-Wireless-Network-with-Load-Balancing
This simulation models a wireless network in OMNeT++/INET with multiple access points (APs) sharing the same SSID (`MyWiFi`) but operating on different channels. It demonstrates **client association based on load balancing** rather than just signal strength.

### ✅ Features
- 3 Access Points (APs) on channels 1, 6, and 11
- Multiple WirelessHosts moving in space (MassMobility)
- Automatic AP selection based on **LoadBalancing** algorithm
- Clients generate ICMP traffic (PingApp)
- Real-time statistics: signal strength, handover count, AP association
- Configurable number of clients (Test1: normal, Test2: overload)

### 🔄 Load Balancing Behavior
Clients select the AP not only based on signal quality but also based on the number of currently associated stations. This is set by:

```ini
**.wirelessHost*.mgmt.accessPointSelection = "LoadBalancing"
```

## 🧪 How to Use This Project


## 1️⃣ Clone the Repository
```bash
git clone https://github.com/AYOUB334/OMNeT-Wireless-Network-with-Load-Balancing.git
cd OMNeT-Wireless-Network-with-Load-Balancing
```
2️⃣ Open in OMNeT++ IDE
Launch OMNeT++

Go to File → Import → General → Existing Project into Workspace

Select this project folder (OMNeT-Wireless-Network-with-Load-Balancing)

Make sure the INET project is already imported and built

💡 Tip: Right-click the project → Properties → Project References → ✔️ INET

3️⃣ Build the Project
In the OMNeT++ IDE:

Right-click the project → Build Project

Or via terminal:

bash
Copier
Modifier
make
4️⃣ Run the Simulation
Open the file omnetpp.ini

Right-click → Run As → OMNeT++ Simulation

Select one of the following configurations:

🟢 Test1: 5 mobile clients (balanced load scenario)

🔴 Test2: 10 clients (overload and automatic AP reassociation)
