use wgputest::run;
pub mod depth_challenge;
pub mod simple_lib;
pub mod texture;

fn main() {
    pollster::block_on(depth_challenge::run());
}
