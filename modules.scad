wood=20.9;
width=7;
screwdiameter = 3.1;
part =wood+width;


module connectorTop(){
	difference(){
		hull(){
		cube([part*1.5,part,part*2]);
		translate([-wood,0,width])rotate([0,22.5,0])cube([part,part,part*1.]);
		}
		translate([-25,width/2,0])rotate([0,22.5,0])cube([wood,wood,wood*2]);
		translate([wood*1.1,width/2,0]) cube([wood*1.2,wood,wood*1.3]);
		translate([15, -10, wood*1.5])cube([wood, wood*2,wood]);

		//cut the bottom
		translate([-wood,-wood,wood*-1])cube([wood*3,wood*3,wood*1]);

		//screwholes
		translate([wood, part/2, wood+ wood])rotate([0,90,0])cylinder(r=screwdiameter/2, h=40);
		translate([part+width/2, part*2, 15])rotate([90,0,0])cylinder(r=screwdiameter/2, h=80);
		translate([-6,60, 20])rotate([90,0,0])cylinder(r=screwdiameter/2, h=80);
	}
}

module connectorFrontLower(){
	difference(){
			cube([part*1.7,part,part*1.7]);

			//holes
			translate([wood*1.1,width/2,0]) cube([wood*2,wood,wood]);
			translate([-width,width/2,31]) rotate([0,22.5,0])cube([wood,wood,wood*5]);
			translate([24,0,wood+width/2]) cube([wood, wood*3, wood]);

			//holes for screws
			translate([wood, part/2, part+ width])rotate([0,90,0])cylinder(r=screwdiameter/2, h=40);
			translate([part+width/2, part*2, wood/2])rotate([90,0,0])cylinder(r=screwdiameter/2, h=80);
			translate([10, part*2, 35])rotate([90,0,0])cylinder(r=screwdiameter/2, h=80);
	}
}

module connectorRight(){
	mirror([0,0,0]){
		rotate([90,0,0]){
			difference(){
				cube([part*2,part,part]);		
				//holes
				translate([width/2,0,0])cube([wood,wood*2,wood]);
				translate([part+width,width,width/2]) cube([wood,wood*2,wood]);

				//holes for screws
				translate([0,part/2,10])rotate([0,90,0])cylinder(r=screwdiameter/2, h=10);
				translate([45,17,0])rotate([0,0,90])cylinder(r=screwdiameter/2, h=20);
			}
		}
	}
}

module connectorLeft(){
	mirror([0,1,0]){
		rotate([90,0,0]){
			difference(){
				cube([part*2,part,part]);		
				//holes
				translate([width/2,0,0])cube([wood,wood*2,wood]);
				translate([part+width,width,width/2]) cube([wood,wood*2,wood]);

				//holes for screws
				translate([0,part/2,10])rotate([0,90,0])cylinder(r=screwdiameter/2, h=10);
				translate([45,17,0])rotate([0,0,90])cylinder(r=screwdiameter/2, h=20);
			}
		}
	}
}

module connectorBackLower(){
	difference(){
			cube([part*1.5,part,part*1.7]);
		
			//holes
			translate([wood*1.1,width/2,0]) cube([wood,wood,wood]);
			translate([-width,width/2,wood]) cube([wood,wood,wood*1.3]);
			translate([15,0,wood+width/2]) cube([wood, wood*3, wood]);

			//holes for screws
			translate([wood, part/2, part+ width])rotate([0,90,0])cylinder(r=screwdiameter/2, h=40);
			translate([part+width/2, part*2, wood/2])rotate([90,0,0])cylinder(r=screwdiameter/2, h=80);
			translate([width, part*2, 35])rotate([90,0,0])cylinder(r=screwdiameter/2, h=80);
	}
}
