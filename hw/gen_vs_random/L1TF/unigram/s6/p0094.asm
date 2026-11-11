.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sbb rbx, -117
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
or sil, -44
add bl, 79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
add dl, -78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
cmovnp rax, rax
cmovnp si, di
inc al
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 43
cmp ecx, 38
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
