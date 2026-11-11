.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
add al, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
mul cx
dec rdi
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
sets dl
cmovnp rbx, rcx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
lea rcx, qword ptr [rbx + rsi + 44]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add bl, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 68
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
adc rax, 1310333622
lea eax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
