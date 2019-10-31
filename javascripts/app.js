class App {
  constructor(post_objects) {
    this.posts = post_objects.map(p => new Post(p))
  }

  render() {
    return `<main>
    ${this.posts.map(p => p.render()).join('')}
    </main>`
  }
}
