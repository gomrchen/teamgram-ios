import Foundation

// gnetway MTProto DC1 seed; reachable from phone on LAN TCP 10443. Update if server IP changes.
enum TeamgramGatewayLanHost {
    static let ipv4 = "192.168.1.22"

    static var seedDatacenter1Ips: [String] { [ipv4] }
}
