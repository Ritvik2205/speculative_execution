.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
xor cx, 113
jmp .bb_0.1
.bb_0.1:
movsx cx, dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
mov dl, cl
or dl, 8
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
