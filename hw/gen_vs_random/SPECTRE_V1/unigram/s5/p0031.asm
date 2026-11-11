.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
add al, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 98
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
sub dil, cl
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
xor dil, bl
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
cmovno rdi, rsi
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
sub dl, al
mul al
cmovz eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
