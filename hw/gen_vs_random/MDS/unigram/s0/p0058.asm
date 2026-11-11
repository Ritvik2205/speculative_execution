.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
test bx, cx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
or dil, -41
and al, 14
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 41
cmovl ecx, esi
bt edi, ecx
and bl, -82 # instrumentation
cmovz eax, ebx
jmp .bb_0.1
.bb_0.1:
or ax, ax
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
btr ecx, 26
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 91
cmovo ecx, edx
and bl, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
cmovnbe esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
