use crate::scene::error::SceneError;
use thiserror::Error;
use std::io;

#[derive(Debug, Error)]
pub enum ConfigError {
    #[error(transparent)]
    YamlError(#[from] serde_yaml::Error),

    #[error(transparent)]
    IoError(#[from] io::Error),

    #[error(transparent)]
    TobjLoadError(#[from] tobj::LoadError),

    #[error(transparent)]
    SceneError(#[from] SceneError),
}
