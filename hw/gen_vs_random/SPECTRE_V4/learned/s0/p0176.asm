.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
or dl, 71
adc dl, bl
mov dil, cl
test dl, -125
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
or al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
