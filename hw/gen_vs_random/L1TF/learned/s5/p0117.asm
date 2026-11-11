.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 54
add dil, 88
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 16
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
xor cl, al
sub bl, -96
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
cmp cl, 57
jmp .bb_0.2
.bb_0.2:
cmovle rax, rcx
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
cmp si, 16
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
