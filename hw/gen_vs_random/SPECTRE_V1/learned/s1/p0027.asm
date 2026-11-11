.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
adc dl, -49
add bx, -65
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
adc dl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
