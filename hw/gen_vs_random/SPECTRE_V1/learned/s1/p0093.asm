.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, edx
add cl, -127
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
or ecx, 94
xchg edx, edi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 5
mov al, cl
test cl, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
