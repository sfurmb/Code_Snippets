class Stack(object):
    """A customer of ABC Bank with a checking account. Customers have the
    following properties:

    Attributes:
        name: A string representing the customer's name.
        balance: A float tracking the current balance of the customer's account.
    """

    def __init__(self):
        """Return a Customer object whose name is *name*.""" 
        self.name = []

    def insert_element(self, element):
        """Set the customer's starting balance."""
        self.name.append(element)
        
    def remove_element(self):
        self.name.pop()
        
    def return_size(self):
        print "len is",len(self.name)
        
    def return_peek(self)    :
        print self.name
        
class Queue(object):
    """A customer of ABC Bank with a checking account. Customers have the
    following properties:

    Attributes:
        name: A string representing the customer's name.
        balance: A float tracking the current balance of the customer's account.
    """

    def __init__(self):
        """Return a Customer object whose name is *name*.""" 
        self.name = []

    def insert_element(self, element):
        """Set the customer's starting balance."""
        self.name.insert(0, element)
        
    def remove_element(self):
        self.name.pop()
        
    def return_size(self):
        print "len is",len(self.name)
        
    def return_peek(self)    :
        print self.name        

class Deque(object):
    """A customer of ABC Bank with a checking account. Customers have the
    following properties:

    Attributes:
        name: A string representing the customer's name.
        balance: A float tracking the current balance of the customer's account.
    """

    def __init__(self):
        """Return a Customer object whose name is *name*.""" 
        self.name = []

    def insert_element_front(self, element):
        """Set the customer's starting balance."""
        self.name.insert(0, element)

    def insert_element_back(self, element):
        """Set the customer's starting balance."""
        self.name.append(element)
        
    def remove_element_back(self):
        self.name.pop()
        
    def remove_element_front(self):
        self.name.pop(0)        
        
    def return_size(self):
        print "len is",len(self.name)
        
    def return_peek(self)    :
        print self.name  
        
print "Stack"
s = Stack()
s.return_size()
s.insert_element(10)
s.insert_element(11)
s.insert_element(12)
s.return_size()
s.return_peek()
s.return_size()
s.remove_element()
s.return_peek()
s.return_size()
print "\nQueue"
q = Queue()
q.return_size()
q.insert_element('a')
q.insert_element('b')
q.insert_element('c')
q.return_size()
q.return_peek()
q.remove_element()
q.return_peek()
print "\nDeque"
d = Deque()
d.return_size()
d.insert_element_back(1)
d.insert_element_back(2)
d.insert_element_back(3)
d.insert_element_front(4)
d.return_peek()
d.return_size()
d.remove_element_back()
d.return_peek()
d.remove_element_front()
d.return_peek()

'''
output for above run
runfile('C:/Users/PinupolS/Desktop/py_code/stack.py', wdir='C:/Users/PinupolS/Desktop/py_code')
Stack
len is 0
len is 3
[10, 11, 12]
len is 3
[10, 11]
len is 2

Queue
len is 0
len is 3
['c', 'b', 'a']
['c', 'b']

Deque
len is 0
[4, 1, 2, 3]
len is 4
[4, 1, 2]
[1, 2]
'''

     
     