.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
lea edi, qword ptr [rdx]
and al, -68
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
xor cl, dl
lea rbx, qword ptr [rcx + rsi + 74]
and dil, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
add al, 56
sub al, 26
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
