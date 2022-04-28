Raspberry Pi Pico USB-UART Bridge
=================================

This program bridges the Raspberry Pi Pico HW UARTs to two independent USB CDC serial devices in order to behave like any other USB-to-UART Bridge controllers.

Disclaimer
----------

This software is provided without warranty, according to the MIT License, and should therefore not be used where it may endanger life, financial stakes, or cause discomfort and inconvenience to others.

Raspberry Pi Pico Pinout
------------------------

| Raspberry Pi Pico GPIO | Function  |
|:----------------------:|:---------:|
| GPIO16 (Pin 21)        | UART0 TX  |
| GPIO17 (Pin 22)        | UART0 RX  |
| GPIO2 (Pin 4)          | UART0 CTS |
| GPIO3 (Pin 5)          | UART0 RTS |
| GPIO4 (Pin 6)          | UART1 TX  |
| GPIO5 (Pin 7)          | UART1 RX  |
| GPIO6 (Pin 9)          | UART1 CTS |
| GPIO7 (Pin 10)         | UART1 RTS |

Optional Hardware Flow-control
------------------------------

Hardware Flow-control is disabled by default, but can be compiled in by running:

``` bash
cmake -DFLOW_CONTROL .
make
```
