//Define WaterSystem Protocol
protocol WaterSystem {
  var waterCapacity: Double { get set }
  func fillWaterTank(amount: Double)
  func drainWaterTank(amount: Double)
}

//Define ElectricitySytem Protocol
protocol ElectricitySystem {
  var batteryLevel: Double { get set }
  func chargeBattery(amount: Double)
  func checkBatteryLevel()
}

// Define Camper class conforming to WaterSystem and ElectricitySystem protocols
class Camper: WaterSystem, ElectricitySystem{
    func fillWaterTank(amount: Double) {
        print("Water tank is at \(waterCapacity)% and being filled")
    }

    func drainWaterTank(amount: Double) {
        print("Water tank is being drained")
    }

    func chargeBattery(amount: Double) {
        print("Battery is being charged")
    }

var waterCapacity: Double
var batteryLevel: Double

init(waterCapacity: Double, batteryLevel: Double) {
self.waterCapacity = waterCapacity
self.batteryLevel = batteryLevel

}
  //WaterSystem Protocal Methoods
  func fillWaterTank() {
  print("Water tank is at \(waterCapacity)% and being filled")
}
  
  func drainWaterTank() {
  print("Water tank is not being drained")

  }
  
    //ElectricitySystem Protocal Methoods
  func chargeBattery() {
  print("Battery is being charged")

  }

  func checkBatteryLevel() {
  print("Battery level is at \(batteryLevel)%")
  }
}

let myCamper = Camper(waterCapacity: 20.0, batteryLevel: 50.0)
myCamper.fillWaterTank()
myCamper.drainWaterTank()
myCamper.chargeBattery()
myCamper.checkBatteryLevel()
