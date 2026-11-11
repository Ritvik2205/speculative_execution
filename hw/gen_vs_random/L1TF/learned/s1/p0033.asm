.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dil, dil
or al, -48
xor al, dil
xor dl, cl
mov dl, dil
dec cl
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rcx + rax + 40]
sbb dil, sil
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rbx + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add eax, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
