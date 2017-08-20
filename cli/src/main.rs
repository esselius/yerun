extern crate clap;
use clap::App;

fn main() {
  App::new("yerun").version("v0.1").get_matches();
}
