.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
xor cx, -18
and al, 35
jmp .bb_0.1
.bb_0.1:
and cx, -8
test al, -81
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
jmp .bb_0.2
.bb_0.2:
cmovnp rbx, rcx
and dil, 125
test dl, dil
and dil, 125
or sil, -49
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
