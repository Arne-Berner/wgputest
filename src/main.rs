use wgputest::run;
mod depth;
pub mod depth_challenge;
pub mod simple_lib;
pub mod texture;
pub mod uniform;

fn main() {
    pollster::block_on(uniform::run());
}
