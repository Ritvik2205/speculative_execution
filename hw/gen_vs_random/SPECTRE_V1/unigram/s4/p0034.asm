.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 35
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
setnz sil
xor dl, 28
movzx bx, dl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
movsx dx, dil
sbb esi, -4
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rsi
lea cx, qword ptr [rdx + rsi]
lea rbx, qword ptr [rdi + rbx + 56]
add cl, 29 # instrumentation
setnb sil
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
adc dl, al
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
