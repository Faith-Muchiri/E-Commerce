import React from 'react'
import {Link} from 'react-router-dom'
import AppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import Tabs from '@mui/material/Tabs';
import Tab from '@mui/material/Tab';
import Button from '@mui/material/Button';
import { useState } from 'react';
import DrawerComp from './DrawerComp';
import useMediaQuery from '@mui/material/useMediaQuery';
import { useTheme } from '@mui/material/styles';
import { Typography } from '@mui/material';


function NavBar() {
    const [value, setValue] = useState()
    const theme = useTheme()
    const isMatch = useMediaQuery(theme.breakpoints.down('md'));

  return (
    <AppBar sx={{background:"#063970"}} paddingBottom={40}>
        <Toolbar>            
                {isMatch ? (
                    <>
                        <Typography sx={{fontSize: "1.5rem", paddingLeft:"10%"}}>
                            Nike
                        </Typography>
                        <DrawerComp/>
                    </>                   
                ) : (
                    <>
                        <Tabs sx={{marginLeft: "auto"}} alignItems={"center"} textColor="inherit" value={value} onChange={(e,value)=>setValue(value)} indicatorColor="secondary">
                            <Link to="/"><Tab label="Home"/></Link>                          
                            <Link to="/about"> <Tab label="About"/> </Link>
                            <Link to="/products"><Tab label="Products"/></Link>                                                
                        </Tabs>
                        <div sx={{marginLeft:"auto"}}>
                            <Link to="/login"><Button sx={{marginLeft:"auto"}} variant="contained">Login</Button></Link>
                            <Link to="/signup"><Button  sx={{marginLeft:"10px"}}variant="contained">SignUp</Button></Link>
                        </div>
                    </>                       
                )
                }

        {/* <nav >
        <ul>
            <li>
                <Link to="/">Home</Link>
            </li>
            <li>
                <Link to="/products">Products</Link>
            </li>
            <li>
                <Link to="/login">Login</Link>
            </li>
            <li>
                <Link to="/logout">Logout</Link>
            </li>
        </ul>
        </nav> */}
        </Toolbar>
    </AppBar>
    
  )
}

export default NavBar