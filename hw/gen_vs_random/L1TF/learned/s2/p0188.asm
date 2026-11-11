.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 45
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and dil, dil
and dl, dl
jmp .bb_0.3
.bb_0.3:
adc cl, -34
mov dl, sil
add bl, dl
or ax, -10161
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
