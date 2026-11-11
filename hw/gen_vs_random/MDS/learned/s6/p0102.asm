.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
or bl, -54
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
xor si, 91
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and dil, dil
jmp .bb_0.1
.bb_0.1:
and ax, -122
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rsi, 73
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
bt bx, cx
or dl, dil
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 37
xor dil, -124
xor di, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
