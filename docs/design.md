## Why

Tachistoscope is a project that explores how to best design an application 
in the modern era. At the same time, it is meant to be a useful application 
for reading, teaching and learning.

Personally, my goal is to really understand what makes a flexible and maintainable
design, without relying on a single language's ecosystem, and also to explore
technologies I am interested in such as streaming and functional programming.

## What is a Tachistoscope?

A tachistoscope is a device used to make reading more efficient by flashing
each word on the screen for a specific time. The theory is that by keeping
the words in the same spot you eliminate wasteful movement of your eyes, and
increasing the speed helps take advantage of the fact that your brain requires
less time to process words than you think.

## Components

There will be multiple components to this application. A primary goal is to 
investigate various design methodologies. Therefore, there will be an emphasis
on exploring various methods of decoupling, and how one might integrate different
languages, technologies and frameworks while still having a coherent and
maintainable design.

At a high level, Tachistoscope will have a web application, with a browser based
front end and a server application. There will also be a hardware device aspect,
and there could be a command line interface component and maybe a GUI application.

## Languages

In order to get a sense for how to decouple components when they cross physical
or address space boundaries, I plan to use multiple languages in this project. 
Decoupling via interfaces or typing is great if your language is consistent, but
I am interested in the boundary conditions... how do you properly program to an 
interface when crossing language borders? What options for APIs exist outside of
HTTP servers?

As such, I plan to use at least the following languages:

- Scala
- Elm
- Javascript/Typescript
- Python
- C/C++

Compression. sending all the bits to the information our guys cant do it.