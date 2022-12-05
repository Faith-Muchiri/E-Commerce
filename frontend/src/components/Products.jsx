import React, {useState, useEffect}  from 'react'

function Products() {
  const [products, setProducts] = useState([])

  useEffect(() => {
    fetch('/products')
    .then(response => response.json())
    .then((data) => setProducts(data) )
  },[])

  
  return (
    <div>
     {products.map((product) => (
      <div key={product.id}>
        <img src={product.image_url} alt={product.name}/>
      </div>
     ))}
    </div>
  )
}

export default Products