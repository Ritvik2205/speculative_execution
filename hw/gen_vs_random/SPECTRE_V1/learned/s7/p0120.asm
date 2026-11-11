.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 62
adc ax, -27488
lea si, qword ptr [rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
lea ax, qword ptr [rdx]
test cl, -33
sub bl, bl
sub bl, -19
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
