.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
xor dl, bl
and cl, cl
xor dil, dl
or al, sil
and bl, 68
jmp .bb_0.1
.bb_0.1:
test cl, -123
test dil, -51
xor sil, dl
xor rsi, -117
test al, 66
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor al, dil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
lea rsi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
