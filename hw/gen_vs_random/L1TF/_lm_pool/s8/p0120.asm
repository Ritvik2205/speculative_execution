.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 37
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or dl, dl
add cl, -20
xor ax, -24879
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 18
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
or ax, -10161
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
