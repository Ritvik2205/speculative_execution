.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
and rax, -175411684
and dil, -114
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
or dil, 98
sbb dil, cl
add al, -47
sub al, cl
sub dil, cl
lea di, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
