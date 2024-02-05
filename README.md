# sccache #[link] attribute issue

sccache does not rebuild correctly when static library is linked with `#[link]` attribute.

## Running a clean `cargo build` without `sccache`

```
$ ./run.sh
   Compiling sccache-link-attribute v0.1.0 (/home/kantanavicius/workspace/issues/sccache-link-attribute)
    Finished release [optimized] target(s) in 0.22s
     Running `target/release/sccache-link-attribute`
Hello, world! 12345
   Compiling sccache-link-attribute v0.1.0 (/home/kantanavicius/workspace/issues/sccache-link-attribute)
    Finished release [optimized] target(s) in 0.23s
     Running `target/release/sccache-link-attribute`
Hello, world! 54321
```

## Running a clean `cargo build` with `sccache`

```
$ RUSTC_WRAPPER=sccache ./run.sh
   Compiling sccache-link-attribute v0.1.0 (/home/kantanavicius/workspace/issues/sccache-link-attribute)
    Finished release [optimized] target(s) in 0.23s
     Running `target/release/sccache-link-attribute`
Hello, world! 12345
   Compiling sccache-link-attribute v0.1.0 (/home/kantanavicius/workspace/issues/sccache-link-attribute)
    Finished release [optimized] target(s) in 0.21s
     Running `target/release/sccache-link-attribute`
Hello, world! 12345
```
