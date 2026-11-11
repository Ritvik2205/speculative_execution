.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
neg al
add bl, cl
test cl, -62
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc edi, 37
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
xor al, dl
lea ecx, qword ptr [rax]
xor rax, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
