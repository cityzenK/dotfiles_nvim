local status_ok, live_server = pcall(require, "live_server")
if not status_ok then
  return
end

live_server.setup({
  port = 7567,
  browser_command = "firefox", -- Empty string starts up with default browser
  quiet = false,
  no_css_inject = false, -- Disables css injection if true, might be useful when testing out tailwindcss
  install_path ="C:\\Users\\PC\\AppData\\Roaming\\npm\\node_modules\\live-server", 
})
