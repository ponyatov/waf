//! HTTP control server

#![allow(dead_code)]
#![allow(unused_variables)]
#![allow(unused_imports)]

mod config;

use std::{
    io::{Read, Write},
    net::{TcpListener, TcpStream},
    thread,
};

const INDEX_BODY: &[u8] = include_bytes!("../static/index.html");
const LOGO_PNG: &[u8] = include_bytes!("../doc/logo.png");
const CSS_CSS: &[u8] = include_bytes!("../static/css.css");
const JS_JS: &[u8] = include_bytes!("../static/js.js");
const JQUERY_JS: &[u8] = include_bytes!("../static/cdn/jquery.min.js");
const APP_WASM: &[u8] = include_bytes!("../bin/waf.wasm");

// HTTP return codes
const HTTP_200_OK: &[u8] = b"HTTP/1.1 200 OK\r\n";
const HTTP_404_NOTFOUND: &[u8] = b"HTTP/1.1 404 Not Found\r\n";

// MIME types
const TEXT_HTML: &[u8] = b"Content-Type: text/html; charset=utf-8\r\n";
const TEXT_PLAIN: &[u8] = b"Content-Type: text/plain; charset=utf-8\r\n";
const TEXT_CSS: &[u8] = b"Content-Type: text/css\r\n";
const TEXT_JS: &[u8] = b"Content-Type: application/javascript\r\n";
const IMAGE_PNG: &[u8] = b"Content-Type: image/png\r\n";
const WASM_MODULE: &[u8] = b"Content-Type: application/wasm\r\n";


pub fn main() {
    let listener = TcpListener::bind(config::server::bind).unwrap();
    eprintln!(
        "server @ http://{ip}:{port}",
        ip = config::server::ip,
        port = config::server::port
    );
}
