use std::fmt::Debug;
use std::sync::{Arc, Mutex};
use crate::datastructure::DataStructure;
use crate::shader::Shader;
use crate::util::camera::Camera;


use crate::util::vector::Vector;

pub mod mstracer;

/// A raytracer is a struct that takes an x and y coordinate on the screen,
/// and generates a ray associated with that coordinate. Then this ray can be passed
/// to a shader to get a color associated with this x-y coordinate.
pub trait RayTracer: Send + Sync + Debug {
    fn raytrace<'r>(
        &self,
        x: usize,
        y: usize,
        datastructure: Arc<Mutex<Box<dyn DataStructure>>>,
        shader: Arc<dyn Shader>,
        camera: &Camera,
    ) -> Vector;
}
