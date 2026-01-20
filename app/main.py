import tkinter as tk

from app.logic.open_profile import open_facebook_page


def main() -> None:
    root = tk.Tk()
    root.title("SOCIAL MEDIA PANEL")
    root.geometry("600x400")

    facebook_button = tk.Button(
        root,
        text="Facebook – strona firmowa",
        command=open_facebook_page,
    )
    facebook_button.pack(expand=True)

    root.mainloop()


if __name__ == "__main__":
    main()
