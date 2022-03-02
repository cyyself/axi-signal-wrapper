import re

def axi_signal_filter(x):
    axi_channels = {"aw","w","b","ar","r"}
    if x.__contains__("axi4"):
        y = x.replace("_bits_","")
        for ch in axi_channels:
            y = y.replace(ch+"_","")
        return y
    else:
        return x

def read_signal(s):
    s = s.strip()
    lines = s.split("\n")
    res = []
    for l in lines:
        line = l.strip().replace(",","")
        if (line.startswith("input") or line.startswith("output")):
            sig_type = "input" if line.startswith("input") else "output"
            sig_vector_res = re.findall(r"\[\d+:\d+\]",line)
            sig_vector = ""
            if len(sig_vector_res) == 1:
                sig_vector = sig_vector_res[0]
            sig_name_res = re.findall(r"\w+",line)
            if len(sig_name_res) == 0:
                continue
            sig_name = sig_name_res[-1]
            new_sig = axi_signal_filter(sig_name)
            res.append({
                "type":sig_type,
                "vector":sig_vector,
                "name":sig_name,
                "new_name":new_sig
            })
    return res

with open("input_module.v","r") as file:
    signal = read_signal(file.read())

def get_wrapped_inst(signal,module_name="orig_mod",inst_name="orig_mod_inst"):
    buf = "{} {}(\n".format(module_name,inst_name)
    buf += ",\n".join(["    .{}({})".format(x["name"],x["new_name"]) for x in signal])
    buf += "\n);"
    return buf

def get_wrapped_module(signal,module_name="new_module"):
    buf = "module {}(".format(module_name)
    buf += ",\n".join(x["new_name"] for x in signal)
    buf += "\n);\n\n"
    buf += get_wrapped_inst(signal)
    buf += "\n\nendmodule"
    return buf
    
print(get_wrapped_module(signal))