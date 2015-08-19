#global module:false

"use strict"

module.exports = (grunt) ->
  grunt.loadNpmTasks "grunt-bower-task"
  grunt.loadNpmTasks "grunt-contrib-connect"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-imagemin"
  grunt.loadNpmTasks "grunt-contrib-htmlmin"
  grunt.loadNpmTasks "grunt-contrib-cssmin"
  grunt.loadNpmTasks "grunt-exec"

  grunt.initConfig

    copy:
      jquery:
        files: [{
          expand: true
          cwd: "bower_components/jquery/dist/"
          src: "jquery.min.js"
          dest: "vendor/js/"
        }]
      bootstrap:
        files: [{
          expand: true
          cwd: "bower_components/bootstrap/dist/css/"
          src: "bootstrap.min.css"
          dest: "vendor/css/"
        },
        {
          expand: true
          cwd: "bower_components/bootstrap/dist/js/"
          src: "bootstrap.min.js"
          dest: "vendor/js/"
        },
        {
          expand: true
          cwd: "bower_components/bootstrap/dist/fonts/"
          src: "glyphicons-halflings-regular.eot"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/bootstrap/dist/fonts/"
          src: "glyphicons-halflings-regular.svg"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/bootstrap/dist/fonts/"
          src: "glyphicons-halflings-regular.ttf"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/bootstrap/dist/fonts/"
          src: "glyphicons-halflings-regular.woff"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/bootstrap/dist/fonts/"
          src: "glyphicons-halflings-regular.woff2"
          dest: "vendor/fonts/"
        }]
      materialize:
        files: [{
          expand: true
          cwd: "bower_components/materialize/dist/css/"
          src: "materialize.min.css"
          dest: "vendor/css/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/js/"
          src: "materialize.min.js"
          dest: "vendor/js/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/material-design-icons/"
          src: "Material-Design-Icons.eot"
          dest: "vendor/font/material-design-icons/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/material-design-icons/"
          src: "Material-Design-Icons.svg"
          dest: "vendor/font/material-design-icons/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/material-design-icons/"
          src: "Material-Design-Icons.ttf"
          dest: "vendor/font/material-design-icons/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/material-design-icons/"
          src: "Material-Design-Icons.woff"
          dest: "vendor/font/material-design-icons/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/material-design-icons/"
          src: "Material-Design-Icons.woff2"
          dest: "vendor/font/material-design-icons/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Bold.ttf"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Bold.woff"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Bold.woff2"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Light.ttf"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Light.woff"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Light.woff2"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Medium.ttf"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Medium.woff"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Medium.woff2"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Regular.ttf"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Regular.woff"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Regular.woff2"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Thin.ttf"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Thin.woff"
          dest: "vendor/font/roboto/"
        },
        {
          expand: true
          cwd: "bower_components/materialize/dist/font/roboto/"
          src: "Roboto-Thin.woff2"
          dest: "vendor/font/roboto/"
        }
        ]
      fontawesome:
        files: [{
          expand: true
          cwd: "bower_components/fontawesome/css/"
          src: "font-awesome.min.css"
          dest: "vendor/css/"
        },
        {
          expand: true
          cwd: "bower_components/fontawesome/fonts/"
          src: "FontAwesome.otf"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/fontawesome/fonts/"
          src: "fontawesome-webfont.eot"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/fontawesome/fonts/"
          src: "fontawesome-webfont.svg"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/fontawesome/fonts/"
          src: "fontawesome-webfont.ttf"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/fontawesome/fonts/"
          src: "fontawesome-webfont.woff"
          dest: "vendor/fonts/"
        },
        {
          expand: true
          cwd: "bower_components/fontawesome/fonts/"
          src: "fontawesome-webfont.woff2"
          dest: "vendor/fonts/"
        }]

    cssmin:
      dist:
        options:
          keepSpecialComments: 0
          check: 'gzip'
        files: [{
          expand: true
          cwd: "css/"
          src: ["*.css"]
          dest: "css/"
        }]

    imagemin:
      options:
        progressive: true
      dist:
        files: [{
          expand: true
          cwd: "images/"
          src: "*.{jpg, jgpeg, png, gif}"
          dest: "images/"
        }]

    exec:
      jekyll:
        cmd: "bundle exec jekyll build --trace"

    watch:
      options:
        livereload: true
      source:
        files: [
          "_drafts/**/*"
          "_includes/**/*"
          "_layouts/**/*"
          "_posts/**/*"
          "css/**/*"
          "js/**/*"
          "_config.yml"
          "*.html"
          "*.md"
        ]
        tasks: [
          "exec:jekyll"
        ]

    connect:
      server:
        options:
          port: 4000
          base: '_site'
          livereload: true

  grunt.registerTask "build", [
    "copy"
    "imagemin"
    "cssmin"
    "exec:jekyll"
  ]

  grunt.registerTask "serve", [
    "build"
    "connect:server"
    "watch"
  ]

  grunt.registerTask "default", [
    "serve"
  ]
