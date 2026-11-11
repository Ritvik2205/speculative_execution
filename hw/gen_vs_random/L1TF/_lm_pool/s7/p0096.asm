.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, cx
lea rax, qword ptr [rbx + rbx]
sub al, 9
bts eax, 232
lea rax, qword ptr [rcx + rdi + 49]
or edi, 57
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and al, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
or rsi, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
