# Exercise: Basic CSS Styling
Following this example will review what we already know about HTML and CSS

**Create our project structure**
If you are having trouble doing this from the command line, please revisit [CodeCademy - Learn the command-line](https://www.codecademy.com/learn/learn-the-command-line)  

1. Create the following directory structure on your desktop
```
css_review
|
│   index.html  
|
└───assets
    │
    └───images
        |
        javascripts
        |
        stylesheets
        |
        │   custom.css
        |
```


**Setup your files**  

2. Open index.html and create the basic html structure for a page.
4. Add the following code to your `<body>` tag
```html
<h1>Headline</h1>

<h2>sub-headline</h2>

<div>
    
    <p>Turmoil has engulfed the Galactic Republic. The taxation of trade routes to outlying star systems is in dispute.</p>
    <p>Hoping to resolve the matter with a blockade of deadly battleships, the greedy Trade Federation has stopped all shipping to the small planet of Naboo.</p>
    <p>While the Congress of the Republic endlessly debates this alarming chain of events, the Supreme Chancellor has secretly dispatched two Jedi Knights, the guardians of peace and justice in the galaxy, to settle the conflict...</p>
    
</div>

<h3>Nerdy Movies</h3>

<ul>
    
    <li>Star Wars</li>
    
    <li>Star Trek</li>
    
    <li>Everything else...</li>
    
</ul>

<h3>How to Make a Peanut Butter &amp; Jelly Sandwich</h3>

<ol>
    
    <li>Take out 2 pieces of bread</li>
    <li>Spread the jelly/jam on one slice</li>
    <li>Spread the peanut butter on the other</li>
    <li>Press together to make a sandwich</li>
    <li>Cut into triangles</li>
    
</ol>
```
5. Link your stylesheet to your html file using the `<link>` tag
```html
    <head>
        <link rel="stylesheet" type="text/css" href="assets/stylesheets/custom.css">
    </head>
```


**Exercise Instructions**  
Complete the steps below to the best of your ability using what you already know about HTML and CSS.

* Open custom.css and follow the instructions below.
* You may have to make some edits to the html file

1. Make the headline `<h1>` text uppercase, aligned to the right, italic, and use the font-family Helvetica
2. Give the subheadline `<h2>` a background color of green, text color of white, a 2px dotted white border, and a border radius of at least 5px
3.  for the paragraphs in the first `<div>`, add a unique id to each paragraph; then center the first 2 paragraphs and make the last one justified
4. For the unordered list, make the leading dot/circle a hollow circle.
5. Add 3 movies to the Nerdy Movies list, and then hide only "Star Wars"
6. Make all of the list items in the ordered list sit on the same row/line
7. In the first `<div>` tag with the 3 paragraphs and headline inside, use the 'float' attribute again to create a grid with 4 equal-width items: the first 2 paragraphs should sit on the first row, with the third paragraph and headline on the second row; give the paragraphs background colors of red, yellow, and green, respectively, and then give the headline a background color of purple
8. Use only positioning to shift the last item in the ordered list up 4px and right 8px