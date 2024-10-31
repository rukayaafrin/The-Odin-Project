## What is the Cascade?
- inline styles have the highest specificity compared to selectors
- The order of specificity importance:
    1. Inline styles
    2. ID selectors
    3. Class selectors
    4. Type selectors

Example: 
<!-- index.html -->
```html
<div class="main">
  <div class="list subsection">Red text</div>
</div>
```

```css
/* rule 1 */
.subsection {
  color: blue;
}

/* rule 2 */
.main .list {
  color: red;
}
```

###Where is the conflict in the above example?
- The Red text is conflicted between rule 1 and rule 2.
- 3 class selectors are involved
- Rule 2 uses MORE selectors --> higher specificity
- Rule 2 will be applied

Example 2:
<!-- index.html -->
```html
<div class="main">
  <div class="list" id= "subsection">Red text</div>
</div>
```

```css
/* rule 1 */
#subsection {
  color: blue;
}

/* rule 2 */
.main .list {
  color: red;
}
```

### Where is the conflict in the above example?
- 1 ID selector vs 2 class selectors
- ID selector has higher specificity compared to class selectors
- Rule 1 will be applied

Example 3:
<!-- index.html -->
```html
<div class="main">
  <div class="list" id="subsection">Red text on yellow background</div>
</div>
```

```css
/* rule 1 */
#subsection {
  color: blue;
}

/* rule 2 */
.main #subsection {
 color: red;
}
```

### Where is the conflict in the above example?
- 1 ID selector vs combination of ID and class selector
- No specificity difference
- CASCADE checks number of each selector type i.e. 1 ID selector vs 1 ID selector + 1 class selector
- Rule 2 will be applied (more selectors)

### How do universal selectors and inherited properties affect the cascade?
- Universal selectors have the lowest specificity
- Inherited properties are set by the parent element
- If there is a conflict, the more specific selector will be applied

## How does inheritance affect properties?

### What is inheritance in CSS?
- Certain CSS properties are inherited by child elements
- e.g. `color`, `font-family`, `font-size`
- If a property is not inherited, it needs to be explicitly set for each element
- The exception to this is when directly targeting an element
e.g. 
```html
<div id="parent">
  <div class="child"></div>
</div>
```

```css
#parent {
  color: red;
}
.child {
  color: blue;
}
```
### What is the outcome of the above example?
- The child element will be blue because it is directly targeted. It will NOT inherit the property from the parent element.

### What is the Rule order?
- Whichever rule was last defined is the winner

```css
/* styles.css */

.alert {
  color: red;
}

.warning {
  color: yellow;
}
```
```html
<!-- index.html -->
<div class="warning alert">Warning message</div>
```

### What is the outcome of the above example?
- The `.warning` rule will be applied because it was last defined

### Between a rule that uses one class selector and a rule that uses three type selectors, which rule will be applied?
- The rule that uses one class selector will be applied because it has higher specificity