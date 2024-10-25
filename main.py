import matplotlib.pyplot as plt
import numpy as np

def draw_graph():
    # Create data points
    x = np.linspace(-10, 10, 100)
    y = x  # Since x = y

    # Create the plot
    plt.figure(figsize=(8, 6))
    plt.plot(x, y, 'b-', label='y = x')
    plt.grid(True)
    plt.title('Linear Function: y = x')
    plt.xlabel('x')
    plt.ylabel('y')
    plt.legend()
    plt.axhline(y=0, color='k', linestyle='-', alpha=0.3)
    plt.axvline(x=0, color='k', linestyle='-', alpha=0.3)

    # Show the plot
    plt.show()

if __name__ == "__main__":
    print("Drawing the graph y = x...")
    draw_graph()
