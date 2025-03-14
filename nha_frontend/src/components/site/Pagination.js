import React from "react";

export default function Pagination({ pagin, setPage }) {
  return (
    <div className="flex justify-center">
      <div className="join">
        <button className="join-item btn" onClick={() => setPage(1)}>
          {pagin.page === 1 ? "" : "First"}
        </button>
        <button className="join-item btn" onClick={() => setPage(pagin.page - 1)}>
          {pagin.page === 1 ? "" : "<<"}
        </button>
        <button className="join-item btn" onClick={() => setPage(pagin.page - 1)}>
          {pagin.page === 1 ? "" : pagin.pageCount}
        </button>
        <button className="join-item btn btn-active">{pagin.page}</button>
        <button className="join-item btn" onClick={() => setPage(pagin.page + 1)}>
          {pagin.page === pagin.pageCount ? "" : ">>"}
        </button>
        <button className="join-item btn" onClick={() => setPage(pagin.page + 1)}>
          {pagin.page === pagin.pageCount ? "" : ""}
        </button>
        <button className="join-item btn" onClick={() => setPage(pagin.pageCount)}>
          {pagin.page === pagin.pageCount ? "" : "Last"}
        </button>
      </div>
    </div>
  );
}
