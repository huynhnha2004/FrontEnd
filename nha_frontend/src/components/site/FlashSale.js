import React from "react";
import ProductCard from "./ProductCard";
import "../../style/FlashSale.css";


export default function FlashSale() {
  React.useEffect(() => {
    const second = 1000,
      minute = second * 60,
      hour = minute * 60,
      day = hour * 24;

    const now = new Date().getTime();
    const countdownDate = now + day; // 1 day from now

    const interval = setInterval(() => {
      const current = new Date().getTime();
      const distance = countdownDate - current;

      if (distance < 0) {
        clearInterval(interval);
        document.getElementById("headline").innerText = "Đã hết thời gian!";
        document.getElementById("countdown").style.display = "none";
      } else {
        document.getElementById("days").innerText = Math.floor(distance / day);
        document.getElementById("hours").innerText = Math.floor(
          (distance % day) / hour
        );
        document.getElementById("minutes").innerText = Math.floor(
          (distance % hour) / minute
        );
        document.getElementById("seconds").innerText = Math.floor(
          (distance % minute) / second
        );
      }
    }, 1000);

    return () => clearInterval(interval);
  }, []);

  return (
    <div className="flash-sale-wrapper">
      <section className="flash-sale">
        <div className="bg-danger py-3 rounded-lg shadow-lg">
          <div className="container">
            <div className="row">
              <div className="col-6">
                <div className="text-black mt-5 fs-10 text-left text-h1">FLASH SALE</div>
              </div>
              <div className="col-6">
              <div className="row">
  <div className="col-6 countdown-timer-wrapper">
    <div className="countdown-timer">
      <h4 id="headline" className="text-black mt-5">THỜI GIAN ÁP DỤNG</h4>
      <div id="countdown">
        <div className="countdown-segment">
          <span id="days" className="countdown-number">00</span>
          <span className="countdown-label">Ngày</span>
        </div>
        <div className="countdown-segment">
          <span id="hours" className="countdown-number">00</span>
          <span className="countdown-label">Giờ</span>
        </div>
        <div className="countdown-segment">
          <span id="minutes" className="countdown-number">00</span>
          <span className="countdown-label">Phút</span>
        </div>
        <div className="countdown-segment">
          <span id="seconds" className="countdown-number">00</span>
          <span className="countdown-label">Giây</span>
        </div>
      </div>
    </div>
  </div>
</div>

              </div>
            </div>
          </div>
          <div className='mx-20 my-5'>
            <div className='grid grid-cols-4 gap-4'>
                    <ProductCard />
                    <ProductCard />
                    <ProductCard />
                    <ProductCard />
                 
                  </div>
          </div>
        </div>
      </section>
    </div>
  );
}
