.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
xchg cl, sil
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 65
add dil, dl
sbb bl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
adc dl, -49
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
adc dil, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
