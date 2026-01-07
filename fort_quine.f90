program quine
  implicit none
  character :: lf = achar(10)
  character :: q  = achar(39)
  character(len=500) :: fmt = '("program quine", A, "  implicit none", A, "  character :: lf = achar(10)", A, "  character :: q  = achar(39)", A, "  character(len=500) :: fmt = ", A, A, A, A, "  print trim(fmt), lf, lf, lf, lf, q, trim(fmt), q, lf, lf", A, "end program quine")'
  print trim(fmt), lf, lf, lf, lf, q, trim(fmt), q, lf, lf
end program quine
