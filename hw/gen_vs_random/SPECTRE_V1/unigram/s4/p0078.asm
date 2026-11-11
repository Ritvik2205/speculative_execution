.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno sil
lea si, qword ptr [rax + rsi]
setnb dil
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 12
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
xor sil, bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
sbb ax, -206
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
