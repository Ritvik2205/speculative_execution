.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
cmovz ecx, eax
add bl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
bts edx, 177
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
xor rbx, 50
add dl, -96 # instrumentation
cmovo edi, edi
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
cmovbe eax, edi
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
