.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub cl, -21
setnle al
test al, -71
sub bl, -19
cmp cl, dl
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
inc eax
sub al, -89
sub cx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
