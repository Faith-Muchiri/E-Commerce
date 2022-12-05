import './App.css';
import {BrowserRouter, Routes, Route} from 'react-router-dom'
import NavBar from './components/NavBar'
import Home from './components/Home';
import Login from './components/Login';
import Logout from './components/Logout';
import Products from './components/Products';

function App() {
  return (
    <BrowserRouter>    
      <div className="App">
        <NavBar/>
        <Routes>
          <Route path="/" element={<Home/>}/>
          <Route path="/login" element={<Login/>}/>
          <Route path="/logout" element={<Logout/>}/>
          <Route path="/products" element={<Products/>}/>
        </Routes>
      </div>
    </BrowserRouter>
  );
}

export default App;
