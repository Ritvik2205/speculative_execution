.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
lea dx, qword ptr [rdx]
lea ebx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
lea ax, qword ptr [rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -95
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
or al, cl
lea rdx, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
