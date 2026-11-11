.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
xor sil, -33
setnp cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -37
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 45
xor bl, -38
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
cmp dl, 119
sub al, dil
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
sbb edx, -8
cmovnp rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
