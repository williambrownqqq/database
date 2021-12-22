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
import random

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
        self.name = ""
        self.surname = " "
        self.patryc = " "
        self.sum = 0
        self.term = 0
        self.ptype = ""
        self.addr = ""
        self.dtype = ""
        self.idd = 0
        self.orderID = 0
        self.prods = " "

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
        self.shopLabel = Label(self.tab1, text="User data", width=20, font=("bold", 20))  # shop
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

        self.phoneLabel = Label(self.tab1, text="Phone Number", width=20, font=("bold", 10))  # email
        self.phoneLabel.place(x=70, y=360)

        self.phoneEntry = Entry(self.tab1)
        self.phoneEntry.place(x=240, y=360)

        self.birthdayLabel = Label(self.tab1, text="Birthday", width=20, font=("bold", 10))  # email
        self.birthdayLabel.place(x=70, y=410)

        self.birthdayEntry = Entry(self.tab1)
        self.birthdayEntry.place(x=240, y=410)

        def buttonClick():
            print("You pressed Submit!")
            print(f"Data\n"
                  f"name: {self.nameEntry.get()}\n"
                  f"surname: {self.surnameEntry.get()}\n"
                  f"patronymic: {self.patronymicEntry.get()}\n"
                  f"address: {self.addressEntry.get()}\n"
                  f"email: {self.emailEntry.get()}\n"
                  f"phone: {self.phoneEntry.get()}\n"
                  f"birthday: {self.birthdayEntry.get()}\n")
            name = self.nameEntry.get()
            surname = self.surnameEntry.get()
            patronymic = self.patronymicEntry.get()
            address = self.addressEntry.get()
            email = self.emailEntry.get()
            phone = self.phoneEntry.get()
            birthday = self.birthdayEntry.get()
            #print(connectort)
            global idd
            idd = 0
            try:
                query = f"INSERT INTO Customer (Firstname, Surname, Patronymic, Birthday, Email, PhoneNumber) VALUES ( %s, %s,%s, %s, %s, %s);"
                data = (name, surname, patronymic, birthday, email, phone)
                MyCursor.execute(query, data)

                IDquery = f"SELECT CustomerID FROM Customer WHERE Firstname = '{name}'"
                MyCursor.execute(IDquery)
                CUSTOMRID = MyCursor.fetchone()
                idd = CUSTOMRID[0]
                self.idd = idd

                #address
                aquery = f"INSERT INTO Orderring (CustomerID, ADDresss) VALUES (%s, %s)"
                adata = (idd, address)
                print(idd)
                print(self.idd)
                Note.cust = idd
                MyCursor.execute(aquery, adata)

                self.addr = address

                connectort.commit()
                print("alright")
            except Exception as error:
                print(error)



        # button user
        self.submitButton = Button(self.tab1, text="Submit", width=20, bg="black", fg='white', command=buttonClick).place(
            x=180, y= 460)
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
            try:
                print(idd)
                print(self.idd)
                IDquery = f"SELECT OrderingID FROM Orderring WHERE CustomerID = (SELECT CustomerID FROM Customer WHERE CustomerID = '{idd}')"
                MyCursor.execute(IDquery)
                CUSTOMRID = MyCursor.fetchone()
                self.orderID = CUSTOMRID[0]
                print(f"orderID = {self.orderID}")

                #create order
                query = f"INSERT INTO Basket (OrderID) VALUES (%s);"
                data = (self.orderID)
                MyCursor.execute(query, data)


                #address

                # print(address)
                # aquery = f"INSERT INTO Ordering (CustomerID, ADDresss) VALUES (%s, %s)"
                # adata = (idd, address)
                # print(idd)
                # MyCursor.execute(aquery, adata)

                # name
                IDquery = (f"SELECT Firstname, Surname, Patronymic FROM Customer WHERE CustomerID = '{idd}'")
                MyCursor.execute(IDquery)
                CUSTOMRID = MyCursor.fetchone()
                self.name = CUSTOMRID[0]
                self.surname = CUSTOMRID[1]
                self.patryc = CUSTOMRID[2]

                # sum
                IDquery = (f"SELECT TotalSum FROM Orderring WHERE CustomerID = '{idd}'")
                MyCursor.execute(IDquery)
                CUSTOMRID = MyCursor.fetchone()
                totalSum = CUSTOMRID[0]

                # term
                IDquery = (f"SELECT Term FROM Orderring WHERE CustomerID = '{idd}'")
                MyCursor.execute(IDquery)
                CUSTOMRID = MyCursor.fetchone()
                term = CUSTOMRID[0]
                # Payment Type
                IDquery = (f"SELECT PaymentType FROM Orderring WHERE CustomerID = '{idd}'")
                MyCursor.execute(IDquery)
                CUSTOMRID = MyCursor.fetchone()
                ptype = CUSTOMRID[0]
                # Delivery type
                IDquery = (f"SELECT TypeDelivery FROM Orderring WHERE CustomerID = '{idd}'")
                MyCursor.execute(IDquery)
                CUSTOMRID = MyCursor.fetchone()
                DeliveryType = CUSTOMRID[0]

                # Products
                orderID = self.orderID
                # (f"SELECT ProductName FROM Product WHERE ProductID = (SELECT ProductID FROM Basket WHERE OrderID = '{self.orderID}'"))
                IDquery = f"SELECT ProductName FROM Product WHERE ProductID = (SELECT ProductID FROM Basket WHERE OrderID = '{orderID}') " # '{self.orderID}'
                MyCursor.execute(IDquery)
                CUSTOMRID = MyCursor.fetchone()
                prods = " "
                for i in CUSTOMRID:
                    prods += i + " "

                self.prods = prods

                self.sum = totalSum
                self.term = term
                self.ptype = ptype
                self.dtype = DeliveryType


                connectort.commit()

                print(f"sum  + {self.sum}")
                print(f"sum + {self.ptype}")
                print(f"DeliveryType  + {self.dtype}")
                print(f"term  {self.term}")
                print("alright")

                self.oRDERl = Label(self.tab4, text="Your order", width=20, font=("bold", 20))  # shop
                self.oRDERl.place(x=90, y=60)

                self.orderLabelID = Label(self.tab4, text=f"OrderID:               {self.orderID}", width=20, font=("bold", 10))
                self.orderLabelID.place(x=80, y=110)
                self.orderLabelName = Label(self.tab4, text=f"Customer name:        {self.patryc} {self.name} {self.surname}", width=40, font=("bold", 10))
                self.orderLabelName.place(x=80, y=140)
                self.orderLabelProds = Label(self.tab4, text=f"Products:            {self.prods}", width=20, font=("bold", 10))
                self.orderLabelProds.place(x=80, y=170)
                self.orderLabelType = Label(self.tab4, text=f"Delivery Type:        {self.dtype}  ", width=20,
                                            font=("bold", 10))
                self.orderLabelType.place(x=80, y=200)
                self.orderLabeladdress = Label(self.tab4, text=f"Address:            {self.addr}", width=20, font=("bold", 10))
                self.orderLabeladdress.place(x=80, y=230)
                self.orderLabeladdress = Label(self.tab4, text=f"PaymentType         {self.ptype} ", width=20,
                                               font=("bold", 10))
                self.orderLabeladdress.place(x=80, y=260)
                self.orderLabelterm = Label(self.tab4, text=f"Term:                    {self.term}", width=20,
                                            font=("bold", 10))
                self.orderLabelterm.place(x=80, y=290)
                self.orderLabelsum = Label(self.tab4, text=f"Total sum:                {self.sum} ", width=20,
                                           font=("bold", 10))
                self.orderLabelsum.place(x=80, y=320)

            except Exception as error:
                print(error)



        self.orderButton = Button(self.tab3, text="Order", width=20, bg="black", fg='white',
                                  command=lambda: OrderButton()).place(x=180, y=380)



        # ordering

        ########################################


        self.root.mainloop()

if __name__ == "__main__":
    note = Note()

        # master = Tk()
        # e = Entrance(master)
        # e.mainloop()
