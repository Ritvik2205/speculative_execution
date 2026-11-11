.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or al, 100
and al, -23
sub cl, dl
adc bl, -73
lea di, qword ptr [rax]
test al, 59
xchg al, cl
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
