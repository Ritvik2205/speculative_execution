.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 85
or al, -57
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
not sil
test al, -56
and dl, 32
cmp bl, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
