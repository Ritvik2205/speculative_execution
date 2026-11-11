.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
test dl, 84
test eax, 645518295
and ax, 37
xor dil, al
cmovs di, dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor dil, bl
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
