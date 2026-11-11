.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, cl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
mov dl, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 45
movsx cx, al
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
