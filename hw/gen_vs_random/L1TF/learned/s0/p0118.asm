.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
setno al
inc rax
test ebx, 48
test al, -104
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
add al, al
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
adc cl, -34
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
