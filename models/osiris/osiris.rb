# Version: Sketchup.*


mod = Sketchup::active_model
url = "https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/b08c72b3-5f1c-499f-86e4-13578f5bfae4"
cdef = mod.definitions.load_from_url(url)
return unless cdef

point = Geom::Point3d::new( 10, 10, 0 )
cinst = mod.active_entities.add_instance(
  cdef,
  Geom::Transformation::new( point )
)