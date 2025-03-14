import React from 'react';

export default function BrandForm() {
    return (
        <div className="max-w-6xl mx-auto  p-6 ">
            <form>
                <div className="grid grid-cols-2 gap-6">
                    {/* Cột 1 */}
                    <div>
                        <div className="mb-4">
                            <label className="block font-medium mb-1">Tên Sản Phẩm</label>
                            <input
                                type="text"
                                className="input input-bordered w-full"
                                placeholder="Nhập tên sản phẩm"
                            />
                        </div>
                        <div className="mb-4">
                            <label className="block font-medium mb-1">Thương Hiệu</label>
                            <select className="select select-bordered w-full">
                                <option value="">Chọn thương hiệu</option>
                                <option value="brand1">Thương hiệu 1</option>
                                <option value="brand2">Thương hiệu 2</option>
                                <option value="brand3">Thương hiệu 3</option>
                            </select>
                        </div>
                        <div className="mb-4">
                            <label className="block font-medium mb-1">Danh Mục</label>
                            <select className="select select-bordered w-full">
                                <option value="">Chọn danh mục</option>
                                <option value="category1">Danh mục 1</option>
                                <option value="category2">Danh mục 2</option>
                                <option value="category3">Danh mục 3</option>
                            </select>
                        </div>
                        <div className="mb-4">
                            <label className="block font-medium mb-1">Giá</label>
                            <input
                                type="number"
                                min="1"
                                max="10000"
                                className="input input-bordered w-full"
                                placeholder="Nhập giá sản phẩm (1 - 10000)"
                            />
                        </div>
                    </div>

                    {/* Cột 2 */}
                    <div>
                        <div className="mb-4">
                            <label className="block font-medium mb-1">Lượt Xem</label>
                            <input
                                type="number"
                                defaultValue={1}
                                className="input input-bordered w-full"
                                readOnly
                            />
                        </div>
                        <div className="mb-4">
                            <label className="block font-medium mb-1">Đã Bán</label>
                            <input
                                type="number"
                                defaultValue={0}
                                max="100"
                                className="input input-bordered w-full"
                                placeholder="Nhập số lượng đã bán (0 - 100)"
                            />
                        </div>
                        <div className="mb-4">
                            <label className="block font-medium mb-1">Trạng Thái</label>
                            <select className="select select-bordered w-full">
                                <option value="1">Còn Hàng</option>
                                <option value="2">Hết Hàng</option>
                                <option value="3">Ẩn</option>
                            </select>
                        </div>
                        <div className="mb-4">
                            <label className="block font-medium mb-1">Keyname</label>
                            <select className="select select-bordered w-full">
                                <option value="">Chọn keyname</option>
                                <option value="key1">Keyname 1</option>
                                <option value="key2">Keyname 2</option>
                                <option value="key3">Keyname 3</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div className="mb-4">
                    <label className="block font-medium mb-1">Mô Tả</label>
                    <textarea
                        className="textarea textarea-bordered w-full"
                        placeholder="Nhập mô tả sản phẩm"
                    ></textarea>
                </div>

                <div className="mt-6 flex justify-end">
                    <button type="submit" className="btn btn-primary mr-2">
                        Lưu
                    </button>
                    <button type="reset" className="btn btn-secondary">
                        Làm Mới
                    </button>
                </div>
            </form>
        </div>
    );
}
