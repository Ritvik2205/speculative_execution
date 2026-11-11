.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
xor sil, 64
setp cl
add bx, 83
jmp .bb_0.1
.bb_0.1:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
