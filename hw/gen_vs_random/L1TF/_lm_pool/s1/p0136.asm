.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 90
setno al
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 17
cmovnle rdi, rcx
bt ecx, edx
jmp .bb_0.1
.bb_0.1:
sbb dl, bl
or ax, 11821
and cl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
add dl, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
