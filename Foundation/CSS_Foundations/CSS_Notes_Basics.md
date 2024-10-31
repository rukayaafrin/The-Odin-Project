## Basic CSS Syntax
```css
selector {
    property: value;
}
```

## What is a selector?
- HTML element to apply CSS

### What is a Universal Selector?
```css
* {
    color: red;
}
```
- applies to all elements on the page

### What is a Type Selector?
```css
h1 {
    color: red;
}
```
- applies to all `<h1>` elements on the page

### What is a Class Selector?
```css
.highlight {
    color: red;
}
```
```html
<p class="highlight">This is a highlighted paragraph.</p>
```
- applies to all elements with the `highlight` class
- NOTE: period immediately followed by case sensitive class name
- possible to apply multiple classes to the same element
Example:
```html
<p class="highlight important">This is a highlighted and important paragraph.</p>
```
```css
.highlight.important {
    color: red;
}
```
### What is an ID Selector?
```css
#unique {
    color: red;
}
```
```html
<p id="unique">This is a unique paragraph.</p>
```
- applies to the element with the `unique` ID
- NOTE: hash symbol immediately followed by case sensitive ID name
- each ID must be unique within the page + cannot contain spaces 

### What is a Grouping Selector?
```css
.read {
  color: white;
  background-color: black;
  /* several unique declarations */
}

.unread {
  color: white;
  background-color: black;
  /* several unique declarations */
}
/*refactor*/

.read,
.unread {
  color: white;
  background-color: black;
}
```
- applies to all elements with the `read` or `unread` classes

### What is a Chaining Selector?
As a list without any separation
```html
<div>
  <div class="subsection header">Latest Posts</div>
  <p class="subsection preview">This is where a preview for a post might go.</p>
</div>
```
```css
.subsection.header {
  color: red;
}
/*if using id*/
#subsection.header {
  color: red;
}
```
- applies to all `<div>` elements with both `subsection` and `header` classes
- NOTE: do not chain more than one type selector

### What is a Descendant Combinator?
- single space between selectors
- example: `.ancestor .child` selects an element with class `child` that is a descendant of an element with class `ancestor`
```html
<div class="ancestor">
  <div class="child">Child</div>
</div>
```
```css
.ancestor .child {
  color: red;
}
```
## What are some important properties to know?
- `color`: sets the text color of an element
    - e.g. `color: red;`
- `font-family`: sets the font of an element
    - each font falls into one of the following categories:
        - Serif: fonts with serifs (small flourishes at the ends of some letters) --"Times New Roman"--
        - Sans-serif: fonts without serifs --"Arial"--
        - Monospace: fonts in which all the characters have the same width --"Courier New"--
        - Cursive: fonts that imitate handwriting --"Comic Sans MS"--
        - Fantasy: decorative fonts --"Papyrus"--
        - e.g. `font-family: Arial, sans-serif;`
    - `font-size`: sets the size of the font of an element
        - e.g. `font-size: 16px;`
    - `font-weight`: sets the weight of the font of an element
        - e.g. `font-weight: bold;` 
        - e.g. `font-weight: 400;`(100 up to 900)
    - `font-style`: sets the style of the font of an element
        - e.g. `font-style: italic;`
    - `text-align`: sets the alignment of the text of an element
        - e.g. `text-align: center;`
- `background-color`: sets the background color of an element
    - e.g. `background-color: blue;`
- `display`: sets the display mode of an element
    - e.g. `display: flex;`
- `margin` and `padding`: set the margins and padding of an element, respectively
    - e.g. `margin: 10px;`
    - e.g. `padding: 10px;`
- `border`: sets the border of an element
    - e.g. `border: 1px solid black;`
- `width` and `height`: set the width and height of an element(img, div, etc.), respectively
    - e.g. `width: 100px;`
    - e.g. `height: 100px;`

### How to add CSS to HTML?
- Inline: within the HTML element using the `style` attribute
    - e.g. `<p style="color: red;">This is a paragraph.</p>`
- Internal: within the `<head>` section of an HTML file using `<style>` elements
    - e.g. `<style>p { color: red; }</style>`
- External: placed in a separate CSS file, linked using `<link>` element in the HTML `<head>`
    - e.g. `<link rel="stylesheet" href="styles.css">`
### What are the four main CSS units?
- px: absolute unit of measurement
    - e.g. `font-size: 16px;`
- %: relative to the parent element
    - e.g. `width: 50%;`
- em: relative to the font size of the element
    - e.g. `font-size: 16px;`
    - e.g. `font-size: 1em;`
- rem: relative to the font size of the root element
    - e.g. `font-size: 16px;`
    - e.g. `font-size: 1rem;`

