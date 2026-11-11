.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
cmovnz cx, cx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 92
and dil, 94
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
cmovnle edx, esi
xor al, bl
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
cmovle ebx, ecx
btc eax, 14
btc rcx, 8
cmovz di, ax
test rsi, 879594088
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 27
test rbx, 100
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
