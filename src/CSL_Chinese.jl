module CSL_Chinese

using Books
using Reexport: @reexport

@reexport using Books:
    build_all, html, pdf,
    gen,

"""
    build()

This function is called during CI.
"""
function build()
    # To avoid publishing broken websites.
    fail_on_error = true
    gen(; fail_on_error)
    html()
    #build_all(; fail_on_error)
end

end # module
