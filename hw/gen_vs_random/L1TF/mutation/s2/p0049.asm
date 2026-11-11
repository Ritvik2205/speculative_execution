.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and eax, 1167476476
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
and dl, -98
sbb rax, 717206440
cmp sil, -110
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
lea edx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 77
lea dx, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
not eax
lea rdx, qword ptr [rdi + rbx + 6421]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
