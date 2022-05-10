function draw_cooketriplet(filename::Union{Nothing,AbstractString} = nothing)
    g1, g2 = Examples_N_SK16, Examples_N_SF2
    sys = AxisymmetricOpticalSystem{Float64}(DataFrame(
        SurfaceType  = ["Object", "Standard", "Standard", "Standard", "Stop", "Standard", "Standard", "Image"],
        Radius       = [Inf,      26.777,     66.604,     -35.571,    35.571, 35.571,     -26.777,    Inf    ],
        Thickness    = [Inf,      4.0,        2.0,        4.0,        2.0,    4.0,        44.748,     missing],
        Material     = [Air,      g1,         Air,        g2,         Air,    g1,         Air,        missing],
        SemiDiameter = [Inf,      8.580,      7.513,      7.054,      6.033,  7.003,      7.506,      15.0   ],
    ))

    origins = Origins.Hexapolar(8, 15.0, 15.0)
    directions = Directions.Constant(0.0, 0.0, -1.0)
    s1 = Sources.Source(; origins, directions, sourcenum=1)

    transform = Transform(rotmatd(10, 0, 0), unitZ3())
    s2 = Sources.Source(; transform, origins, directions, sourcenum=2)

    raygenerator = Sources.CompositeSource(Transform(), [s1, s2])

    trackallrays = test = colorbysourcenum = true; resolution = (1000, 700)
    Vis.drawtracerays(sys; raygenerator, trackallrays, test, colorbysourcenum, resolution)
    Vis.make2dy(); Vis.save(filename)
    return sys
end

draw_cooketriplet(1)
