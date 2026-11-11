.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
mov dx, 94
sub di, 70
test al, -126
test al, 84
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc bl, 88
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
xor sil, -33
test rbx, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
