import { useState } from 'react'
import './App.css'
import PostsList from './features/posts/PostsList.jsx';

function App() {

  return (
    <>
      <div className="app">
        <h1>React on Rails Blog</h1>
        <p>Application details here...</p>
        <PostsList />
        <p>PostsList End</p>
      </div>
    </>
  )
}

export default App
