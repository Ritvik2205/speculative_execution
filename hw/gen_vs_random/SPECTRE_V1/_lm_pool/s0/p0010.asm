.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb eax, edx
setno sil
sub bl, dl
sub dil, -32
setnle al
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, dl
cmp rbx, 5
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
