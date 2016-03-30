
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Assemble -dir "D:/Git/DIG_Assignment1/Projeckt/Assemble/planAhead_run_1" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Git/DIG_Assignment1/Projeckt/Assemble/Assemble.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Git/DIG_Assignment1/Projeckt/Assemble} }
set_property target_constrs_file "PINS.ucf" [current_fileset -constrset]
add_files [list {PINS.ucf}] -fileset [get_property constrset [current_run]]
link_design
