.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
xchg al, al
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 13
movzx ebx, bx
mov bx, ax
mov bl, bl
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
add dl, 125 # instrumentation
cmovbe rdi, rdi
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
add cl, -72 # instrumentation
cmovp edx, edx
add sil, -61
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
sub bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
