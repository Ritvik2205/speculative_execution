.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 36
or al, -2
jmp .bb_0.2
.bb_0.2:
sbb dx, bx
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and bl, al
jmp .bb_0.3
.bb_0.3:
test cl, 1
mov al, bl
and sil, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
