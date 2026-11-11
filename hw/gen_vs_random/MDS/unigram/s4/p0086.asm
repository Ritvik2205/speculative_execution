.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rbx, rax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and dl, -107 # instrumentation
cmovz rax, rdx
or bl, 73
xor ebx, 49
or al, dl
test dil, -67
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 42
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
jmp .bb_0.1
.bb_0.1:
not esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 86
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 32
xor eax, 73
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
or dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
