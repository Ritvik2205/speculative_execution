.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add rdx, 95
add cl, -127
sub cl, sil
and bl, cl
sub al, cl
xchg sil, dl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
sub dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
