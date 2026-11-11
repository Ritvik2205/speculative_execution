.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 67
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
sub dil, -39
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
