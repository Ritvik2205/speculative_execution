.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, esi
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
cdq
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 69
btr ecx, ebx
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
inc al
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
mul cx
sbb cl, dil
add al, 40 # instrumentation
btc rax, rax
xor sil, sil
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
