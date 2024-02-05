#[link(name = "helloworld", kind = "static")]
extern "C" {
    pub fn hello_world() -> i32;
}

pub fn do_hello_world() {
    unsafe {
        println!("Hello, world! {}", hello_world());
    }
}
