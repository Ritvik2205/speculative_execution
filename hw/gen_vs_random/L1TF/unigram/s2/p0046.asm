.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
add bl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
lea ebx, qword ptr [rax + rbx + 62]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
add dl, bl
sub edx, -33
cmovnz cx, di
jmp .bb_0.1
.bb_0.1:
inc bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
add dil, -7
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
add dx, 80
and edi, 11
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
