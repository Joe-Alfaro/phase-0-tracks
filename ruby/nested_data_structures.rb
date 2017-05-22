car_parts = {
  suspension: [
    "shock absorber",
    "conrol arm",
    "ball joint"
  ],
  brakes: [
    "pad set",
    "rotor",
    "caliper"
  ],
  engine: {
    tune_up: [
      "air filter",
      "spark plug",
      "pcv valve"
    ],
    short_block: "short block",
    cylinder_head: "cylinder head"
  }
}

p car_parts[:engine][:tune_up][1]
p car_parts[:engine][:short_block]
p car_parts[:brakes][0]