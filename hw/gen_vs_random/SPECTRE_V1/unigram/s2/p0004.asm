.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
sbb esi, 59
sbb dl, 127
sbb dl, al
add bl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
mov cl, al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 98
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
lea ecx, qword ptr [rcx + rcx + 19]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
