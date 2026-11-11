.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
or dil, -78
test eax, edx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
or cl, 39
test ebx, -2015966884
or ax, -20176
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
jmp .bb_0.1
.bb_0.1:
and cl, 122 # instrumentation
cmovl eax, eax
and al, -55
cmovbe rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
bt eax, 37
and al, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and eax, 943733866
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and bl, 107 # instrumentation
cmovbe di, dx
cmovle di, si
and al, -55
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
or eax, -696456144
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
