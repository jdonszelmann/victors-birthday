#![allow(unused)]

use crate::config::Config;
use log::LevelFilter;
use simple_logging;

mod config;
mod datastructure;
mod raytracer;
mod renderer;
mod scene;
mod generator;
mod shader;
mod util;

fn main() {
    simple_logging::log_to_stderr(LevelFilter::Info);

    Config::load("configurations/reference.yml")
        .unwrap()
        .run()
        .unwrap();
}
