.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -5
cmp rsi, 68
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp ax, -21455
xor rsi, 46
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
test edi, 26
jmp .bb_0.1
.bb_0.1:
adc ebx, 49
or dil, -113
and dl, sil
cmp cx, 27
cmovno rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
