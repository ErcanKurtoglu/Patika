# 1-Flatten list object
def flatten(input_list:list):

    flattened=[]
    
    for element in input_list:
        if isinstance(element,list):
            a=flatten(element)
            flattened.extend(a)
        else:
            flattened.append(element)

    return flattened

s=[[1,'a',['cat'],2],[[[3]],'dog'],4,5]
flatten(s)

# 2-Change short
def smooth(input_list:list):
    smoothed=[]
    a=[]
    for element in input_list[::-1]:
        if isinstance(element,list):
            a=smooth(element)
            smoothed.append(a)
        else:
            smoothed.append(element)
    
    return smoothed

l=[[1, 2], [3, 4], [5, 6, 7]]
smooth(l)