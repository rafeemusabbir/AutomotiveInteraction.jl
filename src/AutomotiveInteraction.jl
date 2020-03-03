# This is the module file. It allows communication between different files within the src folder
# Also, determines which functions are provided by AutomotiveInteraction whenever someone says
# using AutomotiveInteraction
module AutomotiveInteraction

using AutomotiveDrivingModels
using AutoViz
using DataFrames
using Records
using DelimitedFiles
using Reel
using Parameters

export 
    keep_vehicle_subset!,
    make_def_models,
    make_IDM_models,
    make_cidm_models,
    make_TimLaneChanger_models,
    get_hallucination_scenes,
    run_vehicles,
    run_vehicles_curvept_overlay,
    test_barrier_vehicle,
    test_jumpy_vehicle
include("driving_simulation.jl")

export 
    append_to_curve!,
    get_new_angle,
    bound_heading,
    append_headings,
    centerlines_txt2tracks,
    make_roadway_interaction,
    make_roadway_ngsim,
    make_roadway_interaction_with_extensions,
    make_discont_roadway_straight,
    make_discont_roadway_jagged
include("roadway_building.jl")

export 
    INTERACTIONTrajdata,
    carsinframe,
    car_df_index,
    read_veh_tracks
include("veh_track_reading.jl")

export 
    get_scene,
    video_trajdata_replay,
    scenelist2video,
    curvepts_overlay,
    LaneOverlay,
    render!,
    scenelist2video_curvepts
include("visualization.jl")

export
    MergingEnvironment,
    main_lane,
    merge_lane
include("environment.jl")

export
    CooperativeIDM
include("cooperative_IDM.jl")

export 
    get_front_neighbor,
    get_neighbors,
    dist_to_merge,
    time_to_merge,
    find_merge_vehicle,
    constant_acceleration_prediction,
    distance_projection,
    collision_time,
    braking_distance
include("features.jl")


end # End module
