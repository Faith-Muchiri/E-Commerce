import React, {useState} from 'react'
import Box from '@mui/material/Box';
import { Button, TextField, Typography } from '@mui/material';

function Login() {
const [isSignup, setIsSignup] = useState(false)
const [input, setInput] = useState({
  name: "",
  email: "",
  password:"",
})

  return (
    <div>
      <form>
        <Box display="flex" 
        flexDirection={"column"} 
        maxWidth={400} 
        alignItems={"center"} 
        justifyContent={"center"} 
        margin="auto" 
        marginTop={5} 
        padding={3} 
        borderRadius={10}
        boxShadow={"5px 5px 10px #ccc"}
        sx={{":hover": {
          boxShadow:"10px 10px 20px #ccc"
        }}}>

          <Typography variant='h2' padding={3} textAlign="center">
            {/* Login */}
            {isSignup ? "SignUp": "Login"}
          </Typography>
          { isSignup &&
            <TextField name="name" value={input.name} margin='normal' type={'text'} variant='outlined' placeholder='Name'/>
          }
          <TextField name="email" value={input.email} margin='normal' type={'email'} variant='outlined' placeholder='Email'/>
          <TextField name="password" value={input.password} margin='normal' type={'password'} variant='outlined' placeholder='Password'/>
          <Button sx={{ marginTop:3, borderRadius: 5}} variant="contained" color='warning'>
            {/* Login */}
            {isSignup ? "SignUp": "Login"}
          </Button>
          <Button 
            onClick={()=> setIsSignup(!isSignup)} 
            sx={{ marginTop:3, borderRadius: 5}} 
            // variant="contained" 
            color='warning'>
              Change To { isSignup ? "Login" : "Signup"}
            </Button>
        </Box>
      </form>
    </div>
  )
}

export default Login