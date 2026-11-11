.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
or eax, 359647041
bt si, di
or bl, -52
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
xor al, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
btc bx, 104
test edx, -1561252782
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
test bl, -9
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
