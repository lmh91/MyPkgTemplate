module PkgName

    """
        struct ExampleStruct{T}

    # Fields
    * `a::T`
    * `b::Vector{T}`
    """
    struct ExampleStruct{T}
        a::T
        b::Vector{T}
    end

    """
        ExampleStruct(a::T) where {T}

    Example construct 1.

    # Arguments:
    * `a::T`
    """
    function ExampleStruct(a::T) where {T}
        ExampleStruct{T}(a, [a])
    end


    """
        ExampleStruct(a::Vector{T}) where {T}

    Example construct 2.

    # Arguments:
    * `a::Vector{T}`
    """
    function ExampleStruct(a::Vector{T}) where {T}
        ExampleStruct{T}(a[1], a)
    end

end