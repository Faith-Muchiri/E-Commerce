import React, {useState, useEffect} from 'react'
import ImageList from '@mui/material/ImageList';
import ImageListItem from '@mui/material/ImageListItem';
import ImageListItemBar from '@mui/material/ImageListItemBar';

function ProductList() {
    const [products, setProducts] = useState([])

    useEffect(() => {
      fetch('/products')
      .then(response => response.json())
      .then((data) => setProducts(data) )
    },[])

  return (
    <ImageList cols={4}>
    {products.map((product) => (
      <ImageListItem key={product.id}>
        <img 
          src={product.image_url}
          srcSet={product.image_url}
          alt={product.name}
          loading="lazy"
        />
        <ImageListItemBar
          title={product.name}
          subtitle={<span>by: {product.description}</span>}
          position="below"
        />
      </ImageListItem>
    ))}
    
  </ImageList>
  )
}

export default ProductList