import { BrowserRouter as Router,Routes, Route } from 'react-router-dom'
import UserRoutes from './routes/UserRoutes'
import AdminRoutes from './routes/AdminRoutes'
import Home from './pages/site/Home';
 function App() {
  return (
 
      <Router>
        <Routes>

        <Route path="/*" element={<UserRoutes/>}/>
        <Route path="/admin/*" element={<AdminRoutes/>}/>
        <Route path="/home" element={<Home />} />


        </Routes>
      </Router>

  )
}
export default App;
