.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
jmp .bb_0.1
.bb_0.1:
or al, -22
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
xor al, cl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
not dl
xor rax, -1128378406
test rcx, -613256812
or sil, -78
xor al, dil
test dil, cl
and al, sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
