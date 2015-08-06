#global module:false

"use strict"

module.exports = (grunt) ->
  grunt.loadNpmTasks "grunt-bower-task"
  grunt.loadNpmTasks "grunt-contrib-connect"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-watch"
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
