.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
js .bb_0.1
jmp .exit_0
.bb_0.1:
bt edx, 41
add sil, 110 # instrumentation
cmovb rdx, rsi
sbb bl, dl
add cl, -127
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
lea rdx, qword ptr [rcx + rax + 66]
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
