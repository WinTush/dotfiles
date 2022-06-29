local M = {}

M.config = function()
    local status_ok, wilder = pcall(require, "wilder")
    if not status_ok then
        return
    end
    wilder.setup({
        modes = { ':', '/', '?' },
    })
    wilder.set_option('renderer', wilder.popupmenu_renderer({
        -- highlighter applies highlighting to the candidates
        highlighter = wilder.basic_highlighter(),
        left = { ' ', wilder.popupmenu_devicons() },
        right = { ' ', wilder.popupmenu_scrollbar() },
        pumblend = 20,
    }))
end

return M
