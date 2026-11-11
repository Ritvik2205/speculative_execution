.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -39
xor bx, 72
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor bl, sil
jmp .bb_0.2
.bb_0.2:
or dl, sil
test bl, -114
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
not al
btr ax, bx
xor cl, 83
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
xor bl, dil
and sil, 89
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
