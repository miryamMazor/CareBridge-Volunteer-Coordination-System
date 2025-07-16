import { Component } from '@angular/core';
import { useState } from "react";

type Item = {
  id: number;
  name: string;
  age: number;
  email: string;
  phone: string;
};

const data: Item[] = [
  { id: 1, name: "יוסי כהן", age: 30, email: "yossi@example.com", phone: "050-1234567" },
  { id: 2, name: "דנה לוי", age: 25, email: "dana@example.com", phone: "052-7654321" },
  { id: 3, name: "רון ישראלי", age: 35, email: "ron@example.com", phone: "054-9876543" },
];
@Component({
  selector: 'app-test-react',
  templateUrl: './test-react.component.html',
  styleUrls: ['./test-react.component.css']
})
export default function TestReactComponent {
   const [expandedRow, setExpandedRow] = useState<number | null>(null);

  const toggleRow = (id: number) => {
    setExpandedRow(expandedRow === id ? null : id);
  };

  return (
    <div className="container mx-auto p-4">
      <table className="w-full border border-gray-300">
        <thead className="bg-gray-200">
          <tr>
            <th className="border px-4 py-2">שם</th>
            <th className="border px-4 py-2">גיל</th>
          </tr>
        </thead>
        <tbody>
          {data.map((item) => (
            <>
              {/* שורה ראשית */}
              <tr
                key={item.id}
                onClick={() => toggleRow(item.id)}
                className="cursor-pointer hover:bg-gray-100"
              >
                <td className="border px-4 py-2">{item.name}</td>
                <td className="border px-4 py-2">{item.age}</td>
              </tr>
              
              {/* שורה נוספת להצגת פרטים */}
              {expandedRow === item.id && (
                <tr className="bg-gray-50">
                  <td colSpan={2} className="border px-4 py-2">
                    <strong>אימייל:</strong> {item.email} <br />
                    <strong>טלפון:</strong> {item.phone}
                  </td>
                </tr>
              )}
            </>
          ))}
        </tbody>
      </table>
    </div>
  );
}
