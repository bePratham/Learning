import Foundation

let x = 10
let y = 20
let z = x * y

func perform<N: Numeric>(
    _ op:(N, N)-> N,
    first lhs: N,
    second rhs: N
) -> N{
    op(lhs, rhs)
}

perform(+, first: 10, second: 20)
perform(*, first: 10.21, second: 22)
