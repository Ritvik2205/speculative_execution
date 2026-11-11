.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 72
sub sil, -18
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
sub cl, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
sbb dl, al
mov sil, 83
test cl, -33
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
