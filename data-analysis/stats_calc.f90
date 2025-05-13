program stats_calc
    implicit none
    integer, parameter :: maxn = 100
    integer :: i, n, j, total_freq, mode_freq, mode, temp
    real :: mean, median
    real, dimension(maxn) :: x
    integer, dimension(maxn) :: freq
    real, dimension(maxn*maxn) :: data_sorted
    integer :: k, count

    ! Take number of elements
    print *, "Enter number of elements: "
    read *, n

    ! Take values of X
    print *, "Enter the values of X:"
    do i = 1, n
        read *, x(i)
    end do

    ! Take corresponding frequencies
    print *, "Enter the corresponding frequencies:"
    do i = 1, n
        read *, freq(i)
    end do

    ! Calculate mean
    total_freq = 0
    mean = 0.0
    do i = 1, n
        mean = mean + x(i) * freq(i)
        total_freq = total_freq + freq(i)
    end do
    mean = mean / total_freq

    ! Create sorted data array for median
    k = 0
    do i = 1, n
        do j = 1, freq(i)
            k = k + 1
            data_sorted(k) = x(i)
        end do
    end do

    ! Sort the data (Bubble Sort)
    do i = 1, k - 1
        do j = i + 1, k
            if (data_sorted(i) > data_sorted(j)) then
                temp = data_sorted(i)
                data_sorted(i) = data_sorted(j)
                data_sorted(j) = temp
            end if
        end do
    end do

    ! Calculate median
    if (mod(k, 2) == 0) then
        median = (data_sorted(k/2) + data_sorted(k/2 + 1)) / 2.0
    else
        median = data_sorted((k + 1) / 2)
    end if

    ! Calculate mode (element with highest frequency)
    mode_freq = 0
    mode = -1
    do i = 1, n
        if (freq(i) > mode_freq) then
            mode_freq = freq(i)
            mode = x(i)
        end if
    end do

    ! Display result
    print *, "-----------------------------"
    print *, "Mean   = ", mean
    print *, "Median = ", median
    print *, "Mode   = ", mode
    print *, "-----------------------------"

    ! Write data to file for plotting
    open(unit=10, file="data.dat", status="replace")
    do i = 1, n
        write(10, *) x(i), freq(i)
    end do
    close(10)

    print *, "Data written to data.dat for plotting"

end program stats_calc

