.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
bt eax, 37
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rcx, -63
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
cmovnl esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
cmovo rdx, rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 41
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
btr ecx, ebx
and ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
