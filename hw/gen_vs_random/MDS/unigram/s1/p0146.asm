.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and bl, 65 # instrumentation
cmovnbe dx, bx
test al, 127
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
bts ax, si
or bl, -62
or dl, al
cmovp eax, ecx
or edx, -78
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bts rdi, 130
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
cmovbe edi, eax
test bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
