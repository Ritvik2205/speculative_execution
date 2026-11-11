.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi]
sub al, sil
sub sil, cl
and dil, al
test al, sil
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
xor rax, -1905683998
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
