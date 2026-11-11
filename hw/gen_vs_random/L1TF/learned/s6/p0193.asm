.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
lea eax, qword ptr [rdx]
test dil, -126
or dl, 8
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add dil, dl
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
btc ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
