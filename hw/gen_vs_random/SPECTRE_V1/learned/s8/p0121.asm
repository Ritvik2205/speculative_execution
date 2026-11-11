.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
cmovb ax, bx
mov dil, al
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, 66
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
add al, bl
cmp cl, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
