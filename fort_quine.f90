program quine
  implicit none
  character(len=574) :: s = "program quine%c  implicit none%c  character(len=574) :: s = %s%c  character(len=1), parameter :: q = achar(34)%c  integer :: i%c  i = 1%c  do while (i <= len_trim(s))%c    if (s(i:i) == achar(37)) then%c      if (s(i+1:i+1) == 'c') then%c        write(*, '()')%c      else if (s(i+1:i+1) == 's') then%c        write(*, '(a)', advance='no') q // trim(s) // q%c      end if%c      i = i + 2%c    else%c      write(*, '(a)', advance='no') s(i:i)%c      i = i + 1%c    end if%c  end do%cend program quine"
  character(len=1), parameter :: q = achar(34)
  integer :: i
  i = 1
  do while (i <= len_trim(s))
    if (s(i:i) == achar(37)) then
      if (s(i+1:i+1) == 'c') then
        write(*, '()')
      else if (s(i+1:i+1) == 's') then
        write(*, '(a)', advance='no') q // trim(s) // q
      end if
      i = i + 2
    else
      write(*, '(a)', advance='no') s(i:i)
      i = i + 1
    end if
  end do
end program quine