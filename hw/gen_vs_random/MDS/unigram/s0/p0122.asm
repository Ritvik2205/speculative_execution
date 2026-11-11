.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, 36
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
cmovbe rbx, rsi
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
cmovnp rsi, rax
or cl, 7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and al, al
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 13
test rsi, 11
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
bt edi, esi
and cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
