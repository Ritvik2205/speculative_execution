.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
sbb bl, -41
xor eax, -1721938664
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
add dl, dl
sub dx, -23
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
or edx, 89
lea ebx, qword ptr [rsi]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
add ax, 6980
adc al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
