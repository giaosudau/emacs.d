(defconst yt/quotes
  '("You can't see paradise, if you don't pedal.  - Chicken Run "
    "He who who says he can and he who says he can’t are both usually right ― Confucius"
    "Why waste time proving over and over how great you are when you could be getting better? - Dweck The Mindset"
    "You’re not a failure until you start to assign blame. - The legendary basketball coach John Wooden"
    "I could hear my heart beating. I could hear everyone's heart. I could hear the human noise we sat there making, not one of us moving, not even when the room went dark. - Raymond Carver"
    "A writer is a sum of their experiences. Go get some - Stuck in Love (2012)"
    "If there is any one secret of success, it lies in the ability to get the other person's point of view and see things from that person's angle as well as from your own. - Henry Ford"
    "People who can put themselves in the place of other people who can understand the workings of their minds, need never worry about what the future has in store for them. - Owen D. Young"
    "Never explain — your friends do not need it, and your enemies will not believe you anyway. –Elbert Hubbard"
    "Never defend yourself before a popular assembly except with and by retorting an attack. -Lord Lyndhurst"
    )
  "Good quotes
   they can be useful for creative writers as well.")
(defun yt/show-random-quotes ()
  "Show random quotes to minibuffer"
  (interactive)
  (message "%s"
           (nth (random (length yt/quotes))
                yt/quotes)))
(run-with-idle-timer 60 t 'yt/show-random-quotes)