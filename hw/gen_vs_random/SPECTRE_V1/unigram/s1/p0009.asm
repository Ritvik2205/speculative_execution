.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
sub bx, 70
and cl, 86
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 94
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and al, 33
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
xor sil, sil
lea bx, qword ptr [rdi + rdx + 14]
movzx bx, al
imul eax
or dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
