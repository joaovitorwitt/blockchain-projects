export default function Button({ text, textColor, bgColor, event, className }) {
  return (
    <button
      className={className}
      style={{ backgroundColor: bgColor, color: textColor }}
    >
      {text}
    </button>
  );
}
