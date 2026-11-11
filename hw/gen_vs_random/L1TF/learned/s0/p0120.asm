.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 8
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
or bx, 90
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
lea eax, qword ptr [rdx]
sbb sil, bl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
setnle cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
