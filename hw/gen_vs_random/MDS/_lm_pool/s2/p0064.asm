.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
xor rax, -1499464454
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and ax, -122
btr si, cx
or sil, al
and al, 82
xor sil, dil
and sil, 89
and cx, -2
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
or al, 74
xor al, -19
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
test dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
