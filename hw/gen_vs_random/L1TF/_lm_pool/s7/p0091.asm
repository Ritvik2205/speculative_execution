.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 49
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
or al, -57
xor rdi, -80
bts rdi, 36
and bl, 89
cmovb bx, ax
or sil, dl
sub al, -47
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
