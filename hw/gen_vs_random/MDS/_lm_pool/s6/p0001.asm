.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
jmp .bb_0.1
.bb_0.1:
test dil, -80
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
test al, -7
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
test rax, -1579405415
test al, -81
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
