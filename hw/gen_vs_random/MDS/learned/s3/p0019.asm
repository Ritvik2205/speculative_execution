.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or dl, bl
xor al, dil
xor ax, 23633
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
or dx, 125
xor bl, al
jmp .bb_0.1
.bb_0.1:
and si, -121
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
