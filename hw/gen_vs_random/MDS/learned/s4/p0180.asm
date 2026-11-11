.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 75
jmp .bb_0.1
.bb_0.1:
xor sil, -126
xor rax, -345061362
xor cl, -13
jmp .bb_0.2
.bb_0.2:
cmovnp rdi, rsi
cmovle si, bx
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
jmp .bb_0.4
.bb_0.4:
test sil, al
bt si, di
and cl, dil
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
btr di, dx
xor cl, 24
test bl, -14
xor al, dl
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
