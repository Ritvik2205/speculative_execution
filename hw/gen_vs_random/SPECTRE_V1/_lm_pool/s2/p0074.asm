.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb eax, edx
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and bl, 124
add dl, 47
lea edi, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
and eax, 933895314
jp .bb_0.3
jmp .exit_0
.bb_0.3:
xchg dil, bl
add edx, 10
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
