.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ecx, esi
test dl, dl
or ax, -14271
cmovb bx, bx
and si, -121
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
test bl, -114
test bl, 65
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
xor bl, sil
cmovp ax, cx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
cmovnp rcx, rdi
xor dil, -3
cmovo ax, bx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and edx, -44
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
test dil, sil
cmovp rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
