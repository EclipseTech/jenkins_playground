timeout(time: 5, unit: 'SECONDS') {
  node("master") {
    stage("echo") {
      echo("Hello World!")
    }
  }
}
