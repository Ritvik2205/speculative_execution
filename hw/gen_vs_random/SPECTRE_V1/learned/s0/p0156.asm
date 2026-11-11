.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -36
cmp rsi, 53
cmp rdx, -19
lea si, qword ptr [rax + rdi]
add sil, -68
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
adc eax, 56
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
xor al, dl
jmp .bb_0.1
.bb_0.1:
test al, -71
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
