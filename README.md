# STREAM
stream benchmarks from https://www.cs.virginia.edu/stream/ref.html#what

## To Build
`make`

## To Run
```bash
./streamc
./streamf
```

## Comments
1. for `stream.f` I had to take out `-fopenmp` because it segfaults when built with openmp. So the performance for multicore can't be evaluated with fortran version.
