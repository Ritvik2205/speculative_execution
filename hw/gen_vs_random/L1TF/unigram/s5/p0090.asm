.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ebx
btc rdx, 152
bts ecx, edx
xor bx, 83
mov rdi, 23
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
or dil, -113
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
test rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 63
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
