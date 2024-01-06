# Flatten list object
def flatten(input_list:list):

    flattened=[]
    
    for element in input_list:
        if isinstance(element,list):
            a=flatten(element)
            flattened.extend(a)
        else:
            flattened.append(element)

    return flattened
