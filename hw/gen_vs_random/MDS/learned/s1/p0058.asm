.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 99
xor dil, dl
xor dl, 34
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor al, 122
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
test cl, 101
jmp .bb_0.3
.bb_0.3:
lea ebx, qword ptr [rdi]
test dl, al
test rax, 337705873
and dil, -39
bt bx, ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
