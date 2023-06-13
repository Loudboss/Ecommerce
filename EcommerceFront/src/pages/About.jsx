import React from "react";

export default function About() {
  return (
    <>
      <div className=" h-20"></div>
      <div className="container h-auto">
        <div className=" flex flex-col justify-center mx-2 text-sm lg:text-base ">
          <h1 className=" text-black font-bold text-2xl">About Us</h1>
          <div className=" flex justify-center w-full">
            <img className="h-60 mb-2" src="/images/logo.png" alt="LOGO" />
          </div>
          <p className=" font-semibold text-justify">
            Welcome to ShoeCiety : Your Ultimate Destination for Footwear! At
            ShoeCiety, we are passionate about shoes and the power they hold to
            transform your style and elevate your confidence. Established in
            2023, we have been dedicated to providing our customers with a vast
            collection of top-quality footwear, backed by exceptional customer
            service. Our mission is simple: to be the go-to destination for all
            your shoe needs. Whether you're searching for the perfect pair of
            sneakers, elegant dress shoes, comfortable work boots, or trendy
            sandals, ShoeCiety has got you covered. We curate a diverse
            selection of footwear from renowned brands, ensuring that you'll
            find something to suit your personal taste and lifestyle.
          </p>
        </div>
      </div>
    </>
  );
}
