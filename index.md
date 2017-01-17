---
layout: home
---
<div class="pure-g" id="announcements" >
  <div class="pure-u-1">
    <h2 style="font-weight:bold;color:#444;">Announcements</h2>
  </div>
</div>

<div class="pure-g main-content">
  {% for post in site.posts %}
    <div class="pure-u-1 pure-u-md-1-3">
          <h3>
            <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
            <span class="post-meta" style="color:#757575; font-size:0.75em; display:block;">{{ post.date | date: "%B %-d, %Y" }}</span>
          </h3>
          <blockquote>
              {{post.content}}
          </blockquote>
    </div>
  {% endfor %}
</div>

<hr>
<center style="padding:1.5em 5em;">
  <h2>
    <em style="font-family:'Georgia', serif;">"We foresee Clever Minds Development Center to be a part in building a strong community through dedicated training and guidance of children."</em>
  </h2>
</center>
<hr>

<div class="pure-g" id="courses" >
  <div class="pure-u-1 pure-u-md-1-5">
    <h2 style="font-weight:bold;color:#444;"> Courses </h2>
  </div>
</div>

<div class="pure-g">
  {% assign sorted = (site.courses | sort: 'index') %}
  {% for course in sorted %}
    <div class="pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">

      <h2 style="font-variant:small-caps;">
        <i class="fa fa-flag" aria-hidden="true" style="color:#C62828;"></i> {{ course.title | escape }}
      </h2>

      <blockquote>
        {{course.content}}
      </blockquote>
    </div>
  {% endfor %}
</div>

<hr>

<div class="pure-g" id="activities" >
  <div class="pure-u-1 pure-u-md-1-5">
    <h2 style="font-weight:bold;color:#444;"> Our Activities </h2>
  </div>
</div>

<div class="activities">
  <div class="pure-g">
    <div class="pure-u-1-2 pure-u-md-1-4">
      <div class="icon-block">
        <h2 class="center red-text"><i class="fa fa-puzzle-piece"></i></h2>
        <h5 class="center light grey-text editable">Classroom Proper</h5>
      </div>
    </div>
    <div class="pure-u-1-2 pure-u-md-1-4">
      <div class="icon-block">
        <h2 class="center light-green-text"><i class="fa fa-bus"></i></h2>
        <h5 class="center light grey-text editable">Field Trip</h5>
      </div>
    </div>
    <div class="pure-u-1-2 pure-u-md-1-4">
      <div class="icon-block">
        <h2 class="center amber-text"><i class="fa fa-soccer-ball-o"></i></h2>
        <h5 class="center light grey-text editable">Sports Fest</h5>
      </div>
    </div>
    <div class="pure-u-1-2 pure-u-md-1-4">
      <div class="icon-block">
        <h2 class="center blue-text"><i class="fa fa-cutlery"></i></h2>
        <h5 class="center light grey-text editable">NutriCamp</h5>
      </div>
    </div>
  </div>
  <div class="pure-g">
    <div class="pure-u-1-2 pure-u-md-1-4">
      <div class="icon-block">
        <h2 class="center yellow-text"><i class="fa fa-medkit"></i></h2>
        <h5 class="center light grey-text editable">Medical &amp; Dental Checkup</h5>
      </div>
    </div>
    <div class="pure-u-1-2 pure-u-md-1-4">
      <div class="icon-block">
        <h2 class="center red-text"><i class="fa fa-flag"></i></h2>
        <h5 class="center light grey-text editable">Little Mr &amp; Ms United Nations</h5>
      </div>
    </div>
    <div class="pure-u-1-2 pure-u-md-1-4">
      <div class="icon-block">
        <h2 class="center light-green-text"><i class="fa fa-language"></i></h2>
        <h5 class="center light grey-text editable">National Language Week</h5>
      </div>
    </div>
    <div class="pure-u-1-2 pure-u-md-1-4">
      <div class="icon-block">
        <h2 class="center amber-text"><i class="fa fa-group"></i></h2>
        <h5 class="center light grey-text editable">Get Together Party</h5>
      </div>
    </div>
  </div>
  <div class="pure-g">
    <div class="pure-u-1-2 pure-u-md-1-2">
      <div class="icon-block">
        <h2 class="center blue-text"><i class="fa fa-child"></i></h2>
        <h5 class="center light grey-text editable">
          Tutorial Service *<br/>
          <small>* Per schedule basis. Please contact us if you are interested in availing this service.</small>
        </h5>
      </div>
    </div>
    <div class="pure-u-1-2 pure-u-md-1-2">
      <div class="icon-block">
        <h2 class="center yellow-text"><i class="fa fa-sun-o"></i></h2>
        <h5 class="center light grey-text editable">Summer Class</h5>
      </div>
    </div>
  </div>
</div>
