.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
xchg ebx, ecx
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
neg al
sbb cl, bl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
