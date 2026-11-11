.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 92
add al, -46
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 87
test dil, sil
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
xor dl, al
jmp .bb_0.2
.bb_0.2:
test cl, dl
cmovle rbx, rcx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
