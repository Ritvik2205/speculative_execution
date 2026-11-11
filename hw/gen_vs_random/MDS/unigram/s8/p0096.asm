.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
cmovno rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 58
cmovno rax, rax
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
cmovl dx, ax
and rdx, 21
cmovno rax, rax
and rdi, rdx
cmovnl edx, esi
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
bt edx, esi
cmovnb esi, eax
or bl, dl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
