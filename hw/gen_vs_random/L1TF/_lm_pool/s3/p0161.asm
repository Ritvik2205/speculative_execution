.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 53
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
jmp .bb_0.2
.bb_0.2:
bts rbx, 65
add dl, -1
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test cl, 34
xor sil, al
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
sbb cl, al
xor bx, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
