# Version: Sketchup.*


mod = Sketchup::active_model
url = "https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/425458d7-c11a-4158-bc33-68402c50ecde"
cdef = mod.definitions.load_from_url(url)
return unless cdef

point = Geom::Point3d::new( 10, 10, 0 )
cinst = mod.active_entities.add_instance(
  cdef,
  Geom::Transformation::new( point )
)