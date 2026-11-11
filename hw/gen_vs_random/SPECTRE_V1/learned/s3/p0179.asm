.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
imul ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 100
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 16
movzx ecx, cl
test bl, 37
xor edi, 50
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
