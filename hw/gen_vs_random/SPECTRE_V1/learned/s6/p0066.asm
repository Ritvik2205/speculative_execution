.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
setno al
add cl, -127
add cl, cl
sub al, cl
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
or al, 19
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sbb eax, -108
xor sil, cl
and ax, 23118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
