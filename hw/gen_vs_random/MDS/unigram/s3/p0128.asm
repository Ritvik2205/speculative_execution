.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
xor dil, 35
btr rcx, 9
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
xor rax, 43
xor eax, 73
and dl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
or ecx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rdi, 88
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
and edx, 13
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
cmovp ebx, ebx
btc bx, 179
cmovl rcx, rdi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rax, -1378371328
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
