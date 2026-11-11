.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
lea ecx, qword ptr [rdi]
sub al, -75
xor dl, dil
jmp .bb_0.1
.bb_0.1:
btc ebx, 11
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 55
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
sbb sil, -79
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
or al, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
