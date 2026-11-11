.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
btc eax, ebx
cmovle di, ax
btr rdi, 129
and dl, 84 # instrumentation
cmovle bx, cx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 27
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
cmovbe si, ax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 96
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and dl, al
or dl, -89
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 21
test cl, dl
and bl, -82 # instrumentation
cmovz ecx, esi
bt bx, 253
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
