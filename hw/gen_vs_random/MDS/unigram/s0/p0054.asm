.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and dil, al
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
cmovnl rdi, rdi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 29
and dl, -73 # instrumentation
cmovns rsi, rcx
and dl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
and dil, 12
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or bl, dil
cmovnb bx, si
and di, bx
and dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
