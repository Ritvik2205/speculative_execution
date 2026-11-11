.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
sbb edi, 15
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
add al, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
cmovnb rdx, rcx
add dl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
add cl, -84 # instrumentation
xchg rdx, rbx
lea si, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
imul rbx, rbx, 98
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
