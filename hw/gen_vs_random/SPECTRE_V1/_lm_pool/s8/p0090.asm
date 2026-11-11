.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -71
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
adc dl, 48
sub al, -82
xchg sil, cl
add dil, cl
lea edi, qword ptr [rsi]
sub cl, dl
lea bx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
