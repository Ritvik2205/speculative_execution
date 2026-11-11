.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33 # instrumentation
cmovnle edi, eax
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
cmovz rdi, rbx
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
btc rax, rdx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 22
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and dl, -1 # instrumentation
cmovnb cx, dx
or dl, bl
cmovb rbx, rax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
