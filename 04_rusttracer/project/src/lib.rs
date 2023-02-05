use crate::config::Config;

use log::LevelFilter;
use simple_logging;

pub mod config;
pub mod datastructure;
pub mod raytracer;
pub mod renderer;
pub mod scene;
pub mod generator;
pub mod shader;
pub mod util;

pub fn main() {
    simple_logging::log_to_stderr(LevelFilter::Info);

    Config::load("configurations/monte-carlo.yml")
        .unwrap()
        .run()
        .unwrap();
}
