import React from 'react';
import CategoryTrashItem from './CategoryTrashItem';
import CategoryTrashFilter from './CategoryTrashFilter';

export default function CategoryTrashTable() {
    return (
        <div className="container mx-auto my-8">
            <CategoryTrashFilter />
            <div className="overflow-x-auto">
                <table className="table table-auto w-full border-collapse border border-gray-300">
                    <thead className="bg-gray-100">
                        <tr>
                            <th className="border border-gray-300 p-2">STT</th>
                            <th className="border border-gray-300 p-2">Category Name</th>
                            <th className="border border-gray-300 p-2">Image</th>
                            <th className="border border-gray-300 p-2">Giá</th>
                            <th className="border border-gray-300 p-2">Status</th>
                            <th className="border border-gray-300 p-2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <CategoryTrashItem />
                        <CategoryTrashItem />
                        <CategoryTrashItem />
                        <CategoryTrashItem />

                    </tbody>
                </table>
            </div>
        </div>
    );
}
