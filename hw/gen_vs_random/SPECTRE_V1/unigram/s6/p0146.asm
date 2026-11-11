.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
sbb esi, 95
cmp edx, 44
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
sbb cl, 105
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
lea bx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 65
mov sil, al
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
mul dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
