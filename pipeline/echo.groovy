timeout(5) {
  node("master") {
    stage("echo") {
      echo("Hello World!")
    }
  }
}
