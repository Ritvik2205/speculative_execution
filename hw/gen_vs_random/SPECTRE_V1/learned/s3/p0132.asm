.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 70
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
sbb dl, dil
dec bl
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
