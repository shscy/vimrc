vim.opt.termguicolors = true
require'bufferline'.setup {
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left",
            },
        },
        close_command = function(bufnum)
            require('bufdelete').bufdelete(bufnum, true)
        end,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "("..count..")"
        end,
        sort_by = 'insert_after_current',
        custom_filter = function(buf_number, buf_numbers)
            -- filter out filetypes you don't want to see
            if vim.bo[buf_number].filetype == "qf" then
                return false
            end
            if vim.bo[buf_number].buftype == "terminal" then
                return false
            end
            if vim.bo[buf_number].buftype == "nofile" then
                return false
            end
            if vim.bo[buf_number].filetype == "Trouble" then
                return false
            end
            -- if string.find(vim.fn.bufname(buf_number), 'term://') == 1 then
            --     return false
            -- end
            return true
        end,
    }
}


vim.cmd [[
aug buffer_accessed_time
  au!
  au BufEnter,BufWinEnter * let b:accessedtime = localtime()
aug END

function! BufferLineSortByMRU()
  lua require'bufferline'.sort_buffers_by(function(a, b) return (vim.b[a.id].accessedtime or 0) > (vim.b[b.id].accessedtime or 0) end)
endfunction

command -nargs=0 BufferLineSortByMRU call BufferLineSortByMRU()
]]
