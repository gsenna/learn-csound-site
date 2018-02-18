---
layout: main 
title: Csound - Tabla de Contenidos
---
<h1>Csound - Tutorial</h1>

<p>Una breve introducción al lenguaje de Csound a través de la implementación de distintas técnicas de síntesis y procesamiento de audio digital.</p>

<h2>Tabla de Contenidos</h2>
<p>En construcción...</p>
</br>

<!--
        {% assign lessons = site.lessons | sort: "order" %}
        {% for lesson in lessons %}
          {% if lesson.folder != nil %}
                {% if lesson.text != nil %}
                  {% assign lessonbaseurl = {{lesson.url}} | split: 'index.html' %}
<div class="lesson">        
<a href="{{site.baseurl}}{{lesson.url}}">{{lesson.title}}</a>
<p>{{lesson.content}}</p>
</div>
   		        {% endif %}
                {% assign sublessons = lessons | where: "categories", lesson.folder %}
                {% for sublesson in sublessons %}
                  {% if sublesson.subfolder != nil %}
                       {% if sublesson.text != nil %}
                         {% assign sublessonbaseurl = {{sublesson.url}} | split: 'index.html' %}
<div class="lesson"><pre>+&nbsp{{sublesson.title}}:</pre></div><div class="lesson">
<a href="{{site.baseurl}}{{sublesson.url}}">++&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp{{sublesson.subtitle}}:</a> {{sublesson.content}}
</div>
   		               {% endif %}
                       {% assign lessonitems = lessons | where: "categories", sublesson.subfolder %}
                       {% for lessonitem in lessonitems %}
                         {% assign lessonitemsbaseurl = {{lessonitem.url}} | split: 'index.html' %}
<div class="lesson">        
<a href="{{site.baseurl}}{{lessonitem.url}}">++&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp{{lessonitem.title}}:</a> {{lessonitem.content}}
</div>
   		               {% endfor %}
                  {% endif %}
                {% endfor %}
                {% if lesson.sides != nil %}
                  {% assign lessonbaseurl = {{lesson.url}} | split: 'index.html' %}
<div class="lesson">        
<a href="{{site.baseurl}}{{lessonbaseurl}}side_projects/index.html">/+&nbsp&nbsp&nbspSide Projects</a>
<p>{{lesson.content}}</p>
</div>        
   		        {% endif %}
          {% endif %}
        {% endfor %}
-->
<h2>Créditos</h2>

<p>Este sitio es una adaptación del proyecto <a href="https://github.com/csound/learn-csound-site">Learn Csound</a> de Steven Yi, quien a su vez se basó en el estilo y modelo del tutorial <a href="https://tour.golang.org/list">A Tour of Go</a>.
También merecen crédito: <a href="https://github.com/callmenick/Slide-Push-Menus"> Nick Salloum,</a> <a href="https://codyhouse.co/gem/css-multi-level-accordion-menu/">codyhouse.co</a> y <a href="https://github.com/kunstmusik/csound-live-code">Steven Yi.</a>
</p>
