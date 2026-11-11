.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and al, 33
and cl, dl
add al, -72
test dil, -116
mov cl, dil
cmp bl, dl
add sil, -68
mov bx, 69
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
