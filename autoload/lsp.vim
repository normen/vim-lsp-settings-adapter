" makes vim-lsp-settings work with lsp(vim9) plugin
function! lsp#register_server(server_info) abort
  "let l:server_name = a:server_info['name']
  "let l:project_root = a:server_info['root_uri']("")
  let lspServers = [
        \     #{
        \  filetype: a:server_info["allowlist"],
        \  path: a:server_info["cmd"]("")[0],
        \  args: a:server_info["cmd"]("")[1:],
        \  initializationOptions: a:server_info["initialization_options"],
        \      }
        \   ]
  call lsp#lsp#AddServer(lspServers)
endfunction

function! lsp#register_command(command_name, callback) abort
endfunction

function! lsp#register_notifications(name, callback) abort
endfunction

function! lsp#unregister_notifications(name) abort
endfunction

function! lsp#stop_server(server_name) abort
endfunction

function! lsp#get_allowed_servers(...) abort
  return []
endfunction

" Returns the current status of all servers (if called with no arguments) or
" the given server (if given an argument). Can be one of "unknown server",
" "exited", "starting", "failed", "running", "not running"
function! lsp#get_server_status(...) abort
  return "unknown server"
endfunction
