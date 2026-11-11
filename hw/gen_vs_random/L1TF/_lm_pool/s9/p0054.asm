.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
xor dil, -42
cmp rax, 16650668
sub rsi, 60
sub dil, -70
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 74
or rax, 1808026647
cmovl rdi, rcx
not ebx
test dl, -37
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
