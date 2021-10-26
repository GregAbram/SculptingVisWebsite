
# SculptingVis

## Developer Dependencies
[Sass](https://sass-lang.com/) and [Node.js](https://nodejs.org/en/download) are developer dependencies. Click [here](https://sass-lang.com/install) to install Sass and [here](https://nodejs.org/en/download) to install Node.js.

Sass is a preprocessor for css, and Node.js uses [nunjucks](https://mozilla.github.io/nunjucks/) to preprocess .njk files to html.   In this project, sass and nunjuck sourcefiles (extensions scss and njk) are in the scss and njk directories respectively.  A Makefile in the root directory applies these preprocessing steps and places the resolts in the html and css directories.  *When you add/change files in the scss and njk directories, you will need to run* ***make*** *in the root directory*.

After you make changes to sass and nunjucks source files, run make and commit.  This will keep the css and html directories up to date so a clean checkout can be immediately used.

## Updating Navigation

Pointers to each page (and subsections, as appropriate) should be added in two places: the lists.njk directory, which is the site map found under the toolbar's **Thrusts & Apps** button, and html/footer.html, which is the directory that appears at the bottom of each page.   When these files are changes, you need to run **make**.

## Page Assets
Here are a list of re-usable assets for each thrust and application page. Unique sections are usually marked with a css `id` instead of a`class`.

### Paragraph Sizing
There are two sizes at the moment: `Regular` and `Big-Text`. The use of these can help create emphasis for important ideas.
The default size is regular. To make a big-text paragraph, add `class="big-paragraph"` to the opening `<p>` html tag:

    <p class="big-paragraph">Sculpting Visualization is a research project</p>

### Images
**Hero Image**
The hero image is the big image that users see when they first land on the page. This lives at the top of the `#page-container`:

    <div id="hero-image">
    	<img src="./images/path-to-image.jpg">
    </div>

**Single Paragraph Image**
For a single image, insert this code snippet anywhere directly inside the `#content` container:

    <div class="single-image">
    	<div class="first-image">
    	<img src="images/path-to-image.jpg">
    	<h5>Fig. of a really badass render to show how color should be used to graph field data.</h5>
    	</div>
    </div>

**Double Paragraph Image**
For two images side-by-side in a paragraph, use this directly in the `#content`container:

    <div class="dual-images">
    	<div class="first-image">
    		<img src="images/sample.jpg">
    		<h5>Other cool things.</h5>
    	</div>
    	<div class="second-image">
    		<img src="images/sample.jpg">
    		<h5>Hey this is information that is cool and important.</h5>
    	</div>
    </div>

It is recommended to use `.jpg` image types, as they reduce page load times.

### Contributors
These are the people who contributed to the thrust or application. Hyperlinks are optional.

    <div id="contributors">
    	<h3>Contributors</h3>
    	<ul>
    		<li>Stephanie Zeller</li>
    		<li><a href="links go here">Francesca Samsel</a></li>
    		<li><a href="#">Greg Abram</a></li>
    		<li><a href="#">Daniel Keefe</a></li>
    	</ul>
    </div>

### Sources
It's highly encouraged to upload the cited article to the `publications` folder.

    <div id="sources">
    	<h3>Sources</h3>
    	<ul>
    		<li>
    			<h4><a href="link to article here">Antarctic Water Masses and Ice Shelves Visualizing the Physics</a><a  class="doi" href="doi link goes here">DOI</a></h4>
    			<p>Greg Abram, Francesca Samsel, Mark R Petersen, Xylar Asay-Davis, Darin Comeau, Stephen F Price <br/>
    			<i>IEEE Computer Graphics and Applications, 2021</i></p>
    		</li>
    	</ul>
    </div>

### Sidebar
The sidebar sits on the left side of the page. Users can click each item to navigate to the corresponding section on the page.

I recommend filling this section out last.

    <div id="sidebar">
    	<div class="sticky">
    		<h1>Planetariums</h1>
    		<h2>Camera Tracking</h2>
    		<ul>
    			<li><a href="#overview">Thrust Overview</a></li>
    			<li><a href="#physicalization">1. Physicalization of Physical Particles</a></li>
    			<li><a href="#following-po">2. Following Physical Objects</a></li>
    			<li><a href="#future-obj">3. Future Objects to Follow</a></li>
    			<li><a href="#contributors">Contributors</a></li>
    			<li><a href="#sources-support">Sources and Support</a></li>
    		</ul>
    	</div>
    </div>
