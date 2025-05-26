import { render, screen } from "@testing-library/react";
import Todo from "./Todo";

test("renders content", () => {
  const todo = {
    text: "Test todo",
    done: false,
  };

  render(
    <Todo todo={todo} onClickComplete={() => {}} onClickDelete={() => {}} />
  );

  const element = screen.getByText("Test todo");
  expect(element).toBeDefined();
});
