command_strip_length = 75;
command_strip_width = 18.6;

cube([command_strip_length, command_strip_width * 2 + 2, 2], center = true);

difference() {
  translate([0, 0, 2])
  rotate([90, 0, 0])
  rotate_extrude(convexity = 10, $fn = 100)
  translate([7, 0, 0])
  circle(r = 3, $fn = 100);

  translate([0, 0, -10])
  cube([command_strip_length, command_strip_width * 2 + 3, 20], center = true);
}