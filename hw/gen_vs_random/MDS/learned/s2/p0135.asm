.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
bts rsi, 205
or bl, al
or dil, cl
or dil, -76
test dl, 9
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor edx, 17
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
or bl, -54
xor ecx, 8
and sil, -9
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
