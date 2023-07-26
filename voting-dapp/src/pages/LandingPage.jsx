import "../assets/LandingPage.css";
import Button from "../components/Button";
import "../global.css";

export default function LandingPage() {
  return (
    <>
      <div className="container">
        <header className="landing-page-header">
          <div className="logo">This is the logo</div>
          <Button
            text={"Create new poll"}
            bgColor={"blue"}
            textColor={"white"}
            className={"btn"}
          ></Button>
        </header>
      </div>

      <h1 className="main-title">
        Simplifying <span className="span-text">Secure</span> and{" "}
        <span className="span-text">Transparent Voting</span> with Decentralized
        Technology
      </h1>

      <p className="landing-description">
        Leave no room for doubts. Join us in revoluionizing elections and polls
      </p>

      <div className="btn-wrapper">
        <Button
          text={"Create new poll"}
          bgColor={"blue"}
          textColor={"white"}
          className={"btn"}
        />
        <Button
          text={"Register as a Voter"}
          bgColor={"#dde5ea"}
          textColor={"blue"}
          className={"btn"}
        />
      </div>
    </>
  );
}
