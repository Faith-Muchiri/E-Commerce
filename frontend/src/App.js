import './App.css';
import Home from './components/Home';
import Login from './components/Login';
import Logout from './components/Logout';
import Products from './components/Products';

function App() {
  return (
    <div className="App">
      <Home/>
      <Login/>
      <Logout/>
      <Products/>
    </div>
  );
}

export default App;
