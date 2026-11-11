.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
or al, -61
xor al, 9
and cx, -8
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test al, 127
or eax, 678817098
or dx, 125
or al, -58
bt dx, si
or dil, -78
and al, 82
xor al, 9
test dil, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
