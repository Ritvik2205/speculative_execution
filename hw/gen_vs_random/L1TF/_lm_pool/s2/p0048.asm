.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
lea dx, qword ptr [rcx]
mov al, bl
lea rax, qword ptr [rdi + rsi + 19]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea dx, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
cmp si, 43
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
add ax, 1313
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
