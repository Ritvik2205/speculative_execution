.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
cmovnz cx, di
and cl, 91 # instrumentation
cmovle rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
btr rsi, 207
or ax, -20176
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
cmovbe edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmovnl bx, dx
cmovo ax, cx
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and dil, 125
test bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
