.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
add al, -109
add ax, 6980
cmovno rdx, rax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
sub bl, dil
adc al, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rbx + rax + 7]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
