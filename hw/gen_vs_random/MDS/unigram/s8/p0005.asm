.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -900576213
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and dl, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and si, -121
or dl, 51
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 42
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
