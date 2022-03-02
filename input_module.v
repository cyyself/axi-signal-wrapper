  input         clock,
  input         reset,
  input         mem_axi4_0_aw_ready,
  output        mem_axi4_0_aw_valid,
  output [3:0]  mem_axi4_0_aw_bits_id,
  output [31:0] mem_axi4_0_aw_bits_addr,
  output [7:0]  mem_axi4_0_aw_bits_len,
  output [2:0]  mem_axi4_0_aw_bits_size,
  output [1:0]  mem_axi4_0_aw_bits_burst,
  output        mem_axi4_0_aw_bits_lock,
  output [3:0]  mem_axi4_0_aw_bits_cache,
  output [2:0]  mem_axi4_0_aw_bits_prot,
  output [3:0]  mem_axi4_0_aw_bits_qos,
  input         mem_axi4_0_w_ready,
  output        mem_axi4_0_w_valid,
  output [63:0] mem_axi4_0_w_bits_data,
  output [7:0]  mem_axi4_0_w_bits_strb,
  output        mem_axi4_0_w_bits_last,
  output        mem_axi4_0_b_ready,
  input         mem_axi4_0_b_valid,
  input  [3:0]  mem_axi4_0_b_bits_id,
  input  [1:0]  mem_axi4_0_b_bits_resp,
  input         mem_axi4_0_ar_ready,
  output        mem_axi4_0_ar_valid,
  output [3:0]  mem_axi4_0_ar_bits_id,
  output [31:0] mem_axi4_0_ar_bits_addr,
  output [7:0]  mem_axi4_0_ar_bits_len,
  output [2:0]  mem_axi4_0_ar_bits_size,
  output [1:0]  mem_axi4_0_ar_bits_burst,
  output        mem_axi4_0_ar_bits_lock,
  output [3:0]  mem_axi4_0_ar_bits_cache,
  output [2:0]  mem_axi4_0_ar_bits_prot,
  output [3:0]  mem_axi4_0_ar_bits_qos,
  output        mem_axi4_0_r_ready,
  input         mem_axi4_0_r_valid,
  input  [3:0]  mem_axi4_0_r_bits_id,
  input  [63:0] mem_axi4_0_r_bits_data,
  input  [1:0]  mem_axi4_0_r_bits_resp,
  input         mem_axi4_0_r_bits_last,
  input         mmio_axi4_0_aw_ready,
  output        mmio_axi4_0_aw_valid,
  output [3:0]  mmio_axi4_0_aw_bits_id,
  output [30:0] mmio_axi4_0_aw_bits_addr,
  output [7:0]  mmio_axi4_0_aw_bits_len,
  output [2:0]  mmio_axi4_0_aw_bits_size,
  output [1:0]  mmio_axi4_0_aw_bits_burst,
  output        mmio_axi4_0_aw_bits_lock,
  output [3:0]  mmio_axi4_0_aw_bits_cache,
  output [2:0]  mmio_axi4_0_aw_bits_prot,
  output [3:0]  mmio_axi4_0_aw_bits_qos,
  input         mmio_axi4_0_w_ready,
  output        mmio_axi4_0_w_valid,
  output [63:0] mmio_axi4_0_w_bits_data,
  output [7:0]  mmio_axi4_0_w_bits_strb,
  output        mmio_axi4_0_w_bits_last,
  output        mmio_axi4_0_b_ready,
  input         mmio_axi4_0_b_valid,
  input  [3:0]  mmio_axi4_0_b_bits_id,
  input  [1:0]  mmio_axi4_0_b_bits_resp,
  input         mmio_axi4_0_ar_ready,
  output        mmio_axi4_0_ar_valid,
  output [3:0]  mmio_axi4_0_ar_bits_id,
  output [30:0] mmio_axi4_0_ar_bits_addr,
  output [7:0]  mmio_axi4_0_ar_bits_len,
  output [2:0]  mmio_axi4_0_ar_bits_size,
  output [1:0]  mmio_axi4_0_ar_bits_burst,
  output        mmio_axi4_0_ar_bits_lock,
  output [3:0]  mmio_axi4_0_ar_bits_cache,
  output [2:0]  mmio_axi4_0_ar_bits_prot,
  output [3:0]  mmio_axi4_0_ar_bits_qos,
  output        mmio_axi4_0_r_ready,
  input         mmio_axi4_0_r_valid,
  input  [3:0]  mmio_axi4_0_r_bits_id,
  input  [63:0] mmio_axi4_0_r_bits_data,
  input  [1:0]  mmio_axi4_0_r_bits_resp,
  input         mmio_axi4_0_r_bits_last,
  output        l2_frontend_bus_axi4_0_aw_ready,
  input         l2_frontend_bus_axi4_0_aw_valid,
  input  [7:0]  l2_frontend_bus_axi4_0_aw_bits_id,
  input  [31:0] l2_frontend_bus_axi4_0_aw_bits_addr,
  input  [7:0]  l2_frontend_bus_axi4_0_aw_bits_len,
  input  [2:0]  l2_frontend_bus_axi4_0_aw_bits_size,
  input  [1:0]  l2_frontend_bus_axi4_0_aw_bits_burst,
  input         l2_frontend_bus_axi4_0_aw_bits_lock,
  input  [3:0]  l2_frontend_bus_axi4_0_aw_bits_cache,
  input  [2:0]  l2_frontend_bus_axi4_0_aw_bits_prot,
  input  [3:0]  l2_frontend_bus_axi4_0_aw_bits_qos,
  output        l2_frontend_bus_axi4_0_w_ready,
  input         l2_frontend_bus_axi4_0_w_valid,
  input  [63:0] l2_frontend_bus_axi4_0_w_bits_data,
  input  [7:0]  l2_frontend_bus_axi4_0_w_bits_strb,
  input         l2_frontend_bus_axi4_0_w_bits_last,
  input         l2_frontend_bus_axi4_0_b_ready,
  output        l2_frontend_bus_axi4_0_b_valid,
  output [7:0]  l2_frontend_bus_axi4_0_b_bits_id,
  output [1:0]  l2_frontend_bus_axi4_0_b_bits_resp,
  output        l2_frontend_bus_axi4_0_ar_ready,
  input         l2_frontend_bus_axi4_0_ar_valid,
  input  [7:0]  l2_frontend_bus_axi4_0_ar_bits_id,
  input  [31:0] l2_frontend_bus_axi4_0_ar_bits_addr,
  input  [7:0]  l2_frontend_bus_axi4_0_ar_bits_len,
  input  [2:0]  l2_frontend_bus_axi4_0_ar_bits_size,
  input  [1:0]  l2_frontend_bus_axi4_0_ar_bits_burst,
  input         l2_frontend_bus_axi4_0_ar_bits_lock,
  input  [3:0]  l2_frontend_bus_axi4_0_ar_bits_cache,
  input  [2:0]  l2_frontend_bus_axi4_0_ar_bits_prot,
  input  [3:0]  l2_frontend_bus_axi4_0_ar_bits_qos,
  input         l2_frontend_bus_axi4_0_r_ready,
  output        l2_frontend_bus_axi4_0_r_valid,
  output [7:0]  l2_frontend_bus_axi4_0_r_bits_id,
  output [63:0] l2_frontend_bus_axi4_0_r_bits_data,
  output [1:0]  l2_frontend_bus_axi4_0_r_bits_resp,
  output        l2_frontend_bus_axi4_0_r_bits_last,
  input         resetctrl_hartIsInReset_0,
  input         debug_clock,
  input         debug_reset,
  output        debug_clockeddmi_dmi_req_ready,
  input         debug_clockeddmi_dmi_req_valid,
  input  [6:0]  debug_clockeddmi_dmi_req_bits_addr,
  input  [31:0] debug_clockeddmi_dmi_req_bits_data,
  input  [1:0]  debug_clockeddmi_dmi_req_bits_op,
  input         debug_clockeddmi_dmi_resp_ready,
  output        debug_clockeddmi_dmi_resp_valid,
  output [31:0] debug_clockeddmi_dmi_resp_bits_data,
  output [1:0]  debug_clockeddmi_dmi_resp_bits_resp,
  input         debug_clockeddmi_dmiClock,
  input         debug_clockeddmi_dmiReset,
  output        debug_ndreset,
  output        debug_dmactive,
  input         debug_dmactiveAck,
  input  [1:0]  interrupts