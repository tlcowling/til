VIM Manouevres - Trying to make more productive movements
=============

## Introduction

Disclaimer: I am not a vim expert, I like it, I use it a lot, I'm trying to get better at it.  I've written this from the perspective of improving my day to day usage of vim.

## Getting around
I found myself using arrow keys with vim until very recently so I instigated a remapping, I got rid of the arrow keys for motion and forced myself to use h,j,k,l.

You can do this yourself with a couple of additional lines in your .vimrc file

``noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>``

This made me realise I'm manouvering around my files by using single line/single character movements a lot.  

I notice that I tend to use / to jump to a general spot in a file via find, then use single movements to get around from there.

There are some standard improvements that I have tried:
1. Bias more towards using w, e and b for moving over words - this increases the speed of movement, though my usage of it is imprecise, I find myself jumping past where I want and then correcting back again.  
2. Use a number before the movement key - i.e. 10l (go 10 characters to the right), 10w (move past 10 words to the start of the 11th word), great if you know how far you want to go, though I often find myself guessing, missing and correcting again.

3. Making use of f and F to jump to a character on the same line - in terms of precision this is my favourite so far, especially for getting into characters in longer words or phrases of code, f plus the character you want takes you forward, F takes you backward (as is often the convention in vim with the capitalised version of the command).  Prefix f with a number to move past recurrences of the same character, and pair it with ; to move to the next occurrence of a character. 

4. Jumplist, whenever you jump in a file, vim remembers, use CTRL+I and CTRL+O to move between points

5. Special Mention:
The [easymotion](https://github.com/easymotion/vim-easymotion) plugin.  If you're into plugins, and all the exciting customisations that you can make with them, easymotion helps navigate a file with precision, the gif on the github page shows you how it works, though I think its worth cautioning that overreliance on a plugin that isn't universally available may make it harder to 

### ReSummary of moves
w Move forward to the start of the next word, prefix a number to move more
f Search for the occurrence of a character on a line after the cursor
F Search for the occurrence of a character on a line behind the cursor
; Search for next occurrence after using f or F
CTRL+O Go to the previous place you jumped to
CTRL+I Go to the next place you jumped to

Im typing something
I escape and i type something again
I use CTRL + O to do the next

### Conclusion

There are a great many aids out there for vim learning - doing the vimtutor, vimgolf, [http://vim-adventures.com/](vimadventures).  I really believe that muscle memory and repetition play a large part in helping you to improve with a tool like vim.  Though with repetition comes the likelihood of falling into patterns or behaviours which can become hard to get out of.  I believe this is an overarching issue of learning in general - whilst repetition enforces and strengthens core ability it can lead to a plateau, often where the only way to proceed is to unlearn what you know and revisit material.  This is one of my goals with TIL.  There will hopefully be a number of occurrences where I unlearn my current way of doing something and relearn another way to do something better.  And the vim landscape is rich pickings :)

### Further Reading
Vimtutor - Just type it on your command line!
[Practical Vim](http://www.amazon.com/Practical-Vim-Second-Speed-Thought/dp/1680501275/ref=sr_1_1?s=books&ie=UTF8&qid=1446487523&sr=1-1&keywords=practical+vim)
[VimAdventures](http://vim-adventures.com/)
