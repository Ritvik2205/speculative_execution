.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
mov al, bl
and al, cl
jmp .bb_0.1
.bb_0.1:
test rdi, 50
and bl, cl
imul dx, cx, 44
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
test bx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
