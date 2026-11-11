.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
bt cx, dx
xor dil, 8
and ecx, -104
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
test al, 22
or sil, dl
xor ax, -5889
jmp .bb_0.1
.bb_0.1:
test dil, dl
jmp .bb_0.2
.bb_0.2:
test dl, -95
test ecx, -1843375753
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
or sil, cl
or rsi, 33
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
