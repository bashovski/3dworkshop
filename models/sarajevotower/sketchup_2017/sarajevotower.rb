# Version: Sketchup 2017


mod = Sketchup::active_model
url = "https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/7b216dfa-91f6-4825-9ae8-8317d8daa2f8"
cdef = mod.definitions.load_from_url(url)
return unless cdef

point = Geom::Point3d::new( 10, 10, 0 )
cinst = mod.active_entities.add_instance(
  cdef,
  Geom::Transformation::new( point )
)