# from tkinter import *
#
# class Entrance():
#     def __init__(self):
#         root = Tk()
#         root.geometry("500x500")
#         # root.configure(background="#2D2D44")
#         root.title('SHOP')
#
#         self.label_0 = Label(root, text="Our Shop", width=20, font=("bold", 20))  # shop
#         self.label_0.place(x=90, y=60)
#
#         self.label_1 = Label(root, text="Name", width=20, font=("bold", 10))  # name
#         self.label_1.place(x=80, y=110)
#
#         self.entry_1 = Entry(root)  # field for name
#         self.entry_1.place(x=240, y=110)
#
#         self.label_2 = Label(root, text="Surname", width=20, font=("bold", 10))  # surname
#         self.label_2.place(x=68, y=160)
#
#         self.entry_2 = Entry(root)  # field for surname
#         self.entry_2.place(x=240, y=160)
#
#         self.label_4 = Label(root, text="Patronymic", width=20, font=("bold", 10))  # patronymic
#         self.label_4.place(x=70, y=210)
#
#         self.entry_4 = Entry(root)
#         self.entry_4.place(x=240, y=210)
#
#         self.label_5 = Label(root, text="Address", width=20, font=("bold", 10))  # address
#         self.label_5.place(x=70, y=260)
#
#         self.entry_5 = Entry(root)
#         self.entry_5.place(x=240, y=260)
#
#         self.label_5 = Label(root, text="Email", width=20, font=("bold", 10))  # email
#         self.label_5.place(x=70, y=310)
#
#         self.entry_5 = Entry(root)
#         self.entry_5.place(x=240, y=310)
#
#         def buttonClick():
#             """ handle button click event and output text from entry area"""
#             print("You pressed Submit!")
#             print(self.entry_1.get() + " " + self.entry_2.get() +
#                   ", you clicked the button!")
#
#         self.button = Button(root, text='Submit', width=20, bg="black", fg='white', command=buttonClick()).place(x=180, y=380)
#         root.mainloop()
#
#
#
#
# e = Entrance()

from DBconnection import *
from tkinter import *
from tkinter import ttk
# class Entrance:
#
#     def __init__(self, master):
#         # master = Tk()
#         master.geometry("500x500")
#         #         # root.configure(background="#2D2D44")
#         master.title('SHOP')
#
#         self.shopLabel = Label(master, text="Our Shop", width=20, font=("bold", 20))  # shop
#         self.shopLabel.place(x=90, y=60)
#
#         self.nameLabel = Label(master, text="Name", width=20, font=("bold", 10))  # name
#         self.nameLabel.place(x=80, y=110)
#
#         self.nameEntry = Entry(master)  # field for name
#         self.nameEntry.place(x=240, y=110)
#
#         self.surnameLabel = Label(master, text="Surname", width=20, font=("bold", 10))  # surname
#         self.surnameLabel.place(x=68, y=160)
#
#         self.surnameEntry = Entry(master)  # field for surname
#         self.surnameEntry.place(x=240, y=160)
#
#         self.patronymicLabel = Label(master, text="Patronymic", width=20, font=("bold", 10))  # patronymic
#         self.patronymicLabel.place(x=70, y=210)
#
#         self.patronymicEntry = Entry(master)
#         self.patronymicEntry.place(x=240, y=210)
#
#         self.addressLabel = Label(master, text="Address", width=20, font=("bold", 10))  # address
#         self.addressLabel.place(x=70, y=260)
#
#         self.addressEntry = Entry(master)
#         self.addressEntry.place(x=240, y=260)
#
#         self.emailLabel = Label(master, text="Email", width=20, font=("bold", 10))  # email
#         self.emailLabel.place(x=70, y=310)
#
#         self.emailEntry = Entry(master)
#         self.emailEntry.place(x=240, y=310)
#
#         def buttonClick():
#             print("You pressed Submit!")
#             print(f"Data\n"
#                   f"name: {self.nameEntry.get()}\n"
#                   f"surname: {self.surnameEntry.get()}\n"
#                   f"patronymic: {self.patronymicEntry.get()}\n"
#                   f"address: {self.addressEntry.get()}\n"
#                   f"email: {self.emailEntry.get()}\n")
#
#         self.submitButton = Button(master, text="Submit", width=20, bg="black", fg='white', command=buttonClick).place(
#             x=180, y=380)
#
#         master.mainloop()

