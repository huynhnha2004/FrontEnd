import React from 'react';
import CarouselItem from './CarouselItem';
import CarouselFilter from './CarouselFilter';

export default function CarouselTable() {
    return (
        <div className="container mx-auto my-8">
            <CarouselFilter />
            <div className="overflow-x-auto">
                <table className="table table-auto w-full border-collapse border border-gray-300">
                    <thead className="bg-gray-100">
                        <tr>
                            <th className="border border-gray-300 p-2">STT</th>
                            <th className="border border-gray-300 p-2">Carousel Name</th>
                            <th className="border border-gray-300 p-2">Image</th>
                            <th className="border border-gray-300 p-2">Giá</th>
                            <th className="border border-gray-300 p-2">Status</th>
                            <th className="border border-gray-300 p-2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <CarouselItem />
                    </tbody>
                </table>
            </div>
        </div>
    );
}
