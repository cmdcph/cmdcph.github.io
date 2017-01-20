---
layout: home
---

<div class="pure-g" id="announcements" >
  <div class="pure-u-1">
    <h2 style="font-weight:bold;color:#444;">Announcements</h2>
  </div>
</div>

<div class="pure-g main-content">
  {% for post in site.posts limit:3 %}
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
  <div class="pure-u-1">
    <h2 style="font-weight:bold;color:#444;"> Courses <br/>
      <small>
        <i class="fa fa-asterisk"></i>
        Minimum number of students for maximum learning. <br/>
        Student-Teacher Ratio 6:1
      </small>
    </h2>
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
  <div class="pure-u-1">
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

<hr>

<div class="pure-g" id="calendar" >
  <div class="pure-u-1">
    <h2 style="font-weight:bold;color:#444;"> Calendar </h2>
  </div>
</div>

<div class="pure-g">
  {% assign sorted = (site.calendar_months | sort: 'index') %}
  {% for month in sorted %}
    <div class="pure-u-1 pure-u-sm-1-3 pure-u-md-1-6">

      <h2 style="font-variant:small-caps;">
        <i class="fa fa-calendar-check-o" aria-hidden="true" style="color:#ffc107;"></i> {{ month.title | escape }}
      </h2>

      <blockquote>
        <ul style="list-style-type: none;text-align:center;font-size:90%">
          {% for event in month.events %}
            <li style="border-bottom:solid 1px;">
              <span style="float:left;font-size:150%">{{ event.day }}</span>
              <br/> {{ event.title }}
            </li>
          {% endfor %}
        </ul>
      </blockquote>
    </div>
  {% endfor %}
</div>

<hr>

<div class="pure-g" id="fees" >
  <div class="pure-u-1">
    <h2 style="font-weight:bold;color:#444;"> School Fees <br/>
      <small style="font-weight:normal;">
        <i class="fa fa-asterisk"></i> We only accept payments in cash.
      </small>
    </h2>
  </div>
</div>

{% assign sorted = (site.fees | sort: 'index') %}

<div class="pure-g">
  {% assign tuition = sorted[0] %}
    <div class="pure-u-1">
      <center style="padding:1em;">
        <h2 style="font-variant:small-caps;">
          <i class="fa fa-credit-card" aria-hidden="true" style="color:#ffc107;"></i> {{ tuition.title | escape }}
        </h2>

        {{tuition.content}}
      </center>
    </div>

  {% assign book = sorted[1] %}
  {% assign uniform = sorted[2] %}

  <div class="pure-u-1 pure-u-md-1-2">
    <h2 style="font-variant:small-caps;">
      <i class="fa fa-book" aria-hidden="true" style="color:#ffc107;"></i> {{ book.title | escape }}
    </h2>

    <div style="padding:0em 1em;">
      {{book.content}}
    </div>
  </div>

  <div class="pure-u-1 pure-u-md-1-2">
    <h2 style="font-variant:small-caps;">
      <i class="fa fa-female" aria-hidden="true" style="color:#ffc107;"></i> {{ uniform.title | escape }}
    </h2>

    <div style="padding:0em 1em;">
      {{uniform.content}}
    </div>
  </div>

</div>

<hr>
<br>

<div class="pure-g" id="enroll" style="background-color:#2196F3; color:white;">

  <div class="pure-u-1 pure-u-md-1-2">
    <div class="video-container no-controls">
      <iframe frameborder="0"
      marginheight="0" marginwidth="0" scrolling="no" class="pure-u-1"
      src="https://www.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Clever+Minds+Development+Center&amp;aq=&amp;sll=14.204087,121.161819&amp;sspn=0.011607,0.021136&amp;ie=UTF8&amp;hq=Clever+Minds+Development+Center&amp;hnear=&amp;t=m&amp;ll=14.209891,121.160231&amp;spn=0.012481,0.012875&amp;z=15&amp;iwloc=A&amp;output=embed" style="min-height:300px;">
      </iframe>
      <br />
      <small>
        <a href="https://www.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Clever+Minds+Development+Center&amp;aq=&amp;sll=14.204087,121.161819&amp;sspn=0.011607,0.021136&amp;ie=UTF8&amp;hq=Clever+Minds+Development+Center&amp;hnear=&amp;t=m&amp;ll=14.209891,121.160231&amp;spn=0.012481,0.012875&amp;z=15&amp;iwloc=A" style="color:white;">
          View Larger Map
        </a>
      </small>
    </div>
  </div>
  <div class="pure-u-1 pure-u-md-1-2">
    <center style="padding:1em 0em;">
      <h2 style="color:white;font-weight:600;">Enroll Your Child Now!</h2>
      <p>Call or visit us to reserve you child's slot. <br/>We provide fully-airconditioned classrooms with computer subjects and internet.<br/> Minimum number of students for maximum learning (6 students per teacher)<br/> Look for teacher Elsa or teacher Anna.</p>
      <address style="font-style:normal;">
        <abbr title="Address"><i class="fa fa-map-marker"></i></abbr> 352 Sitio Lote, Brgy. Lecheria, <br/> Calamba City, Laguna Philippines 4027<br/>
        <abbr title="Business Hours"><i class="fa fa-clock-o"></i></abbr> Monday - Friday, 9 AM to 6 PM<br/>
        <abbr title="Phone"><i class="fa fa-phone"></i></abbr> +63 (49) 545 9201<br/>
      </address>
    </center>
  </div>
</div>

<br>

<div class="pure-g" id="teachers" >
  <div class="pure-u-1">
    <center><h2 style="font-weight:bold;color:#2196F3;"> <i class="fa fa-users" style="color:#2196F3;"></i> Faculty </h2></center>
  </div>
</div>

<div class="pure-g">
  {% assign teachers = (site.teachers | first) %}
  {% for staff in teachers.names %}
    <div class="pure-u-1-2 pure-u-sm-1-3 pure-u-md-1-4">
      <center>
        <h2 style="font-variant:small-caps;">
          <i class="fa fa-user-circle" aria-hidden="true" style="color:#2196F3;"></i> {{ staff.name | escape }}
          <br/>
          <small>{{ staff.position }}</small>
        </h2>
      </center>
    </div>
  {% endfor %}
</div>
