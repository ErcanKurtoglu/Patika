# Flatten list object
def flatten_nD(input_list:list):
    flattened=[]
    for element in input_list:
        if isinstance(element,list):
            a=flatten_nD(element)
            flattened.extend(a)
        else:
            flattened.append(element)
    return flattened


def flatten(input_list:list):

    flattened=[]
    
    for element in input_list:
        if isinstance(element,list):
            a=flatten_nD(element)
            flattened.extend(a)
        else:
            flattened.append(element)

    return flattened
