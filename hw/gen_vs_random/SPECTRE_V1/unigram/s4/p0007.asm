.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 89
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
neg dl
add al, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
movsx esi, bx
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
cmovnl ecx, ebx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
cmp al, bl
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
