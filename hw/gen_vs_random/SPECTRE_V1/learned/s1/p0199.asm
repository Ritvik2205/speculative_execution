.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea edi, qword ptr [rcx + rsi + 65]
add al, 3
add al, 18
and dl, -92
bts bx, 20
jmp .bb_0.1
.bb_0.1:
or cl, al
imul rbx, rax, 100
movsx ax, dil
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
