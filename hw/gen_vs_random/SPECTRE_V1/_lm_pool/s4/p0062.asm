.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, ax
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
sub bl, cl
inc bl
or al, cl
and cl, 86
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
xchg cl, al
cmp al, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
