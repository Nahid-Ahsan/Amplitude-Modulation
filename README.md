# Amplitude-Modulation
To learninng the basic theory of Amplitude Modulation (AM). And to understand the waveform and frequency spectrum of Amplitude Modulation (AM) using Matlab.

## Theory:

Amplitude modulation is defined as the multiplication of one time-domain signal by another time-domain signal, 
or mixing of the message signal with the amplitude of the carrier signal. The signals may or may not be complex in nature. 
Modulation is inherently a non-linear process, and always gives rise to frequency components that did not exist in either of the two original signals.

## Double Side Band with Full Carrier (DSB-FC or DSB):

An amplitude modulated (AM) signal of a sinusoidal message signal 𝑚(𝑡)=𝐴𝑚cos𝜔𝑚𝑡 with a HF carrier of 𝑐(𝑡)=𝐴𝑐cos𝜔𝑐𝑡 is defined as:

S_𝐴𝑀(𝑡)=[𝐴𝑐+𝑚(𝑡)]cos (𝜔𝑐𝑡) 

=[𝐴𝑐+𝐴𝑚cos(𝜔𝑚𝑡)]cos (𝜔𝑐𝑡)
=𝐴𝑐[1+𝜇cos(2𝜋𝑓𝑚𝑡)]cos (2𝜋𝑓𝑐𝑡);

[where, 𝜇=𝐴𝑚𝐴𝑐 is modulation index, it can also be found as 𝜇=𝑃−𝑄𝑃+𝑄, where P and Q are the peak-t-peak and trough-to-trough amplitude of the AM signal. Note that, 𝜇≤1.]

Applying Fourier transformation on the above expression, we get,

𝑆_𝐴𝑀(𝑓)=𝐴𝑐2𝛿(𝑓±𝑓𝑐)+𝜇𝐴𝑐4[𝛿(𝑓±(𝑓𝑐−𝑓𝑚))+𝛿(𝑓±(𝑓𝑐+𝑓𝑚))]

If we plot this in a frequency spectrum, we will see total 3 delta functions in one half of the plane of whose, the middle one accounts for the carrier, and the other two are from the cosine message signal. 
In this scheme, carrier also transmits with the message which helps it to be detected non-coherently, so detector circuit is simplified but the efficiency is compromised.

![alt txt](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_fc%20(1).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_fc%20(2).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_fc%20(3).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_fc%20(4).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_fc%20(5).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_fc%20(6).png)



## Double Side Band with Suppressed Carrier (DSB-SC):

This form of modulation is very popular. In this scheme, we will just multiply the message signal with the carrier signal and get the DSB-SC AM signal. Why it is called ‘SC’ will be clarified from its spectrum.

Let’s see. For the previous message and carrier, we define a DSBSC signal as,

S_𝐴𝑀(𝑡)=𝑚(𝑡)𝑐(𝑡)

=𝐴𝑚𝐴𝑐cos(𝜔𝑚𝑡)cos(𝜔𝑐𝑡)

=𝐴𝑚𝐴𝑐2[cos(2𝜋(𝑓𝑚+𝑓𝑐)𝑡)+cos(2𝜋(𝑓𝑐−𝑓𝑚)𝑡)]

In frequency domain,

𝑆_𝐴𝑀(𝑓)=𝐴𝑚𝐴𝑐4[𝛿(𝑓±(𝑓𝑚+𝑓𝑐))+𝛿(𝑓±(𝑓𝑐−𝑓𝑚))]

Look, there is no delta at the carrier frequency. So, carrier isn't tranmitted at all and the entire modulated
signal is formed of only shifted message spectrum. That's why it is called DSB-SC AM. It has to be detected
by coherent local oscillator; non-coherent detection isn't allowed for it. So, to increase efficiency, we need to
compromise the detector circuit's complexity.

![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_sc%20(1).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_sc%20(2).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_sc%20(3).png)

![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_sc%20(4).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_sc%20(5).png)
![](https://github.com/Nahid-Ahsan/Amplitude-Modulation/blob/master/dsb_sc%20(6).png)

## Report
1. Design DSSB-FC and DSB-SC AM Scheme using sinusoidal message and triangular wave carrier.

2. Design the above using square wave carrier. Show both time and frequency domain plots of every signal.



