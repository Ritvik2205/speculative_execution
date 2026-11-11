.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 38
cmovnbe edi, ecx
lea rdx, qword ptr [rax + rbx]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
add bl, 70
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
add bx, -65
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and sil, 11
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
xchg rdx, rbx
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
btr cx, 31
cmovno bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
