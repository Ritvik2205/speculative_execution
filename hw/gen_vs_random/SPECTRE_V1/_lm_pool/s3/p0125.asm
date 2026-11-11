.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 72
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
add cl, dil
not si
or al, 19
or al, cl
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
sbb ecx, 62
and di, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
