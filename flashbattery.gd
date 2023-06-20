extends Sprite2D


var charge = 100
signal batteryDead(charge_val)
signal batteryCharged(charge_val)

func _process(delta):
	# checking to decrease battery
	if charge == 100:
		self.frame = 0
	elif charge == 75:
		self.frame = 1
	elif charge == 50:
		self.frame = 2
	elif charge == 25:
		self.frame = 3
	elif charge == 0:
		self.frame = 4
		

func chargeBattery():
	charge = 100
	batteryCharged.emit(self.charge) #will signal to allow use of tool again


func _on_flash_timer_timeout():
	if charge > 0:
		charge -= 25
	if charge == 0:
			print("battery dead")
			batteryDead.emit(self.charge) # will signal to stop use of tool
