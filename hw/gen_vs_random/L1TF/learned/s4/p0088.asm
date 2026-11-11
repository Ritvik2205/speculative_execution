.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -104
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 91
lea rax, qword ptr [rcx + rdi + 37]
test dl, 84
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rax, 1994547909
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 33
and rcx, rsi
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
