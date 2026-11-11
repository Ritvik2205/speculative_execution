.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
lea edx, qword ptr [rdi + rdi + 79]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
sbb dl, al
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, 105
jmp .bb_0.2
.bb_0.2:
test cl, sil
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmp cl, -89
lea rdi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
