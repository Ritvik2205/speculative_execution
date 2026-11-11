.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
xor al, sil
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
imul ax, ax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], esi
lea rcx, qword ptr [rbx + rax + 97]
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
adc rax, 1310333622
add cl, 21 # instrumentation
adc cx, 48
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
btr cx, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
