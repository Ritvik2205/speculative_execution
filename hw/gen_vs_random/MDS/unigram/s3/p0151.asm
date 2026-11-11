.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rdx, rbx
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
bt ecx, edi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and ax, bx
not rdi
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
cmovl eax, ecx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or eax, eax
xor dl, dil
or rax, -141551502
and cl, 23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
test eax, 1838539683
and dil, 38 # instrumentation
cmovbe edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