class Note:
    def __init__(self):
        self.root = Tk()
        self.root.geometry("500x700")
        self.root.title('SHOP')
        self.root.title("Course work")

        self.controlCentre = ttk.Notebook(self.root)
        self.tab1 = ttk.Frame(self.controlCentre)
        self.tab2 = ttk.Frame(self.controlCentre)
        self.tab3 = ttk.Frame(self.controlCentre)
        self.tab4 = ttk.Frame(self.controlCentre)


        self.controlCentre.add(self.tab1, text="registration")
        self.controlCentre.add(self.tab2, text="shop")
        self.controlCentre.add(self.tab3, text="basket")
        self.controlCentre.add(self.tab4, text="ordering")
        self.controlCentre.pack(expand=1, fill="both")

        # registration
        self.shopLabel = Label(self.tab1, text="registration", width=20, font=("bold", 20))  # shop
        self.shopLabel.place(x=90, y=60)

        self.nameLabel = Label(self.tab1, text="Name", width=20, font=("bold", 10))  # name
        self.nameLabel.place(x=80, y=110)

        self.nameEntry = Entry(self.tab1)  # field for name
        self.nameEntry.place(x=240, y=110)

        self.surnameLabel = Label(self.tab1, text="Surname", width=20, font=("bold", 10))  # surname
        self.surnameLabel.place(x=68, y=160)

        self.surnameEntry = Entry(self.tab1)  # field for surname
        self.surnameEntry.place(x=240, y=160)

        self.patronymicLabel = Label(self.tab1, text="Patronymic", width=20, font=("bold", 10))  # patronymic
        self.patronymicLabel.place(x=70, y=210)

        self.patronymicEntry = Entry(self.tab1)
        self.patronymicEntry.place(x=240, y=210)

        self.addressLabel = Label(self.tab1, text="Address", width=20, font=("bold", 10))  # address
        self.addressLabel.place(x=70, y=260)

        self.addressEntry = Entry(self.tab1)
        self.addressEntry.place(x=240, y=260)

        self.emailLabel = Label(self.tab1, text="Email", width=20, font=("bold", 10))  # email
        self.emailLabel.place(x=70, y=310)

        self.emailEntry = Entry(self.tab1)
        self.emailEntry.place(x=240, y=310)

        def buttonClick():
            print("You pressed Submit!")
            print(f"Data\n"
                  f"name: {self.nameEntry.get()}\n"
                  f"surname: {self.surnameEntry.get()}\n"
                  f"patronymic: {self.patronymicEntry.get()}\n"
                  f"address: {self.addressEntry.get()}\n"
                  f"email: {self.emailEntry.get()}\n")


        # button registration
        self.submitButton = Button(self.tab1, text="Submit", width=20, bg="black", fg='white', command=buttonClick).place(
            x=180, y=380)
        # shop
        self.shopLbl = Label(self.tab2, text="SHOP", width=20, font=("bold", 20))  # shop
        self.shopLbl.place(x=90, y=60)

        self.prod1 = Label(self.tab2, text="Plane ", width=20, font=("bold", 10))
        self.prod1.place(x=80, y=110)

        self.prod2 = Label(self.tab2, text="Car ", width=20, font=("bold", 10))
        self.prod2.place(x=80, y=210)

        self.prod3 = Label(self.tab2, text="Cucumber ", width=20, font=("bold", 10))
        self.prod3.place(x=80, y=310)

        def buyPlane():
            print("buy plane")

        def buyCar():
            print("buy car")

        def buyCucumber():
            print("buy cucumber")

        self.planeButton = Button(self.tab2, text="BUY", width=20, bg="black", fg='white',
                                   command=lambda: buyPlane()).place(
            x=180, y=110)

        self.carButton = Button(self.tab2, text="BUY", width=20, bg="black", fg='white',
                                  command=lambda: buyCar()).place(
            x=180, y=210)

        self.CucumberButton = Button(self.tab2, text="BUY", width=20, bg="black", fg='white',
                                  command=lambda: buyCucumber()).place(
            x=180, y=310)

        # basket
        self.baketLBl = Label(self.tab3, text="Your basket", width=20, font=("bold", 20))  # shop
        self.baketLBl.place(x=90, y=60)

        self.basketprod = Label(self.tab3, text="Your product ", width=20, font=("bold", 10))
        self.basketprod.place(x=90, y=110)
        self.basketAmount = Label(self.tab3, text="Amount ", width=20, font=("bold", 10))
        self.basketAmount.place(x=240, y=110)
        def OrderButton():
            print("Create order!")
        self.orderButton = Button(self.tab3, text="Order", width=20, bg="black", fg='white',
                                  command=lambda: OrderButton()).place(x=180, y=380)


        # ordering
        self.oRDERl = Label(self.tab4, text="Your order", width=20, font=("bold", 20))  # shop
        self.oRDERl.place(x=90, y=60)

        self.orderLabelID = Label(self.tab4, text="Order ID: ", width=20, font=("bold", 10))
        self.orderLabelID.place(x=80, y=110)
        self.orderLabelName = Label(self.tab4, text="Customer name: ", width=20, font=("bold", 10))
        self.orderLabelName.place(x=80, y=140)
        self.orderLabelProds = Label(self.tab4, text="Products: ", width=20, font=("bold", 10))
        self.orderLabelProds.place(x=80, y=170)
        self.orderLabelType = Label(self.tab4, text="Delivery Type: ", width=20, font=("bold", 10))
        self.orderLabelType.place(x=80, y=200)
        self.orderLabeladdress = Label(self.tab4, text="Address: ", width=20, font=("bold", 10))
        self.orderLabeladdress.place(x=80, y=230)
        self.orderLabeladdress = Label(self.tab4, text="PaymentType: ", width=20, font=("bold", 10))
        self.orderLabeladdress.place(x=80, y=260)
        self.orderLabelterm = Label(self.tab4, text="Term: ", width=20, font=("bold", 10))
        self.orderLabelterm.place(x=80, y=290)
        self.orderLabelsum = Label(self.tab4, text="Total sum: ", width=20, font=("bold", 10))
        self.orderLabelsum.place(x=80, y=320)
        ########################################


        self.root.mainloop()

if __name__ == "__main__":
    note = Note()

        # master = Tk()
        # e = Entrance(master)
        # e.mainloop()
