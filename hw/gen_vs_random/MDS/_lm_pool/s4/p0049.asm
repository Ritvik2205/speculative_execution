.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, di
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or sil, dil
xor al, sil
xor cl, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and eax, 366961170
test dil, 46
jmp .bb_0.2
.bb_0.2:
test al, 91
xor rdi, -9
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
