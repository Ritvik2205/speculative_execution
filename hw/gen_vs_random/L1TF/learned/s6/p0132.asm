.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
lea dx, qword ptr [rcx]
or al, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
add dl, -56 # instrumentation
cmovs rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rcx, rdi
xor al, dil
jmp .bb_0.3
.bb_0.3:
adc bl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
