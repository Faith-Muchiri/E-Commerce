import React, {useState} from 'react'
import Drawer from '@mui/material/Drawer';
import List from '@mui/material/List';
import ListItemButton from '@mui/material/ListItemButton';
import ListItemIcon from '@mui/material/ListItemIcon';
import ListItemText from '@mui/material/ListItemText';
import IconButton from '@mui/material/IconButton';
import MenuIcon from '@mui/icons-material/Menu';

function DrawerComp() {
    const [openDrawer, setOpenDrawer] = useState(false)
    const PAGES = ["Home", "Products", "About", "Login", "Logout"]
  return (
    <div>
        <Drawer open={openDrawer} onClose={() => setOpenDrawer(false)}>
            <List>
                {
                    PAGES.map((page,index)=> (
                        <ListItemButton onClick={()=> setOpenDrawer(false)} key={index}> 
                        <ListItemIcon>
                            <ListItemText>{page}</ListItemText>
                        </ListItemIcon>
                        </ListItemButton>
                    ))
                }
            </List>
        </Drawer>
        <IconButton sx={{color:"white", marginLeft:'auto'}} onClick={()=> setOpenDrawer(!openDrawer)}>
            <MenuIcon/>
        </IconButton>
    </div>
  )
}

export default DrawerComp