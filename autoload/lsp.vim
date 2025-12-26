let g:lsp_log_file = ''
let g:lsp_log_verbose = 0

" makes vim-lsp-settings work with lsp(vim9) plugin
function! lsp#register_server(server_info) abort
  "let l:server_name = a:server_info['name']
  let lspServers = [
        \     #{
        \  filetype: a:server_info["allowlist"],
        \  path: a:server_info["cmd"]("")[0],
        \  args: a:server_info["cmd"]("")[1:],
        \      }
        \   ]
  if a:server_info->get('initialization_options', v:null)->type() == v:t_dict
    let lspServers[0]['initializationOptions'] = a:server_info['initialization_options']
  endif
  if a:server_info->get('workspace_config', v:null)->type() == v:t_dict
    let lspServers[0]['workspaceConfig'] = a:server_info['workspace_config']
  endif
  if a:server_info->get('root_uri', v:null)->type() == v:t_func
    let lspServers[0]['rootSearch'] = a:server_info['root_uri'](a:server_info)
  endif
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

function! lsp#log_verbose(...) abort
    if g:lsp_log_verbose
        call call(function('lsp#log'), a:000)
    endif
endfunction

function! lsp#log(...) abort
    if !empty(g:lsp_log_file)
        call writefile([strftime('%c') . ':' . json_encode(a:000)], g:lsp_log_file, 'a')
    endif
endfunction

function! lsp#ensure_flush_all(buf, server_names) abort
endfunction

" Returns the current status of all servers (if called with no arguments) or
" the given server (if given an argument). Can be one of "unknown server",
" "exited", "starting", "failed", "running", "not running"
function! lsp#get_server_status(...) abort
  return "unknown server"
endfunction
