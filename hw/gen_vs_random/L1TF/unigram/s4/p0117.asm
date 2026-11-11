.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
cmovb eax, ecx
or cl, sil
sub rax, -2089384489
xor al, cl
xchg al, al
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
mul rdi
cmovnp ax, bx
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
sbb sil, cl
btr edi, 31
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
