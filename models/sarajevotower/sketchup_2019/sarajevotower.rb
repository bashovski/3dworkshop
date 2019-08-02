# Version: Sketchup 2018


mod = Sketchup::active_model
url = "https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/63584de1-d2e0-4e03-8053-74cc543d4591"
cdef = mod.definitions.load_from_url(url)
return unless cdef

point = Geom::Point3d::new( 10, 10, 0 )
cinst = mod.active_entities.add_instance(
  cdef,
  Geom::Transformation::new( point )
)