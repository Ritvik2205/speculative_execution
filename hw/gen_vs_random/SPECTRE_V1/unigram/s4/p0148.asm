.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
xor eax, edx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], di
cmp dl, dil
and sil, -55
and sil, 11
mul bl
inc cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
or sil, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
cmovnbe rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
