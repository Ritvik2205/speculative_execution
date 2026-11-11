.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 36
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], bx
and rax, rbx
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
xor dl, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and bl, 108 # instrumentation
cmovns rdx, rdx
cmovnbe dx, si
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
or cx, 49
bt edx, 72
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
