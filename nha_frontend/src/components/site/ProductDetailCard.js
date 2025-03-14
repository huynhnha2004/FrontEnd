import React from 'react'
import { API_CONFIG } from '../../config/api';

export default function ProductDetailCard({ product }) {
    var myImage = product.attributes.image.data[0].attributes.url ? <img
        src={API_CONFIG.IMAGE_URL + product.attributes.image.data[0].attributes.url}
        alt="Album" /> : "";
    return (
        <div>
            <div className="card lg:card-side bg-base-100 shadow-xl">
                <figure>
                    {myImage}
                </figure>
                <div className="card-body">
                    <h2 className="card-title">{product.attributes.productName}</h2>
                    <p>{product.attributes.summary}</p>
                    <p>{product.attributes.description}</p>
                    <p>{product.attributes.price}</p>

                    <div className="card-actions justify-end">
                        <button className="btn btn-primary">Listen</button>
                    </div>
                </div>
            </div>
            <div role="tablist" className="pt-10 tabs tabs-lifted">
                <input type="radio" name="my_tabs_2" role="tab" className="tab" aria-label="Tab 1" />
                <div role="tabpanel" className="tab-content bg-base-100 border-base-300 rounded-box p-6">
                    {product.attributes.feature}                
                    </div>
                <input
                    type="radio"
                    name="my_tabs_2"
                    role="tab"
                    className="tab"
                    aria-label="Tab 2"
                    defaultChecked />
                <div role="tabpanel" className="tab-content bg-base-100 border-base-300 rounded-box p-6">
                {product.attributes.ingredient}                
                </div>
                <input type="radio" name="my_tabs_2" role="tab" className="tab" aria-label="Tab 3" />
                <div role="tabpanel" className="tab-content bg-base-100 border-base-300 rounded-box p-6">
                {product.attributes.instruction}                
                </div>
            </div>
        </div>
    )
}

