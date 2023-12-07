function page() {
    <pre>Hello, world!</pre>
}

Server.start(
    Server.http,
    {~page, title: "SPEPL"}
)
