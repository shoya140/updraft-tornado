module.exports = (grunt) ->
  grunt.initConfig
    bower:
      install:
        options:
          targetDir: './app/assets/_dist'
          layout: 'byComponent'
          install: true
          verbose: false
          cleanTargetDir: false
          cleanBowerDir: false

    sass:
      compile:
        src: './app/assets/scss/*.scss'
        dest: './app/assets/_dist/custom/css/style.css'

    coffee:
      compile:
        src: './app/assets/coffee/*.coffee'
        dest: './app/assets/_dist/custom/js/script.js'

    watch:
      scss:
        files: './app/assets/scss/*.scss'
        tasks: ['sass']
      coffee:
        files: './app/assets/coffee/*.coffee'
        tasks: ['coffee']

  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.registerTask 'default',  ['bower:install', 'sass', 'coffee', 'watch']