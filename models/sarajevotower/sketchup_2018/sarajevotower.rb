mod = Sketchup::active_model
url = "https://3dwarehouse.sketchup.com/model/8b897767f783df7c7bb6b7c16e3a2cab/Router-D-link"
cdef = mod.definitions.load_from_url(url)
return unless cdef

point = Geom::Point3d::new( 10, 10, 0 )
cinst = mod.active_entities.add_instance(
  cdef,
  Geom::Transformation::new( point )
)