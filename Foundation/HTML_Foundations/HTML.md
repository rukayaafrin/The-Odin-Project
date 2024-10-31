## What is the purpose of the doctype declaration?
`<!DOCTYPE>`: tells the browser what version of HTML the page is using.

## What is the HTML element?
`<!DOCTYPE html>`: The root element of an HTML document.
Contains `<head>` and `<body>` elements.


## What is the purpose of the head element?
Contains meta-information about the document such as the `<title>`, character encoding `<meta charset="UTF-8">`, and links to external resources `<link rel="stylesheet" href="styles.css">`

## What is the purpose of the body element?
`<body>`: Contains the content of the document that is visible for user interaction.

## How to create paragraphs.
`<p>`: Defines a paragraph of text.

## How to create headings.
`<h1>` to `<h6>`: Defines headings from level 1 to level 6.

## How to create bold text.
`<b>` or `<strong>`: Defines bold text.

## How to create italicized text.
`<i>` or `<em>`: Defines italicized text.

## The relationships between nested elements.
Nesting and indentation:
- Parent-child relationship: One element contains another.
- Sibling relationship: Two elements are at the same level in the document tree.

## How to create HTML comments.
`<!-- Comment -->`

## How to create an unordered list.
`<ul>`: Defines an unordered list.
`<li>`: Defines a list item.

## How to create an ordered list.
`<ol>`: Defines an ordered list.
`<li>`: Defines a list item.

## How to create links to pages on other websites on the internet?
anchor element <a>
`<a href="https://www.example.com">Link Text</a>`
If the **href** attribute is present, the browser will give the text a blue color and underline it to signify it is a link.
If the **target** attribute is present, the browser will open the link in a new tab.

Example:
`<a href="https://www.theodinproject.com/about" target="_blank" rel="noopener noreferrer">About The Odin Project</a>`
    `_blank`: opens the link in a new tab
    `_self`: opens the link in the same tab
    `_parent`: opens the link in the parent frame
    `_top`: opens the link in the full body of the window
    `rel="noopener noreferrer"`: helps prevent security risks associated with opening links in new tabs e.g. phishing attacks or tabnabbing
    `noopener`: prevents the new page from being able to access the window.opener property.
    `noreferrer`: prevents the browser from sending the Referer header to the new page. (can be used by itself or with noopener)

## How to create links to other pages on your own websites?
`<a href="/path/to/page.html">Link Text</a>`

## The difference between absolute and relative links?
Absolute links:
- Start with the protocol (e.g., http:// or https://).
- Include the domain name (e.g., www.example.com).
- Provide the full path to the resource.

Relative links:
- Start with the file name or path relative to the current document.
- Do not include the protocol or domain name.
- use ./ to refer to the current directory
- use ../ to refer to the parent directory


## How to display an image on a webpage using HTML
`<img src="path/to/image.jpg" alt="Description of the image" width="500" height="600">`
Use relative path if the image is in the same directory as the HTML file.
**alt** attribute: provides a description of the image, which is important for accessibility and SEO.
**width** and **height** attributes: specify the dimensions of the image.

## What are the four main image formats that you can use for images on a webpage?

JPEG: best for photos
PNG: best for graphics and icons
SVG: best for logos and vector graphics
GIF: best for simple animations

## How to create a table?
`<table>`: Defines a table.
`<tr>`: Defines a row in a table.
`<td>`: Defines a cell in a table.
