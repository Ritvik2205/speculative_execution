.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsr bx, di
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
lea cx, qword ptr [rsi + rdi + 44]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 2
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
inc rdx
sub dl, 96
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
