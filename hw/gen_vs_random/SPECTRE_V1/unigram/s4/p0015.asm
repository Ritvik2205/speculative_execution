.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, ax
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
not esi
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
lea rcx, qword ptr [rdx + rcx + 1]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
sub dl, -48
or bl, cl
nop
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
xchg bl, dl
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
lea si, qword ptr [rax]
movsx ebx, bl
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
