.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], -75
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
or ax, dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 27
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
btc rdx, 138
bt eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
cmovns ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
or edi, ecx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
