
# 📊 Fortran Statistics Calculator

This is a basic **Fortran program** to compute **Mean**, **Median**, and **Mode** from a set of user-provided data and their corresponding frequencies. It also generates a data file for plotting the frequency distribution using **Gnuplot**.

---

## 🚀 Features

- Accepts input for data values (`X`) and their corresponding frequencies
- Calculates:
  - **Mean**
  - **Median**
  - **Mode**
- Outputs the results to the console
- Writes the data to a `.dat` file for graph plotting
- Compatible with Gnuplot for visualization

---

## 📥 Input Format

The program expects:

1. Number of data elements (`n`)
2. `n` values of `X`
3. `n` corresponding frequencies

### Example:

```
Enter number of elements:  
5

Enter the values of X:  
2
4
6
8
10

Enter the corresponding frequencies:  
1
3
5
3
1

```

---

## 📤 Output Format

The program will display:

```
-----------------------------
Mean   = 6.0
Median = 6.0
Mode   = 6
-----------------------------
Data written to data.dat for plotting
```

---

## 📈 Plotting the Graph

You can visualize the frequency distribution using **Gnuplot**.

### Step 1: Create a `plot.gp` script:

```gnuplot
set title "Frequency Distribution"
set xlabel "X"
set ylabel "Frequency"
set style data histograms
set style fill solid 1.0
set boxwidth 0.5
plot "data.dat" using 2:xtic(1) title "Freq" lc rgb "blue"
```

### Step 2: Run the plot

```bash
gnuplot -p plot.gp
```

Make sure you have Gnuplot installed:

```bash
sudo apt install gnuplot   # Debian/Ubuntu
```

---

## 🛠 Compile and Run

### Compilation

```bash
gfortran stats_calc.f90 -o stats_calc
```

### Run

```bash
./stats_calc
```

---

## 📁 File Structure

```
.
├── stats_calc.f90   # Fortran source code
├── data.dat         # Generated data file for plotting
├── plot.gp          # Gnuplot script for visualization
└── README.md        # Project documentation
```

---

## 📚 License

This project is open-source and free to use for educational purposes.

---

## ✨ Author
</Upesh Bhujel> AKA </Cupid>
Crafted with ❤️ using Fortran and Gnuplot.  
