const MONOKAY = Dict(
            "COLOR_ASPHALT"              => colorant"0x708090",
            "COLOR_LANE_MARKINGS_WHITE"  => colorant"0xDFDFDF",
            "COLOR_LANE_MARKINGS_YELLOW" => colorant"0xFFEF00",
            "COLOR_CAR_EGO"              => colorant"0x00FFFF",
            "COLOR_CAR_OTHER"            => colorant"0xFF007F", 
            "COLOR_ROAD_BOUNDARIES"      => colorant"white",
            "foreground" => colorant"0xCFBFAD",
            "background" => colorant"black",
            "color1"     => colorant"0x52E3F6", # light blue
            "color2"     => colorant"0xA7EC21", # light green
            "color3"     => colorant"0xFF007F", # red
            "color4"     => colorant"0xF9971F", # orange
            "color5"     => colorant"0x79ABFF", # cobalt
    )

const OFFICETHEME = Dict(
            "COLOR_ASPHALT"              => colorant"0x708090",
            "COLOR_LANE_MARKINGS_WHITE"  => colorant"0xDFDFDF",
            "COLOR_LANE_MARKINGS_YELLOW" => colorant"0xFFEF00",
            "COLOR_CAR_EGO"              => colorant"#0090bc",
            "COLOR_CAR_OTHER"            => colorant"#ce0300" ,
            "COLOR_ROAD_BOUNDARIES"      => colorant"white",
            "foreground" => colorant"0xCFBFAD",
            "background" => colorant"transparent",
            "color1"     => colorant"#0090bc", # light blue
            "color2"     => colorant"#00a321", # light green
            "color3"     => colorant"#ce0300", # red
    )


const LIGHTTHEME = Dict(
            "COLOR_ASPHALT"              => colorant"transparent",
            "COLOR_LANE_MARKINGS_WHITE"  => colorant"black",
            "COLOR_LANE_MARKINGS_YELLOW" => colorant"0xFFEF00",
            "COLOR_CAR_EGO"              => colorant"#0090bc",
            "COLOR_CAR_OTHER"            => colorant"#ce0300" ,
            "COLOR_ROAD_BOUNDARIES"      => colorant"white",
            "foreground" => colorant"0xCFBFAD",
            "background" => colorant"transparent",
            "color1"     => colorant"#0090bc", # light blue
            "color2"     => colorant"#00a321", # light green
            "color3"     => colorant"#ce0300", # red
    )

global _colortheme = MONOKAY

""" 
    set_color_theme(colortheme)
Change the color theme of the package
"""
function set_color_theme(colortheme)
    global _colortheme
    _colortheme = colortheme
end

COLOR_ASPHALT       = _colortheme["COLOR_ASPHALT"]
COLOR_LANE_MARKINGS_WHITE = _colortheme["COLOR_LANE_MARKINGS_WHITE"]
COLOR_LANE_MARKINGS_YELLOW = _colortheme["COLOR_LANE_MARKINGS_YELLOW"]
COLOR_CAR_EGO       = _colortheme["COLOR_CAR_EGO"]
COLOR_CAR_OTHER     = _colortheme["COLOR_CAR_OTHER"]


function Vec.lerp(a::Colorant, b::Colorant, t::Real)

    ra = red(a)
    rb = red(b)
    ga = green(a)
    gb = green(b)
    ba = blue(a)
    bb = blue(b)
    aa = alpha(a)
    ab = alpha(b)

    r = ra + (rb - ra)*t
    g = ga + (gb - ga)*t
    b = ba + (bb - ba)*t
    a = aa + (ab - aa)*t

    RGBA(r,g,b,a)
end
