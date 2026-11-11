.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
cmp al, dil
cmp dil, 101
and cl, 126
xchg rdi, rcx
or al, al
xor bl, cl
adc sil, al
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
