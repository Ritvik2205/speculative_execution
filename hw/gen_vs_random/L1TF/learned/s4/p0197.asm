.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
add rax, 909978580
and sil, 93
sub cl, -49
xor al, cl
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub dl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
