.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 49
sub al, -75
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and cx, 127
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx]
test sil, 29
and dl, 32
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
test al, sil
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
