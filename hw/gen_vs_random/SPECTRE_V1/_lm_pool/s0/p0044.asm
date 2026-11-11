.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
lea di, qword ptr [rdx + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg bl, sil
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
and bl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 89
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
