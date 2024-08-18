use wgputest::run;
// mod camera;
// mod depth;
// pub mod depth_challenge;
// mod model;
// pub mod texture;
pub mod uniform;

fn main() {
    pollster::block_on(uniform::run());
}
