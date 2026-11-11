.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
xor dil, dl
or al, -58
or al, -78
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or bl, cl
and edi, 23
and rsi, 22
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
bts di, 73
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
