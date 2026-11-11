.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 25
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
dec cx
and bl, 87
mov dl, cl
xor bl, -38
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
