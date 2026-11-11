.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and cl, bl
or dl, -67
bt ax, 205
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
or rsi, 97
test cl, 68
test bx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
