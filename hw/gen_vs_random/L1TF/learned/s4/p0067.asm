.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, bl
adc cl, bl
jmp .bb_0.1
.bb_0.1:
inc rbx
sbb dil, cl
add al, -80
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
sbb dil, 57
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
