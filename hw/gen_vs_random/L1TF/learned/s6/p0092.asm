.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
setz al
sub cx, 86
test bl, 45
lea si, qword ptr [rdi + rcx + 51]
sbb sil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
lea cx, qword ptr [rax + rsi + 46]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 52
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
