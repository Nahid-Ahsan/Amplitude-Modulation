# Amplitude-Modulation
To learninng the basic theory of Amplitude Modulation (AM). And to understand the waveform and frequency spectrum of Amplitude Modulation (AM) using Matlab.

##Theory:
Amplitude modulation is defined as the multiplication of one time-domain signal by another time-domain signal, 
or mixing of the message signal with the amplitude of the carrier signal. The signals may or may not be complex in nature. 
Modulation is inherently a non-linear process, and always gives rise to frequency components that did not exist in either of the two original signals.

##Double Side Band with Full Carrier (DSB-FC or DSB):

An amplitude modulated (AM) signal of a sinusoidal message signal 𝑚(𝑡)=𝐴𝑚cos𝜔𝑚𝑡 with a HF carrier of 𝑐(𝑡)=𝐴𝑐cos𝜔𝑐𝑡 is defined as:
𝑠𝐴𝑀(𝑡)=[𝐴𝑐+𝑚(𝑡)]cos (𝜔𝑐𝑡) 
=[𝐴𝑐+𝐴𝑚cos(𝜔𝑚𝑡)]cos (𝜔𝑐𝑡)
=𝐴𝑐[1+𝜇cos(2𝜋𝑓𝑚𝑡)]cos (2𝜋𝑓𝑐𝑡);
[where, 𝜇=𝐴𝑚𝐴𝑐 is modulation index, it can also be found as 𝜇=𝑃−𝑄𝑃+𝑄, where P and Q are the peak-t-peak and trough-to-trough amplitude of the AM signal. Note that, 𝜇≤1.]
Applying Fourier transformation on the above expression, we get,
𝑆𝐴𝑀(𝑓)=𝐴𝑐2𝛿(𝑓±𝑓𝑐)+𝜇𝐴𝑐4[𝛿(𝑓±(𝑓𝑐−𝑓𝑚))+𝛿(𝑓±(𝑓𝑐+𝑓𝑚))]
If we plot this in a frequency spectrum, we will see total 3 delta functions in one half of the plane of whose, the middle one accounts for the carrier, and the other two are from the cosine message signal. 
In this scheme, carrier also transmits with the message which helps it to be detected non-coherently, so detector circuit is simplified but the efficiency is compromised.
