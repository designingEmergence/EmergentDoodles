Emergent Doodles - http://www.designingemergence.com/portfolio/emergent-doodles/

I have always been fascinated by how simple rules can give rise to complex patterns. I first began exploring this idea on paper. I drew lines that adhered to specific rules (take 1 step, turn right, turn left). Based on these experiments, I created Emergent Doodles, a processing sketch that creates patterns based on rules defined by the user.

Requirements:

  - Processing
  
Files:

  - Emergent_Doodles.pde: Main project file. Initializes and runs doodler
  - Doodler.pde: Class file for doodling entity
  - Rule.pde: Class file for rule
  - Cool_Rules: A list of rules that generated interesting patterns
  
Method:

  - Open Emergent_Doodles.pde in processing
  - Input to Rule Sets in lines 13 and 14
  - rule 0 is the path the doodler takes in normal circumstances
  - rule 1 is the path the doodler takes when it encounters an obstace (its trail)
  - below is a reference for each action that can be contained in the ruleset
  
  F: Take 1 Step forward
  +: Rotate Clockwise
  -: Rotate Counterclockwise
  J: Skip 1 step forward (without doodling)
  [: Set reference frame
  ]: Save reference frame
  
  - Run the program and watch it create a new pattern. 
  
